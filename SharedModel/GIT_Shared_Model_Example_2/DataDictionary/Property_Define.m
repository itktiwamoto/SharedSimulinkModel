% ���f���t�@�C���ƃ��f�����u���b�N�̃n���h���擾
modelH=get_param(bdroot,'Handle');                                          %���f���t�@�C���̃n���h���擾(���Ԃ��ɊJ�������f���t�@�C���̃n���h���擾�j
CblockH=find_system(modelH,'LookUnderMasks','all','type','block');          %���f�����̃u���b�N�̃n���h���擾
for n1=1:length(CblockH)                                                    %�u���b�N��S�ăT�[�`
blockType=get_param(CblockH(n1),'BlockType');                           %�u���b�N�^�C�v�Ǎ�
% Define�pConstant�̃v���p�e�B�ݒ�
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

