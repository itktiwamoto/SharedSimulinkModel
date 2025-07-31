
%% GIT AUTOMATION FOR UPDATING THE SUBMODULES TO THE LATEST IN THE AFFECTED BRANCHES

%% PRECONDITION :
% All target branch already has submodules

% 2 version submodule structures

% STRUCTURE 1 :
% |--PRJ_A
%    |--Common
%       |--Model A
%       |--Model B
%    |--Submodule
%       |--Models
%           |--Model A
%           |--Model B

% STRUCTURE 2 :
% |--PRJ_A
%    |--Submodule_Model_A
%       |--Model A
%    |--Submodule_Model_B
%       |--Model B


%% ALGORITHM :
% Initial
% 1. Create the branches for all of the available projects
% 2. Switch to the branch and pull the latest submodule
% 3. Commit and push
% 4. Create pull request using github API
% 5. Assign the assignee of the pull request
% 6. Assign the reviewer of the pull request
% 7. Add label to the pull request
% 8. Create comparison results of model, push to repo and attach the link
% to report in the pull request page
% 9. Go back to no.2 and repeat until all branches are done
% 10. Create report of the status of all branches

%% PREPARATION :
%Get today's date
todaysdate = datestr(datetime('now'),'yyyymmdd_HHMMSS');
%Open repo path
ownerRepo = 'hanifhgagst'; %'HondaDev2RandPP' -> BMS Owner, 'hanifhgagst' -> for debug
submodulePath = 'C:\Users\mhanif\Documents\HGA\EV\Project\BMS_Shared';
submoduleMappingPath = [submodulePath,'\.github\config\submodule_mapping.json'];
submoduleRoot = 'SharedSimulinkModel';
submoduleModelPath = [submodulePath, '\Module'];
yourUsername =  'hanifhgagst';
reviewers = {'YUKI-KUWANO'}; 
baseBranch = 'master'; % it can be 'main' too so please check

%% CONTENT:

%% 1. Read the Submodule Mapping
data = jsondecode(fileread(submoduleMappingPath));
PullRequestURL = cell(1,numel(data));
PullRequestNumber = cell(1,numel(data));

for i = 1 : numel (data) 
    % Access the project
    targetProject = data(i).project;
    % Check whether the project should be updated or not
    update_flag = 0;
    for j = 1 : numel(data(i).mapping)
        targetSHA = data(i).mapping(j).sha;
        if strcmp(targetSHA, 'latest')
            update_flag = 1;
            break;
        end
    end
   
    if update_flag == 0
        continue;
    end
    
    %% 2. Clone the project to a tempdir
    repoPath = fullfile(tempdir, targetProject);
    if isfolder(repoPath); rmdir(repoPath, 's'); end
    status = cloneProject(ownerRepo, targetProject, repoPath);
    if status ~= 0
        break
    end
    
    %% 3. Create new branch in the cloned repo and switch to that branch 
    branchName = [targetProject, '_UpdateSubmodule_AUTOMATION_', todaysdate];
    [status, output] = CreateBranch(repoPath, branchName, targetProject); 
    if status ~= 0 && ~contains(output, 'already exists')
        break
    end
    
    status = SwitchCurrentBranchToTargetBranch(repoPath, branchName);
    if status ~= 0
        break
    end
    
    %% 4. Loop the mapping to update or not update Submodule models in the project
    ModelBackupRootPath = [tempdir, '\ModelBackup'];
    ZipFileList = cell(1,numel(data(i).mapping));  %To hold the path of the zipped files of model comparison
    changedModels = cell(1,numel(data(i).mapping));
    targetFolders = cell(1,numel(data(i).mapping));
    for j = 1 : numel(data(i).mapping)
        % Obtain the model info, assign model path and obtain the sha
        % pointer
        model = data(i).mapping(j).model;
        sourceFolder = [repoPath, '\SharedSimulinkModel\SharedModel\', model];
        targetFolders{j} = [repoPath, '\CommonModule\Module\', model];
        targetSHA = data(i).mapping(j).sha;
        if strcmp(targetSHA, 'latest')
            %Paths for model comparison
            ModelSourcePath = [sourceFolder,'\Model\', model,'.slx' ]; % ASSUMPTION 1 : model name is folder name + '.slx'
            ModelTargetPath = [targetFolders{j},'\Model\', model,'.slx' ];
            
            %Copy backup file if the model ALREADY EXISTS (not newly added)
            CompareFlag = true; %If the model ALREADY EXISTS then comparison will be done later
            ModelBackupPath_Before = []; % <--- will be filled if a model ALREADY exists and stay empty if does not.
            ModelBackupPath_After = [ModelBackupRootPath,'\', model,'\AfterUpdate.slx'];
            
            %Model already exist in Parent Repo (Project Repo)
            if exist(ModelTargetPath,'file') == 2
                ModelBackupPath_Before = [ModelBackupRootPath,'\', model,'\BeforeUpdate.slx'];
                ResultPath = [ModelBackupRootPath,'\', model];
                %Copy the backup of the old model
                copyfile(ModelTargetPath, ModelBackupPath_Before);
            end
            
            %Update the model by checking out to the specified folder
            status = UpdateSubmoduleBySHA(repoPath, submoduleRoot, targetSHA);
            if status ~= 0
                return
            end
            
            %Copy the folder from Submodule to the Parent Repo (Project
            %Repo)
            copyfile(sourceFolder, targetFolders{j});
            
            %In the case when model is NEWLY ADDED
            if isempty(ModelBackupPath_Before)
                CompareFlag = false; %If model is newly added, then prevent comparison
                ModelBackupPath_Before = [ModelBackupRootPath,'\', model,'\BeforeUpdate.slx'];
                ResultPath = [ModelBackupRootPath,'\', model];
                %Copy the backup of the old model
                copyfile(ModelSourcePath, ModelBackupPath_Before); %Copy the file directly from Submodule
            end
            
            %Copy the updated model
            copyfile(ModelTargetPath, ModelBackupPath_After);
            
            %Run the model comparison and zip the result file
            ModelSimilar = CompareTwoModels(ModelBackupPath_Before, ModelBackupPath_After);
            if ~ModelSimilar
                zipFile = CompareModelandSave(ResultPath, model, ModelBackupPath_Before, ModelBackupPath_After);
            else
                zipFile = [];
            end
            
            %For PullRequest Creation
            changedModels{j} = model; 
            ZipFileList{j} = zipFile;
            
        else
            changedModels{j} = [];
            ZipFileList{j} = [];
        end
          
    end
    
    %% 5. Commit and push
    CommitMessage = ['[',todaysdate, '] Updating to the latest submodule by Automation '];
    temp = [];
    for j = 1 : numel(changedModels)
        temp = [ temp, changedModels{j}, ' '];
    end
    CommitMessage = [ CommitMessage, 'with model(s) : ', temp];
    status = CommitChangeOnTargetBranch(repoPath, CommitMessage, branchName, targetFolders);
    if status ~= 0
        break
    end
    
    %% 6. Create pull request using github API
    repoUrl = strcat("https://github.com/",ownerRepo,"/",targetProject,".git");
    prUrl = createPullRequest(repoUrl, branchName, baseBranch, targetProject); 
    temp = split(prUrl,'/');
    prNumber = str2num(temp{end});
    
    %% 7. Assign the assignee of the pull request
    success = assignPullRequestToSelf(repoUrl, prNumber, yourUsername);
    if ~success
       break 
    end
    
    %% 8. Assign the reviewer of the pull request
%     success = setPullRequestReviewers(repoUrl, prNumber, reviewers); 
%     if ~success
%        break 
%     end
    
    %% 9. Add label to show it is AUTOMATED PULL REQUEST
    success = addLabelToPullRequest(repoUrl, prNumber, 'AUTOMATED', 'f44336');
    if ~success
       break 
    end
    
    %% 10. Put simulink comparison report results as comment in the pull request page
    tag = sprintf('autocompare-%s-%s', targetProject, todaysdate);
    uploadUrl = createGitHubRelease(repoUrl, tag);
    uploadFlag = uploadZipUsingUploadURL(ZipFileList, uploadUrl);
    downloadURLs = getReleaseDownloadURLs(repoUrl, tag, uploadFlag);
    commentText = createComment(changedModels,downloadURLs);
    success = addCommentToPR(repoUrl, prNumber, commentText);
    
    if ~success
       break 
    end
    
    PullRequestURL{i} = prUrl;
    PullRequestNumber{i} = prNumber;
    
end


%% MODEL COMPARSION

function Result = CompareTwoModels(Model1, Model2)
    load_system(Model1);
    load_system(Model2);
    Edits = slxmlcomp.compare(Model1, Model2);

    % Check if models are different
    Result = isempty(Edits);
    bdclose(Model1);
    bdclose(Model2);
end

function zipFile = CompareModelandSave(ResultPath, ModelName, Model_Before, Model_After)
    %Compare the models
    comp = visdiff(Model_Before,Model_After); %this line will not open the GUI
    visdiff(Model_Before,Model_After); %Open the GUI
    
    % Wait until both models are loaded and open
    modelsExpected = {'BeforeUpdate', 'AfterUpdate'};
    while ~all(cellfun(@bdIsLoaded, modelsExpected))
        pause(0.2);
    end
    pause(5);  % Give some buffer for rendering
    
    %Find the target Windows where Visdiff is opened
    chosenMonitorBounds = getTargetWindows();

    % Screenshot with Java
    import java.awt.Robot;
    import java.awt.Rectangle;
    import java.awt.Toolkit;
    import java.awt.image.BufferedImage;
    import javax.imageio.ImageIO;

    robot = Robot();
    rect = Rectangle(chosenMonitorBounds);
    image = robot.createScreenCapture(rect);
    ScreenshotPath = [ResultPath, '\comparison_screenshot.png'];
    file = java.io.File(ScreenshotPath);
    ImageIO.write(image, 'png', file);

    % Close all models opened by visdiff
    bdclose('all');
    
    % Publish the model comparison result
    publish(comp, 'format', 'html', 'OutputFolder', ResultPath);
    ReportPath = [ResultPath, '\BeforeUpdate_AfterUpdate.html'];

    % Get all open desktop clients
    desktop = com.mathworks.mde.desk.MLDesktop.getInstance();
    clients = desktop.getClientTitles();

    for i = 1:numel(clients)
        title = char(clients(i));

        % Check if the window is a visdiff comparison
        if contains(title, 'BeforeUpdate') || contains(title, 'AfterUpdate')
            desktop.closeClient(title);
        end
    end
    
    % Zip all files
    zipFile = [ResultPath, '\', ModelName, '_comparison.zip'];
    zip(zipFile, {Model_Before, Model_After, ...
                  ScreenshotPath, ...
                  ReportPath});
    
end

function chosenMonitorBounds = getTargetWindows() 
    import java.awt.Window;
    wins = Window.getWindows();
    targetBounds = [];

    for i = 1:length(wins)
        win = wins(i);
        if win.isVisible()
            try
                title = char(win.getTitle());
                if contains(title, 'BeforeUpdate') || contains(title, 'AfterUpdate')
                    bounds = win.getBounds();
                    targetBounds = bounds;
                    break;
                end
            catch
            end
        end
    end

    if isempty(targetBounds)
        error('Failed to locate visdiff comparison window.');
    end

    pause(1); % buffer time

    % --- Step 2: Identify which monitor it is on ---
    import java.awt.GraphicsEnvironment;
    ge = GraphicsEnvironment.getLocalGraphicsEnvironment();
    monitors = ge.getScreenDevices();

    chosenMonitorBounds = [];
    for i = 1:length(monitors)
        b = monitors(i).getDefaultConfiguration().getBounds();
        % Check if visdiff window lies within this monitor
        if targetBounds.x >= b.x && targetBounds.x < (b.x + b.width) && ...
           targetBounds.y >= b.y && targetBounds.y < (b.y + b.height)
            chosenMonitorBounds = b;
            break;
        end
    end

    if isempty(chosenMonitorBounds)
        error('Could not determine which monitor contains the visdiff window.');
    end

end

%% WINDOWS POWER SHELL GIT COMMAND FUNCTION CALL


function status = cloneProject(ownerRepo, project, repoPath)

    % Step 1: Estimate GitHub repo size and check disk space
    token = getenv('GITHUB_TOKEN');
    apiURL = sprintf('https://api.github.com/repos/%s/%s', ownerRepo, project);

    psCheckSizeAndDisk = sprintf([
            'powershell -Command \"', ...
            '$headers = @{Authorization=\"token %s\"}; ', ...
            '$repo = Invoke-RestMethod -Uri ''%s'' -Headers $headers; ', ...
            '$sizeMB = [math]::Round($repo.size / 1024, 2); ', ...
            '$free = (Get-PSDrive C).Free / 1MB; ', ...
            'Write-Host ''Estimated repo size:'' $sizeMB ''MB''; ', ...
            'Write-Host ''Free space on C:'' $free ''MB''; ', ...
            'if ($free -lt ($sizeMB + 200)) { exit 1 }\"'], token, apiURL);
        
    [status, ~] = system(psCheckSizeAndDisk);
    if status ~= 0
        error('[ERROR] Insufficient disk space or failed to get repo size for %s\n', project);
    else
        fprintf('[DISK IS AVAILABLE] Sufficient disk space to temporarily create repo for %s\n', project);
    end

    % Step 2 : clone the project into repoPath
    psCommand = sprintf('powershell -Command "git clone https://github.com/%s/%s.git \"%s\""', ownerRepo, project, repoPath);

    [status, output] = system(psCommand);

    if status == 0
        fprintf('[CLONING SUCCESSFUL] %s\n', project);
    else
        error('[ERROR] Failed to clone:\n%s', output);
    end

end

function status = SwitchCurrentBranchToTargetBranch(repoPath, targetBranch)
% Switch current branch to a target branch safely by hard-resetting working tree first

    psCommand = sprintf([...
        'powershell -Command "cd ''%s''; ' ...
        'git fetch; ' ...
        'git reset --hard; ' ...
        'git checkout %s; ' ...
        'git submodule update --init --recursive"' ... %added command to ensure submodule is initialized
        ], repoPath, targetBranch);

    % Execute PowerShell command
    [status, output] = system(psCommand);

    % Show result
    if status == 0
        fprintf('[SUCCESS] Switched to branch: %s\n', targetBranch);
    else
        fprintf('[FAILURE] Error while switching branch:\n%s\n', output);
    end
end

function status = CommitChangeOnTargetBranch(repoPath, commitMessage, branchName, foldersToCommit)
% Commit only specific folders inside the repository to Git
%
% Inputs:
%   repoPath        - Path to the repo (parent project)
%   commitMessage   - Git commit message
%   branchName      - Target branch to push
%   foldersToCommit - Cell array of folder paths relative to repoPath

    if ischar(foldersToCommit)
        foldersToCommit = {foldersToCommit};  % Convert to cell array if single string
    end

    % Build the git add arguments for each folder
    folderAddCmds = join(cellfun(@(f) sprintf('git add "%s"; ', f), foldersToCommit, 'UniformOutput', false));

    psCommand = sprintf([...
        'powershell -Command "cd ''%s''; ' ...
        '%s' ...                               % Add only specific folders
        'git commit -m ''%s''; ' ...
        'git push --set-upstream origin %s"'], ...
        repoPath, folderAddCmds{1}, commitMessage, branchName);

    [status, result] = system(psCommand);

    if status == 0
        fprintf('[SUCCESS] Git commit & push completed\n');
    else
        fprintf('[FAILURE] Git error:\n%s\n', result);
    end
end

function [status, output] = CreateBranch(repoPath, branchName, baseBranch)
% Create a new branch from baseBranch, not from current HEAD

    if nargin < 3
        baseBranch = 'main';
    end

    psCommand = sprintf([...
        'powershell -Command "cd ''%s''; ' ...
        'git fetch origin; ' ...
        'git checkout %s; ' ...       % Ensure wefre on base branch
        'git checkout -b %s"' ...
        ], repoPath, baseBranch, branchName);

    [status, output] = system(psCommand);
end

function status = UpdateSubmoduleBySHA(repoPath, submoduleRoot, targetSHA)
    % Update only a specific folder inside a submodule using a specific SHA
    %
    % Inputs:
    %   repoPath         - Path to the main repo
    %   submoduleRoot    - Relative path to the submodule within the main repo
    %   folderToCheckout - Folder inside submodule to be updated (e.g., SharedModel\ModelA)
    %   targetSHA        - SHA of the commit in submodule to use for this folder
    %                    - if targetSHA is 'latest' then checkout the
    %                    latest SHA of the commit
    
    if strcmp(targetSHA, 'latest')
        targetSHA = 'origin/main';
    end
 
    psCommand = sprintf([...
    'powershell -Command "cd ''%s\\%s''; ' ...
    'git fetch origin; ' ...
    'git reset --hard; ' ...               % Reset all files to clean state (no carryover)
    'git checkout %s "'], ...     % Checkout only the target folder from the SHA
    repoPath, submoduleRoot, targetSHA); 
    
    status = system(psCommand);

    if status == 0
        fprintf('[SUCCESS] Submodule "%s" checked out at SHA %s\n', submoduleRoot, targetSHA);
    else
        fprintf('[FAILURE] Could not checkout submodule "%s" at SHA %s\n', submoduleRoot, targetSHA);
    end
end

%% GITHUB API HELPER FUNCTIONS

function prUrl = createPullRequest(repoUrl, headBranch, baseBranch, project)
% 
% Input Arguments
%   repoUrl : "https://github.com/HondaDev2RandPP/SOX_BMS.git"
%   headBranch : branch that is newly created
%   baseBranch : branch that headBranch is created from
% Output Arguments
%   prUrl : the url containing the pull request links
% Summary :
%   Create pull request based on repository url through github API
%   json format is required to fill in needed info for input to API
    
    % Extract repo name and owner based on repoUrl
    parts = split(repoUrl, '/');
    owner = parts{end-1};
    repo = erase(parts{end}, '.git');
    % Create url to use the github API
    apiUrl = sprintf('https://api.github.com/repos/%s/%s/pulls', owner, repo);
    
    % Create webwrite command in jso format for the API input
    headers = {
    'Authorization', ['token ' getenv('GITHUB_TOKEN')];
    'User-Agent', 'MATLAB'
    };
    
    title = strcat("[AUTOMATED BY MATLAB : ", project ,"] Update Submodule in ", baseBranch,  " to latest");
    body = struct( ...
        'title', title, ...
        'head', headBranch, ...
        'base', baseBranch, ...
        'body', "This PR updates submodule pointer to latest version by MATLAB Automation." ...
    );

    options = weboptions("HeaderFields", headers, "MediaType", "application/json");

    try
        response = webwrite(apiUrl, body, options);
        prUrl = response.html_url;
        fprintf("[CREATED] PR: %s\n", prUrl);
    catch e
        prUrl = "";
        fprintf("[ERROR] PR creation failed: %s\n", e.message);
    end
end

function success = assignPullRequestToSelf(repoUrl, prNumber, yourUsername)
% 
% Input Arguments
%   repoUrl : "https://github.com/HondaDev2RandPP/SOX_BMS.git"
%   prnumber : pull request number
%   yourUsername : the username that triggers the github workflow
%   automation
% Output Arguments
%   success : flag indicating success of the operation
% Summary :
%   Assign the user as the owner of the pull request
%
    % Init. Get the token and owner of the repo through repoUrl
    token = getenv("GITHUB_TOKEN");
    ownerRepo = extractRepoPathFromURL(repoUrl);
    % Set the github API url based on the owner of the repo and pull
    % request number
    apiUrl = sprintf('https://api.github.com/repos/%s/issues/%d/assignees', ...
        ownerRepo, prNumber);
    
    % Create the API input using json format
    headers = {
        'Authorization', ['token ' token];
        'User-Agent', 'MATLAB'
    };
    
    body = struct('assignees', { {yourUsername} });%<---- The user name goes here!
    opts = weboptions('HeaderFields', headers, 'MediaType', 'application/json');
    
    try
        webwrite(apiUrl, body, opts);
        fprintf('[SUCCESS] PR #%d assigned to %s\n', prNumber, yourUsername);
        success = true;
    catch ME
        fprintf('[ERROR] Failed to assign PR: %s\n', ME.message);
        success = false;
    end
end

function success = setPullRequestReviewers(repoUrl, prNumber, reviewers)
% 
% Input Arguments
%   repoUrl : "https://github.com/HondaDev2RandPP/SOX_BMS.git"
%   prnumber : pull request number
%   reviewers : the reviewers name responsible
% Output Arguments
%   success : flag indicating success of the operation
% Summary :
%   Assign the reviewer name to the given pull request
%

    % Init. Get the token and owner of the repo through repoUrl
    ownerRepo = extractRepoPathFromURL(repoUrl);
    token = getenv("GITHUB_TOKEN");
    % Set the github API url based on the owner of the repo and pull
    % request number
    apiUrl = sprintf('https://api.github.com/repos/%s/pulls/%d/requested_reviewers', ...
        ownerRepo, prNumber);
    
    % Create the API input using json format
    headers = {
        'Authorization', ['token ' token];
        'User-Agent', 'MATLAB'
    };

    body = struct('reviewers', {reviewers}); %<---- The reviewer name goes here!
    opts = weboptions('HeaderFields', headers, 'MediaType', 'application/json');

    try
        webwrite(apiUrl, body, opts);
        fprintf('[SUCCESS] Reviewers added to PR #%d\n', prNumber);
        success = true;
    catch ME
        fprintf('[ERROR] Failed to add reviewers: %s\n', ME.message);
        success = false;
    end
end

function success = addLabelToPullRequest(repoURL, prNumber, labelName, labelColor)
% Adds a label to a pull request (creates the label if it doesn't exist)

    if nargin < 4
        labelColor = '0366d6';  % Default GitHub blue
    end

    success = false;
    token = getenv("GITHUB_TOKEN");
    parts = split(repoURL, '/');
    repoName = erase(parts{end}, '.git');
    owner = parts{end-1};
    ownerRepo = sprintf('%s/%s', owner, repoName);

    % Common API config
    headers = {
        'Authorization', ['token ' token];
        'User-Agent', 'MATLAB'
    };
    opts = weboptions('HeaderFields', headers, 'MediaType', 'application/json');

    % Step 1: Ensure label exists
    labelApi = sprintf('https://api.github.com/repos/%s/labels/%s', ownerRepo, labelName);
    try
        webread(labelApi, opts);  % Check if label already exists
    catch
        % Create the label if not found
        createLabelApi = sprintf('https://api.github.com/repos/%s/labels', ownerRepo);
        labelBody = struct('name', labelName, 'color', labelColor);
        try
            webwrite(createLabelApi, labelBody, opts);
            fprintf('[INFO] Label "%s" created.\n', labelName);
        catch ME
            fprintf('[ERROR] Failed to create label: %s\n', ME.message);
            return;
        end
    end

    % Step 2: Add label to the PR (treated as an issue)
    labelsApi = sprintf('https://api.github.com/repos/%s/issues/%d/labels', ownerRepo, prNumber);
    labelBody = struct('labels', {{labelName}});

    try
        webwrite(labelsApi, labelBody, opts);
        fprintf('[SUCCESS] Label "%s" applied to PR #%d\n', labelName, prNumber);
        success = true;
    catch ME
        fprintf('[ERROR] Failed to apply label to PR: %s\n', ME.message);
    end
end

function path = extractRepoPathFromURL(repoUrl)
    parts = split(repoUrl, '/');
    owner = parts{end-1};
    repo = erase(parts{end}, '.git');
    path = sprintf('%s/%s', owner, repo);
end

function success = addCommentToPR(repoUrl, prNumber, commentText)
    % Extract repo and owner
    parts = split(repoUrl, '/');
    owner = parts{end-1};
    repo = erase(parts{end}, '.git');

    apiUrl = sprintf('https://api.github.com/repos/%s/%s/issues/%d/comments', owner, repo, prNumber);
    
    token = getenv("GITHUB_TOKEN");
    headers = {
        'Authorization', ['token ' token];
        'User-Agent', 'MATLAB'
    };

    body = struct('body', commentText);
    options = weboptions("HeaderFields", headers, "MediaType", "application/json");

    try
        webwrite(apiUrl, body, options);
        fprintf('[COMMENTED] Added comment to PR #%d\n', prNumber);
        success = true;
    catch e
        fprintf('[ERROR] Failed to comment: %s\n', e.message);
        success = false;
    end
end

function commentText = createComment(modelName,zipUrl)
    commentText = ['? Model Update Summary' newline]; 
    for i = 1 : numel(zipUrl)
        if isempty(zipUrl{i})
            appendText = sprintf([
            "- [%s] is newly added \n"], modelName{i});
        else
            appendText = sprintf([
            "- [%s](%s)\n"], modelName{i}, zipUrl{i});
        end
        commentText = append(commentText, appendText);
    end
end

function uploadUrl = createGitHubRelease(repoUrl, tag)
    % Function : The total zip file after model comparison will be larger than 1 MB but less than 100MB,
    % therefore github release is created and the model comparison result
    % this function will return the upload Url of the Github release
    
    % "tag" is tied one release. One release can contain multiple assests
    % i.e. ZIP files.

    token = getenv("GITHUB_TOKEN");
    
    % Extract repo and owner
    parts = split(repoUrl, '/');
    owner = parts{end-1};
    repo = erase(parts{end}, '.git');
    
    apiURL = sprintf('https://api.github.com/repos/%s/%s/releases', owner, repo);
    
    body = struct( ...
        'tag_name', tag, ...
        'name', tag, ...
        'body', 'Auto-generated submodule update comparison', ...
        'draft', false, ...
        'prerelease', false ...
    );

    headers = {
        'Authorization', ['token ', token];
        'User-Agent', 'MATLAB';
        'Content-Type', 'application/json'
    };

    options = weboptions( ...
        'MediaType', 'application/json', ...
        'HeaderFields', headers ...
    );
    
    try
        % Create upload URL
        response = webwrite(apiURL, body, options);
        uploadUrl = erase(response.upload_url, '{?name,label}'); %erase the format to create complete upload URL later.
        fprintf('[SUCCESS] Added release and created upload url \n');
    catch e
        uploadUrl = [];
        fprintf('[ERROR] Failed to create uploadUrl: %s\n', e.message);
    end
end

function uploadFlag = uploadZipUsingUploadURL(zipPaths, uploadUrl)
    % Function : After creating Github release and its upload url, upload
    % the zip file one by one

    token = getenv("GITHUB_TOKEN");
    uploadFlag = 0;
    if ~isempty(uploadUrl)
        for i = 1 : numel(zipPaths)
            zipPath = zipPaths{i};
            if ~isempty(zipPath)
                [~, fileName, ext] = fileparts(zipPath);
                
                uploadURL = sprintf('%s?name=%s%s', uploadUrl, fileName, ext); %cleaned URL appended with ?name to insert file name and its extension
                
                % ¦¦¦ LIMITATION OF MATLAB 2019b : Use curl.exe and powershell to upload
                % the Zip file
                psCommand =sprintf([
                    'powershell -NoLogo -Command "curl.exe -X POST ' ...
                    '-H \\\"Authorization: token %s\\\" ' ...
                    '-H \\\"Content-Type: application/zip\\\" ' ...
                    '--data-binary @\"%s\" ' ...
                    '\\\"%s\\\""' ...
                ], token, zipPath, uploadURL);

                status = system(psCommand);
                
                if status == 0
                    fprintf('[SUCCESS] Successfully uploaded the %s to %s \n', zipPath, uploadUrl);
                    uploadFlag = 1;
                else
                    fprintf('[FAILURE] Failed to upload the %s to %s \n', zipPath, uploadUrl);
                end
            end
        end
    end
end


function downloadURLs = getReleaseDownloadURLs(repoUrl, tag, uploadFlag)
% Get list of download URLs for assets attached to a GitHub release
%
% Inputs:
%   repoOwner - Owner of the repository (e.g., 'HondaRand2DevPP')
%   repoName  - Repository name (e.g., 'SubmoduleX')
%   tag       - Tag of the release (e.g., 'autocompare-ModelA-20250606')
%   token     - GitHub personal access token (with repo scope)
%
% Output:
%   downloadURLs - Cell array of download URLs

    if uploadFlag == 0
        fprintf('[EMPTY] No download URL \n')
       return 
    end

    token = getenv("GITHUB_TOKEN");
    
    % Extract repo and owner
    parts = split(repoUrl, '/');
    owner = parts{end-1};
    repo = erase(parts{end}, '.git');

    apiURL = sprintf('https://api.github.com/repos/%s/%s/releases/tags/%s', ...
        owner, repo, tag);

    options = weboptions('HeaderFields', {
        'Authorization', ['token ', token];
        'User-Agent', 'MATLAB'
    });

    try
        releaseInfo = webread(apiURL, options);
        assets = releaseInfo.assets;
        downloadURLs = arrayfun(@(a) a.browser_download_url, assets, 'UniformOutput', false);

        for i = 1:numel(downloadURLs)
            fprintf('[FOUND] Asset: %s\n', downloadURLs{i});
        end
    catch e
        fprintf('[ERROR] Could not retrieve release: %s\n', e.message);
        downloadURLs = {};
    end
    
end
