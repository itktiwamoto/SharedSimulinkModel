% ���f���t�@�C���ƃ��f�����u���b�N�̃n���h���擾
modelH=get_param(bdroot,'Handle');                                          %���f���t�@�C���̃n���h���擾(���Ԃ��ɊJ�������f���t�@�C���̃n���h���擾�j
CblockH=find_system(modelH,'LookUnderMasks','all','type','block');          %���f�����̃u���b�N�̃n���h���擾
for n1=1:length(CblockH)                                                    %�u���b�N��S�ăT�[�`
blockType=get_param(CblockH(n1),'BlockType');                           %�u���b�N�^�C�v�Ǎ�
% Constant/Table/Map�̃v���p�e�B�ݒ�
% Constant�̃v���p�e�B�ݒ�
    if strcmp(blockType,'Constant')
        ConstantName=get_param(CblockH(n1),'Value');
        if strcmp(ConstantName,'k_icalpl_C')
            set_param(CblockH(n1),'OutDataTypeStr','TUB_uint16_2e_16');
            set_param(CblockH(n1),'OutMax','k_icalpl_C_Max');
            set_param(CblockH(n1),'OutMin','k_icalpl_C_Min');
        end
        if strcmp(ConstantName,'stopengstmode_C')
            set_param(CblockH(n1),'OutDataTypeStr','T_uint8');
            set_param(CblockH(n1),'OutMax','stopengstmode_C_Max');
            set_param(CblockH(n1),'OutMin','stopengstmode_C_Min');
        end
        if strcmp(ConstantName,'ibatini_C')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Dc');
            set_param(CblockH(n1),'OutMax','ibatini_C_Max');
            set_param(CblockH(n1),'OutMin','ibatini_C_Min');
        end
        if strcmp(ConstantName,'scsocini_C')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Soc');
            set_param(CblockH(n1),'OutMax','scsocini_C_Max');
            set_param(CblockH(n1),'OutMin','scsocini_C_Min');
        end
        if strcmp(ConstantName,'t_bmaxini_C')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Tbatt');
            set_param(CblockH(n1),'OutMax','t_bmaxini_C_Max');
            set_param(CblockH(n1),'OutMin','t_bmaxini_C_Min');
        end
        if strcmp(ConstantName,'t_bminini_C')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Tbatt');
            set_param(CblockH(n1),'OutMax','t_bminini_C_Max');
            set_param(CblockH(n1),'OutMin','t_bminini_C_Min');
        end
        if strcmp(ConstantName,'t_vminddstr_C')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Tbatt');
            set_param(CblockH(n1),'OutMax','t_vminddstr_C_Max');
            set_param(CblockH(n1),'OutMin','t_vminddstr_C_Min');
        end
        if strcmp(ConstantName,'v_bcini_C')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Volt');
            set_param(CblockH(n1),'OutMax','v_bcini_C_Max');
            set_param(CblockH(n1),'OutMin','v_bcini_C_Min');
        end
        if strcmp(ConstantName,'v_bcmaxini_C')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Volt');
            set_param(CblockH(n1),'OutMax','v_bcmaxini_C_Max');
            set_param(CblockH(n1),'OutMin','v_bcmaxini_C_Min');
        end
        if strcmp(ConstantName,'asbcbaseini_C')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Coulomb');
            set_param(CblockH(n1),'OutMax','asbcbaseini_C_Max');
            set_param(CblockH(n1),'OutMin','asbcbaseini_C_Min');
        end
    end

end

