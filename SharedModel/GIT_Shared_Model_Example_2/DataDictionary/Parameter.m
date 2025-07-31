
%% PLCT_rcvinfo10ms01_20p00_0
%パラメータ:k_icalpl_C(電池電流フィルタ用係数(PLCT用))
k_icalpl_C			= ASAP2.Parameter;
k_icalpl_C.Description = '電池電流フィルタ用係数(PLCT用)';
k_icalpl_C.DataType = 'TUB_uint16_2e_16';
k_icalpl_C.Unit = '';
k_icalpl_C.Value = 0.5;
k_icalpl_C.Min = 0;
k_icalpl_C.Max = 0.9999;
k_icalpl_C.CoderInfo.StorageClass = 'Custom';

k_icalpl_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

k_icalpl_C.CoderInfo.CustomAttributes.Owner = 'PLCT_rcvinfo10ms01_20p00_0';

k_icalpl_C_Min = 0;
k_icalpl_C_Max = 0.9999;


%% PLCT_calvbcmnlmt01_16la0_0
%パラメータ:stopengstmode_C(ENG始動モード(STIMAOP用))
stopengstmode_C			= ASAP2.Parameter;
stopengstmode_C.Description = 'ENG始動モード(STIMAOP用)';
stopengstmode_C.DataType = 'T_uint8';
stopengstmode_C.Unit = '';
stopengstmode_C.Value = 10;
stopengstmode_C.Min = 0;
stopengstmode_C.Max = 255;
stopengstmode_C.CoderInfo.StorageClass = 'Custom';

stopengstmode_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

stopengstmode_C.CoderInfo.CustomAttributes.Owner = 'PLCT_calvbcmnlmt01_16la0_0';

stopengstmode_C_Min = 0;
stopengstmode_C_Max = 255;

%パラメータ:t_vminddstr_C(高圧バッテリ極低温始動時下限電圧マップ切替温度閾値)
t_vminddstr_C			= ASAP2.Parameter;
t_vminddstr_C.Description = '高圧バッテリ極低温始動時下限電圧マップ切替温度閾値';
t_vminddstr_C.DataType = 'TSB_Tbatt';
t_vminddstr_C.Unit = 'degC';
t_vminddstr_C.Value = 3276.7;
t_vminddstr_C.Min = -3276.8;
t_vminddstr_C.Max = 3276.7;
t_vminddstr_C.CoderInfo.StorageClass = 'Custom';

t_vminddstr_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

t_vminddstr_C.CoderInfo.CustomAttributes.Owner = 'PLCT_calvbcmnlmt01_16la0_0';

t_vminddstr_C_Min = -3276.8;
t_vminddstr_C_Max = 3276.7;


%% xxx
%パラメータ:ibatini_C(電池電流初期値)
ibatini_C			= ASAP2.Parameter;
ibatini_C.Description = '電池電流初期値';
ibatini_C.DataType = 'TSB_Dc';
ibatini_C.Unit = 'A';
ibatini_C.Value = 0;
ibatini_C.Min = -327.68;
ibatini_C.Max = 327.67;
ibatini_C.CoderInfo.StorageClass = 'Custom';

ibatini_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

ibatini_C.CoderInfo.CustomAttributes.Owner = 'xxx';

ibatini_C_Min = -327.68;
ibatini_C_Max = 327.67;

%パラメータ:t_bmaxini_C(電池個別温度最大値初期値)
t_bmaxini_C			= ASAP2.Parameter;
t_bmaxini_C.Description = '電池個別温度最大値初期値';
t_bmaxini_C.DataType = 'TSB_Tbatt';
t_bmaxini_C.Unit = 'degC';
t_bmaxini_C.Value = 25;
t_bmaxini_C.Min = -3276.8;
t_bmaxini_C.Max = 3276.7;
t_bmaxini_C.CoderInfo.StorageClass = 'Custom';

t_bmaxini_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

t_bmaxini_C.CoderInfo.CustomAttributes.Owner = 'xxx';

t_bmaxini_C_Min = -3276.8;
t_bmaxini_C_Max = 3276.7;

%パラメータ:t_bminini_C(電池個別温度最小値初期値)
t_bminini_C			= ASAP2.Parameter;
t_bminini_C.Description = '電池個別温度最小値初期値';
t_bminini_C.DataType = 'TSB_Tbatt';
t_bminini_C.Unit = 'degC';
t_bminini_C.Value = 25;
t_bminini_C.Min = -3276.8;
t_bminini_C.Max = 3276.7;
t_bminini_C.CoderInfo.StorageClass = 'Custom';

t_bminini_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

t_bminini_C.CoderInfo.CustomAttributes.Owner = 'xxx';

t_bminini_C_Min = -3276.8;
t_bminini_C_Max = 3276.7;

%パラメータ:asbcbaseini_C(セル基準容量初期代入値)
asbcbaseini_C			= ASAP2.Parameter;
asbcbaseini_C.Description = 'セル基準容量初期代入値';
asbcbaseini_C.DataType = 'TSB_Coulomb';
asbcbaseini_C.Unit = 'C';
asbcbaseini_C.Value = 173880;
asbcbaseini_C.Min = -21474836.48;
asbcbaseini_C.Max = 21474836.47;
asbcbaseini_C.CoderInfo.StorageClass = 'Custom';

asbcbaseini_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

asbcbaseini_C.CoderInfo.CustomAttributes.Owner = 'xxx';

asbcbaseini_C_Min = -21474836.48;
asbcbaseini_C_Max = 21474836.47;


%% BSCT_calbcsoc01_16la0_2
%パラメータ:scsocini_C(SOC初期値)
scsocini_C			= ASAP2.Parameter;
scsocini_C.Description = 'SOC初期値';
scsocini_C.DataType = 'TSB_Soc';
scsocini_C.Unit = '%';
scsocini_C.Value = 50;
scsocini_C.Min = -327.68;
scsocini_C.Max = 327.67;
scsocini_C.CoderInfo.StorageClass = 'Custom';

scsocini_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

scsocini_C.CoderInfo.CustomAttributes.Owner = 'BSCT_calbcsoc01_16la0_2';

scsocini_C_Min = -327.68;
scsocini_C_Max = 327.67;


%% MBIF_detvbcread01_16LA0_40
%パラメータ:v_bcini_C(電池セル電圧初期値)
v_bcini_C			= ASAP2.Parameter;
v_bcini_C.Description = '電池セル電圧初期値';
v_bcini_C.DataType = 'TSB_Volt';
v_bcini_C.Unit = 'mV';
v_bcini_C.Value = 3738.9;
v_bcini_C.Min = -6553.6;
v_bcini_C.Max = 6553.4;
v_bcini_C.CoderInfo.StorageClass = 'Custom';

v_bcini_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

v_bcini_C.CoderInfo.CustomAttributes.Owner = 'MBIF_detvbcread01_16LA0_40';

v_bcini_C_Min = -6553.6;
v_bcini_C_Max = 6553.4;


%% MBIF_calvbcon01_16LA0_20
%パラメータ:v_bcmaxini_C(電池個別セル電圧最大値初期値)
v_bcmaxini_C			= ASAP2.Parameter;
v_bcmaxini_C.Description = '電池個別セル電圧最大値初期値';
v_bcmaxini_C.DataType = 'TSB_Volt';
v_bcmaxini_C.Unit = 'mV';
v_bcmaxini_C.Value = 4200;
v_bcmaxini_C.Min = -6553.6;
v_bcmaxini_C.Max = 6553.4;
v_bcmaxini_C.CoderInfo.StorageClass = 'Custom';

v_bcmaxini_C.CoderInfo.CustomStorageClass = 'ConstVolatile';

v_bcmaxini_C.CoderInfo.CustomAttributes.Owner = 'MBIF_calvbcon01_16LA0_20';

v_bcmaxini_C_Min = -6553.6;
v_bcmaxini_C_Max = 6553.4;


