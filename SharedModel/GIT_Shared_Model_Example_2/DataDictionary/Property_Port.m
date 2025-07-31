% モデルファイルとモデル内ブロックのハンドラ取得
modelH=get_param(bdroot,'Handle');                                          %モデルファイルのハンドラ取得(たぶん先に開いたモデルファイルのハンドル取得）
CblockH=find_system(modelH,'LookUnderMasks','all','type','block');          %モデル内のブロックのハンドラ取得
for n1=1:length(CblockH)                                                    %ブロックを全てサーチ
blockType=get_param(CblockH(n1),'BlockType');                               %ブロックタイプ読込
% Inport/Outportのプロパティ設定
    if (strcmp(blockType,'Inport') || strcmp(blockType,'Outport'))
        set_param(CblockH(n1),'SamplingMode','Sample based');
        PortName=get_param(CblockH(n1),'Name');
        if strcmp(PortName,'iwboxcdf')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Pwr_001');
            set_param(CblockH(n1),'OutMax','iwboxcdf_Max');
            set_param(CblockH(n1),'OutMin','iwboxcdf_Min');
            set_param(CblockH(n1),'Unit','W');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'f_batuvmnt_pl')
            set_param(CblockH(n1),'OutDataTypeStr','T_Flg');
            set_param(CblockH(n1),'OutMax','f_batuvmnt_pl_Max');
            set_param(CblockH(n1),'OutMin','f_batuvmnt_pl_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'f_ocvmxninifn_pl')
            set_param(CblockH(n1),'OutDataTypeStr','T_Flg');
            set_param(CblockH(n1),'OutMax','f_ocvmxninifn_pl_Max');
            set_param(CblockH(n1),'OutMin','f_ocvmxninifn_pl_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'f_pwexprq')
            set_param(CblockH(n1),'OutDataTypeStr','T_Flg');
            set_param(CblockH(n1),'OutMax','f_pwexprq_Max');
            set_param(CblockH(n1),'OutMin','f_pwexprq_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'f_pwrofmdhv_pl')
            set_param(CblockH(n1),'OutDataTypeStr','T_Flg');
            set_param(CblockH(n1),'OutMax','f_pwrofmdhv_pl_Max');
            set_param(CblockH(n1),'OutMin','f_pwrofmdhv_pl_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'f_tmbatoffn_pl')
            set_param(CblockH(n1),'OutDataTypeStr','T_Flg');
            set_param(CblockH(n1),'OutMax','f_tmbatoffn_pl_Max');
            set_param(CblockH(n1),'OutMin','f_tmbatoffn_pl_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'st_ibat_10m_pl')
            set_param(CblockH(n1),'OutDataTypeStr','T_uint8');
            set_param(CblockH(n1),'OutMax','st_ibat_10m_pl_Max');
            set_param(CblockH(n1),'OutMin','st_ibat_10m_pl_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'st_tbmax_pl')
            set_param(CblockH(n1),'OutDataTypeStr','T_uint8');
            set_param(CblockH(n1),'OutMax','st_tbmax_pl_Max');
            set_param(CblockH(n1),'OutMin','st_tbmax_pl_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'st_tbmin_pl')
            set_param(CblockH(n1),'OutDataTypeStr','T_uint8');
            set_param(CblockH(n1),'OutMax','st_tbmin_pl_Max');
            set_param(CblockH(n1),'OutMin','st_tbmin_pl_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'st_vbc_pl')
            set_param(CblockH(n1),'OutDataTypeStr','T_uint8');
            set_param(CblockH(n1),'OutMax','st_vbc_pl_Max');
            set_param(CblockH(n1),'OutMin','st_vbc_pl_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'i_bat_10m_pl')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Dc');
            set_param(CblockH(n1),'OutMax','i_bat_10m_pl_Max');
            set_param(CblockH(n1),'OutMin','i_bat_10m_pl_Min');
            set_param(CblockH(n1),'Unit','A');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'sc_bcmax_pl')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Soc');
            set_param(CblockH(n1),'OutMax','sc_bcmax_pl_Max');
            set_param(CblockH(n1),'OutMin','sc_bcmax_pl_Min');
            set_param(CblockH(n1),'Unit','%');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'sc_bcmin_pl')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Soc');
            set_param(CblockH(n1),'OutMax','sc_bcmin_pl_Max');
            set_param(CblockH(n1),'OutMin','sc_bcmin_pl_Min');
            set_param(CblockH(n1),'Unit','%');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'v_bcmax_pl')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Volt');
            set_param(CblockH(n1),'OutMax','v_bcmax_pl_Max');
            set_param(CblockH(n1),'OutMin','v_bcmax_pl_Min');
            set_param(CblockH(n1),'Unit','mV');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'tmbatoff_pl')
            set_param(CblockH(n1),'OutDataTypeStr','T_uint32');
            set_param(CblockH(n1),'OutMax','tmbatoff_pl_Max');
            set_param(CblockH(n1),'OutMin','tmbatoff_pl_Min');
            set_param(CblockH(n1),'Unit','s');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'as_bcbsmin_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Coulomb_float');
            set_param(CblockH(n1),'OutMax','as_bcbsmin_pl_s_Max');
            set_param(CblockH(n1),'OutMin','as_bcbsmin_pl_s_Min');
            set_param(CblockH(n1),'Unit','As');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'iwboxcdf_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Pwr_float');
            set_param(CblockH(n1),'OutMax','iwboxcdf_pl_s_Max');
            set_param(CblockH(n1),'OutMin','iwboxcdf_pl_s_Min');
            set_param(CblockH(n1),'Unit','W');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'i_bat_10m_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Dc_float');
            set_param(CblockH(n1),'OutMax','i_bat_10m_pl_s_Max');
            set_param(CblockH(n1),'OutMin','i_bat_10m_pl_s_Min');
            set_param(CblockH(n1),'Unit','A');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'krcadj_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_value_float');
            set_param(CblockH(n1),'OutMax','krcadj_pl_s_Max');
            set_param(CblockH(n1),'OutMin','krcadj_pl_s_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'krdadj_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_value_float');
            set_param(CblockH(n1),'OutMax','krdadj_pl_s_Max');
            set_param(CblockH(n1),'OutMin','krdadj_pl_s_Min');
            set_param(CblockH(n1),'Unit','inherit');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'r_estc_ini_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_R_float');
            set_param(CblockH(n1),'OutMax','r_estc_ini_s_Max');
            set_param(CblockH(n1),'OutMin','r_estc_ini_s_Min');
            set_param(CblockH(n1),'Unit','Ω');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'r_estd_ini_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_R_float');
            set_param(CblockH(n1),'OutMax','r_estd_ini_s_Max');
            set_param(CblockH(n1),'OutMin','r_estd_ini_s_Min');
            set_param(CblockH(n1),'Unit','Ω');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'t_bmax_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Tbatt_float');
            set_param(CblockH(n1),'OutMax','t_bmax_pl_s_Max');
            set_param(CblockH(n1),'OutMin','t_bmax_pl_s_Min');
            set_param(CblockH(n1),'Unit','degC');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'t_bmin_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Tbatt_float');
            set_param(CblockH(n1),'OutMax','t_bmin_pl_s_Max');
            set_param(CblockH(n1),'OutMin','t_bmin_pl_s_Min');
            set_param(CblockH(n1),'Unit','degC');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'v_bcocvmax_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Volt_float');
            set_param(CblockH(n1),'OutMax','v_bcocvmax_pl_s_Max');
            set_param(CblockH(n1),'OutMin','v_bcocvmax_pl_s_Min');
            set_param(CblockH(n1),'Unit','V');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'v_bcocvmin_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Volt_float');
            set_param(CblockH(n1),'OutMax','v_bcocvmin_pl_s_Max');
            set_param(CblockH(n1),'OutMin','v_bcocvmin_pl_s_Min');
            set_param(CblockH(n1),'Unit','V');
            set_param(CblockH(n1),'PortDimensions','[1 1]');
        end
        if strcmp(PortName,'v_bc_pl_s')
            set_param(CblockH(n1),'OutDataTypeStr','TSB_Volt_float');
            set_param(CblockH(n1),'OutMax','v_bc_pl_s_Max');
            set_param(CblockH(n1),'OutMin','v_bc_pl_s_Min');
            set_param(CblockH(n1),'Unit','V');
            set_param(CblockH(n1),'PortDimensions','[1 14]');
        end
    end

end

