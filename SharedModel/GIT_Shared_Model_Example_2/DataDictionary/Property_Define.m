% モデルファイルとモデル内ブロックのハンドラ取得
modelH=get_param(bdroot,'Handle');                                          %モデルファイルのハンドラ取得(たぶん先に開いたモデルファイルのハンドル取得）
CblockH=find_system(modelH,'LookUnderMasks','all','type','block');          %モデル内のブロックのハンドラ取得
for n1=1:length(CblockH)                                                    %ブロックを全てサーチ
blockType=get_param(CblockH(n1),'BlockType');                           %ブロックタイプ読込
% Define用Constantのプロパティ設定
    if strcmp(blockType,'Constant')
        DefineName=get_param(CblockH(n1),'Value');
        if strcmp(DefineName,'X_CLNOMAX_DEF')
            set_param(CblockH(n1),'OutDataTypeStr','T_int32');
            set_param(CblockH(n1),'OutMax','X_CLNOMAX_DEF_Max');
            set_param(CblockH(n1),'OutMin','X_CLNOMAX_DEF_Min');
        end
        if strcmp(DefineName,'X_NUMTB_DEF')
            set_param(CblockH(n1),'OutDataTypeStr','T_int32');
            set_param(CblockH(n1),'OutMax','X_NUMTB_DEF_Max');
            set_param(CblockH(n1),'OutMin','X_NUMTB_DEF_Min');
        end
    end

end

