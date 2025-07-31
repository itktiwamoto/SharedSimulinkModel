
%% PLCT_detmbcdps01_17lzz_0
%変数:iwboxcdf(電池BOX冷却能力フィルタ値)
iwboxcdf			= ASAP2.Signal;
iwboxcdf.Description = '電池BOX冷却能力フィルタ値';
iwboxcdf.DataType = 'TSB_Pwr_001';
iwboxcdf.Unit = 'W';
iwboxcdf.InitialValue = '';
iwboxcdf.Min = -327.68;
iwboxcdf.Max = 327.67;
iwboxcdf.Dimensions = [1 1];
iwboxcdf.CoderInfo.StorageClass = 'ImportedExtern';

iwboxcdf_Min = -327.68;
iwboxcdf_Max = 327.67;


%% PLCT_rcvinfo10ms01_20p00_0
%変数:f_batuvmnt_pl(1で電欠防止メンテナンスモード（PLCT用）)
f_batuvmnt_pl			= ASAP2.Signal;
f_batuvmnt_pl.Description = '1で電欠防止メンテナンスモード（PLCT用）';
f_batuvmnt_pl.DataType = 'T_Flg';
f_batuvmnt_pl.Unit = '';
f_batuvmnt_pl.InitialValue = '';
f_batuvmnt_pl.Min = 0;
f_batuvmnt_pl.Max = 1;
f_batuvmnt_pl.Dimensions = [1 1];
f_batuvmnt_pl.CoderInfo.StorageClass = 'ExportedGlobal';

f_batuvmnt_pl_Min = 0;
f_batuvmnt_pl_Max = 1;

%変数:f_ocvmxninifn_pl(OCV推定値最大最小値初期化済フラグ(PLCT用))
f_ocvmxninifn_pl			= ASAP2.Signal;
f_ocvmxninifn_pl.Description = 'OCV推定値最大最小値初期化済フラグ(PLCT用)';
f_ocvmxninifn_pl.DataType = 'T_Flg';
f_ocvmxninifn_pl.Unit = '';
f_ocvmxninifn_pl.InitialValue = '';
f_ocvmxninifn_pl.Min = 0;
f_ocvmxninifn_pl.Max = 1;
f_ocvmxninifn_pl.Dimensions = [1 1];
f_ocvmxninifn_pl.CoderInfo.StorageClass = 'ExportedGlobal';

f_ocvmxninifn_pl_Min = 0;
f_ocvmxninifn_pl_Max = 1;

%変数:f_pwexprq(高圧バッテリ出力拡大要求フラグ)
f_pwexprq			= ASAP2.Signal;
f_pwexprq.Description = '高圧バッテリ出力拡大要求フラグ';
f_pwexprq.DataType = 'T_Flg';
f_pwexprq.Unit = '';
f_pwexprq.InitialValue = '';
f_pwexprq.Min = 0;
f_pwexprq.Max = 1;
f_pwexprq.Dimensions = [1 1];
f_pwexprq.CoderInfo.StorageClass = 'ExportedGlobal';

f_pwexprq_Min = 0;
f_pwexprq_Max = 1;

%変数:f_pwrofmdhv_pl(1でシステムコントローラの状態遷移をPWR OFFモード（PLCT用）)
f_pwrofmdhv_pl			= ASAP2.Signal;
f_pwrofmdhv_pl.Description = '1でシステムコントローラの状態遷移をPWR OFFモード（PLCT用）';
f_pwrofmdhv_pl.DataType = 'T_Flg';
f_pwrofmdhv_pl.Unit = '';
f_pwrofmdhv_pl.InitialValue = '';
f_pwrofmdhv_pl.Min = 0;
f_pwrofmdhv_pl.Max = 1;
f_pwrofmdhv_pl.Dimensions = [1 1];
f_pwrofmdhv_pl.CoderInfo.StorageClass = 'ExportedGlobal';

f_pwrofmdhv_pl_Min = 0;
f_pwrofmdhv_pl_Max = 1;

%変数:f_tmbatoffn_pl(1でバッテリ放置時間算出済(PLCT用))
f_tmbatoffn_pl			= ASAP2.Signal;
f_tmbatoffn_pl.Description = '1でバッテリ放置時間算出済(PLCT用)';
f_tmbatoffn_pl.DataType = 'T_Flg';
f_tmbatoffn_pl.Unit = '';
f_tmbatoffn_pl.InitialValue = '';
f_tmbatoffn_pl.Min = 0;
f_tmbatoffn_pl.Max = 1;
f_tmbatoffn_pl.Dimensions = [1 1];
f_tmbatoffn_pl.CoderInfo.StorageClass = 'ExportedGlobal';

f_tmbatoffn_pl_Min = 0;
f_tmbatoffn_pl_Max = 1;

%変数:st_ibat_10m_pl(高圧バッテリ電流センサ10MS値ステータス（PLCT用）)
st_ibat_10m_pl			= ASAP2.Signal;
st_ibat_10m_pl.Description = '高圧バッテリ電流センサ10MS値ステータス（PLCT用）';
st_ibat_10m_pl.DataType = 'T_uint8';
st_ibat_10m_pl.Unit = '';
st_ibat_10m_pl.InitialValue = '';
st_ibat_10m_pl.Min = 0;
st_ibat_10m_pl.Max = 255;
st_ibat_10m_pl.Dimensions = [1 1];
st_ibat_10m_pl.CoderInfo.StorageClass = 'ExportedGlobal';

st_ibat_10m_pl_Min = 0;
st_ibat_10m_pl_Max = 255;

%変数:st_tbmax_pl(高圧バッテリ個別温度最大値ステータス(PLCT用))
st_tbmax_pl			= ASAP2.Signal;
st_tbmax_pl.Description = '高圧バッテリ個別温度最大値ステータス(PLCT用)';
st_tbmax_pl.DataType = 'T_uint8';
st_tbmax_pl.Unit = '';
st_tbmax_pl.InitialValue = '';
st_tbmax_pl.Min = 0;
st_tbmax_pl.Max = 255;
st_tbmax_pl.Dimensions = [1 1];
st_tbmax_pl.CoderInfo.StorageClass = 'ExportedGlobal';

st_tbmax_pl_Min = 0;
st_tbmax_pl_Max = 255;

%変数:st_tbmin_pl(高圧バッテリ個別温度最小値ステータス(PLCT用))
st_tbmin_pl			= ASAP2.Signal;
st_tbmin_pl.Description = '高圧バッテリ個別温度最小値ステータス(PLCT用)';
st_tbmin_pl.DataType = 'T_uint8';
st_tbmin_pl.Unit = '';
st_tbmin_pl.InitialValue = '';
st_tbmin_pl.Min = 0;
st_tbmin_pl.Max = 255;
st_tbmin_pl.Dimensions = [1 1];
st_tbmin_pl.CoderInfo.StorageClass = 'ExportedGlobal';

st_tbmin_pl_Min = 0;
st_tbmin_pl_Max = 255;

%変数:st_vbc_pl(高圧バッテリセル電圧ステータス（PLCT用）)
st_vbc_pl			= ASAP2.Signal;
st_vbc_pl.Description = '高圧バッテリセル電圧ステータス（PLCT用）';
st_vbc_pl.DataType = 'T_uint8';
st_vbc_pl.Unit = '';
st_vbc_pl.InitialValue = '';
st_vbc_pl.Min = 0;
st_vbc_pl.Max = 255;
st_vbc_pl.Dimensions = [1 1];
st_vbc_pl.CoderInfo.StorageClass = 'ExportedGlobal';

st_vbc_pl_Min = 0;
st_vbc_pl_Max = 255;

%変数:i_bat_10m_pl(高圧バッテリ出力制限算出用電流値)
i_bat_10m_pl			= ASAP2.Signal;
i_bat_10m_pl.Description = '高圧バッテリ出力制限算出用電流値';
i_bat_10m_pl.DataType = 'TSB_Dc';
i_bat_10m_pl.Unit = 'A';
i_bat_10m_pl.InitialValue = '';
i_bat_10m_pl.Min = -327.68;
i_bat_10m_pl.Max = 327.67;
i_bat_10m_pl.Dimensions = [1 1];
i_bat_10m_pl.CoderInfo.StorageClass = 'ExportedGlobal';

i_bat_10m_pl_Min = -327.68;
i_bat_10m_pl_Max = 327.67;

%変数:sc_bcmax_pl(高圧バッテリセルSOC値最大値(PLCT用))
sc_bcmax_pl			= ASAP2.Signal;
sc_bcmax_pl.Description = '高圧バッテリセルSOC値最大値(PLCT用)';
sc_bcmax_pl.DataType = 'TSB_Soc';
sc_bcmax_pl.Unit = '%';
sc_bcmax_pl.InitialValue = '';
sc_bcmax_pl.Min = -327.68;
sc_bcmax_pl.Max = 327.67;
sc_bcmax_pl.Dimensions = [1 1];
sc_bcmax_pl.CoderInfo.StorageClass = 'ExportedGlobal';

sc_bcmax_pl_Min = -327.68;
sc_bcmax_pl_Max = 327.67;

%変数:sc_bcmin_pl(高圧バッテリセルSOC値最小値(PLCT用))
sc_bcmin_pl			= ASAP2.Signal;
sc_bcmin_pl.Description = '高圧バッテリセルSOC値最小値(PLCT用)';
sc_bcmin_pl.DataType = 'TSB_Soc';
sc_bcmin_pl.Unit = '%';
sc_bcmin_pl.InitialValue = '';
sc_bcmin_pl.Min = -327.68;
sc_bcmin_pl.Max = 327.67;
sc_bcmin_pl.Dimensions = [1 1];
sc_bcmin_pl.CoderInfo.StorageClass = 'ExportedGlobal';

sc_bcmin_pl_Min = -327.68;
sc_bcmin_pl_Max = 327.67;

%変数:v_bcmax_pl(電池個別セル電圧最大値(PLCT用))
v_bcmax_pl			= ASAP2.Signal;
v_bcmax_pl.Description = '電池個別セル電圧最大値(PLCT用)';
v_bcmax_pl.DataType = 'TSB_Volt';
v_bcmax_pl.Unit = 'mV';
v_bcmax_pl.InitialValue = '';
v_bcmax_pl.Min = -6553.6;
v_bcmax_pl.Max = 6553.4;
v_bcmax_pl.Dimensions = [1 1];
v_bcmax_pl.CoderInfo.StorageClass = 'ExportedGlobal';

v_bcmax_pl_Min = -6553.6;
v_bcmax_pl_Max = 6553.4;

%変数:tmbatoff_pl(バッテリ放置時間積算値(PLCT用))
tmbatoff_pl			= ASAP2.Signal;
tmbatoff_pl.Description = 'バッテリ放置時間積算値(PLCT用)';
tmbatoff_pl.DataType = 'T_uint32';
tmbatoff_pl.Unit = 's';
tmbatoff_pl.InitialValue = '';
tmbatoff_pl.Min = 0;
tmbatoff_pl.Max = 4294967295;
tmbatoff_pl.Dimensions = [1 1];
tmbatoff_pl.CoderInfo.StorageClass = 'ExportedGlobal';

tmbatoff_pl_Min = 0;
tmbatoff_pl_Max = 4294967295;

%変数:as_bcbsmin_pl_s(高圧バッテリセル容量最小値（PLCT用）)
as_bcbsmin_pl_s			= ASAP2.Signal;
as_bcbsmin_pl_s.Description = '高圧バッテリセル容量最小値（PLCT用）';
as_bcbsmin_pl_s.DataType = 'TSB_Coulomb_float';
as_bcbsmin_pl_s.Unit = 'As';
as_bcbsmin_pl_s.InitialValue = '';
as_bcbsmin_pl_s.Min = 0;
as_bcbsmin_pl_s.Max = 360000;
as_bcbsmin_pl_s.Dimensions = [1 1];
as_bcbsmin_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

as_bcbsmin_pl_s_Min = 0;
as_bcbsmin_pl_s_Max = 360000;

%変数:iwboxcdf_pl_s(電池BOX冷却能力フィルタ値(PLCT用))
iwboxcdf_pl_s			= ASAP2.Signal;
iwboxcdf_pl_s.Description = '電池BOX冷却能力フィルタ値(PLCT用)';
iwboxcdf_pl_s.DataType = 'TSB_Pwr_float';
iwboxcdf_pl_s.Unit = 'W';
iwboxcdf_pl_s.InitialValue = '';
iwboxcdf_pl_s.Min = 0;
iwboxcdf_pl_s.Max = 100;
iwboxcdf_pl_s.Dimensions = [1 1];
iwboxcdf_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

iwboxcdf_pl_s_Min = 0;
iwboxcdf_pl_s_Max = 100;

%変数:i_bat_10m_pl_s(高圧バッテリ電流センサ10MS値（PLCT用）)
i_bat_10m_pl_s			= ASAP2.Signal;
i_bat_10m_pl_s.Description = '高圧バッテリ電流センサ10MS値（PLCT用）';
i_bat_10m_pl_s.DataType = 'TSB_Dc_float';
i_bat_10m_pl_s.Unit = 'A';
i_bat_10m_pl_s.InitialValue = '';
i_bat_10m_pl_s.Min = -1000;
i_bat_10m_pl_s.Max = 1000;
i_bat_10m_pl_s.Dimensions = [1 1];
i_bat_10m_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

i_bat_10m_pl_s_Min = -1000;
i_bat_10m_pl_s_Max = 1000;

%変数:krcadj_pl_s(IV特性による補正係数(充電側))
krcadj_pl_s			= ASAP2.Signal;
krcadj_pl_s.Description = 'IV特性による補正係数(充電側)';
krcadj_pl_s.DataType = 'TSB_value_float';
krcadj_pl_s.Unit = '';
krcadj_pl_s.InitialValue = '';
krcadj_pl_s.Min = -100;
krcadj_pl_s.Max = 100;
krcadj_pl_s.Dimensions = [1 1];
krcadj_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

krcadj_pl_s_Min = -100;
krcadj_pl_s_Max = 100;

%変数:krdadj_pl_s(IV特性による補正係数(放電側))
krdadj_pl_s			= ASAP2.Signal;
krdadj_pl_s.Description = 'IV特性による補正係数(放電側)';
krdadj_pl_s.DataType = 'TSB_value_float';
krdadj_pl_s.Unit = '';
krdadj_pl_s.InitialValue = '';
krdadj_pl_s.Min = -100;
krdadj_pl_s.Max = 100;
krdadj_pl_s.Dimensions = [1 1];
krdadj_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

krdadj_pl_s_Min = -100;
krdadj_pl_s_Max = 100;

%変数:r_estc_ini_s(高圧バッテリ充電抵抗推定値初期値)
r_estc_ini_s			= ASAP2.Signal;
r_estc_ini_s.Description = '高圧バッテリ充電抵抗推定値初期値';
r_estc_ini_s.DataType = 'TSB_R_float';
r_estc_ini_s.Unit = 'Ω';
r_estc_ini_s.InitialValue = '';
r_estc_ini_s.Min = 0;
r_estc_ini_s.Max = 0.2;
r_estc_ini_s.Dimensions = [1 1];
r_estc_ini_s.CoderInfo.StorageClass = 'ExportedGlobal';

r_estc_ini_s_Min = 0;
r_estc_ini_s_Max = 0.2;

%変数:r_estd_ini_s(高圧バッテリ放電抵抗推定値初期値)
r_estd_ini_s			= ASAP2.Signal;
r_estd_ini_s.Description = '高圧バッテリ放電抵抗推定値初期値';
r_estd_ini_s.DataType = 'TSB_R_float';
r_estd_ini_s.Unit = 'Ω';
r_estd_ini_s.InitialValue = '';
r_estd_ini_s.Min = 0;
r_estd_ini_s.Max = 0.2;
r_estd_ini_s.Dimensions = [1 1];
r_estd_ini_s.CoderInfo.StorageClass = 'ExportedGlobal';

r_estd_ini_s_Min = 0;
r_estd_ini_s_Max = 0.2;

%変数:t_bmax_pl_s(高圧バッテリセル温度最大値（PLCT用）)
t_bmax_pl_s			= ASAP2.Signal;
t_bmax_pl_s.Description = '高圧バッテリセル温度最大値（PLCT用）';
t_bmax_pl_s.DataType = 'TSB_Tbatt_float';
t_bmax_pl_s.Unit = 'degC';
t_bmax_pl_s.InitialValue = '';
t_bmax_pl_s.Min = -100;
t_bmax_pl_s.Max = 100;
t_bmax_pl_s.Dimensions = [1 1];
t_bmax_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

t_bmax_pl_s_Min = -100;
t_bmax_pl_s_Max = 100;

%変数:t_bmin_pl_s(高圧バッテリセル温度最小値（PLCT用）)
t_bmin_pl_s			= ASAP2.Signal;
t_bmin_pl_s.Description = '高圧バッテリセル温度最小値（PLCT用）';
t_bmin_pl_s.DataType = 'TSB_Tbatt_float';
t_bmin_pl_s.Unit = 'degC';
t_bmin_pl_s.InitialValue = '';
t_bmin_pl_s.Min = -100;
t_bmin_pl_s.Max = 100;
t_bmin_pl_s.Dimensions = [1 1];
t_bmin_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

t_bmin_pl_s_Min = -100;
t_bmin_pl_s_Max = 100;

%変数:v_bcocvmax_pl_s(高圧バッテリセルOCV最大値（PLCT用）)
v_bcocvmax_pl_s			= ASAP2.Signal;
v_bcocvmax_pl_s.Description = '高圧バッテリセルOCV最大値（PLCT用）';
v_bcocvmax_pl_s.DataType = 'TSB_Volt_float';
v_bcocvmax_pl_s.Unit = 'V';
v_bcocvmax_pl_s.InitialValue = '';
v_bcocvmax_pl_s.Min = -10;
v_bcocvmax_pl_s.Max = 10;
v_bcocvmax_pl_s.Dimensions = [1 1];
v_bcocvmax_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

v_bcocvmax_pl_s_Min = -10;
v_bcocvmax_pl_s_Max = 10;

%変数:v_bcocvmin_pl_s(高圧バッテリセルOCV最小値（PLCT用）)
v_bcocvmin_pl_s			= ASAP2.Signal;
v_bcocvmin_pl_s.Description = '高圧バッテリセルOCV最小値（PLCT用）';
v_bcocvmin_pl_s.DataType = 'TSB_Volt_float';
v_bcocvmin_pl_s.Unit = 'V';
v_bcocvmin_pl_s.InitialValue = '';
v_bcocvmin_pl_s.Min = -10;
v_bcocvmin_pl_s.Max = 10;
v_bcocvmin_pl_s.Dimensions = [1 1];
v_bcocvmin_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

v_bcocvmin_pl_s_Min = -10;
v_bcocvmin_pl_s_Max = 10;

%変数:v_bc_pl_s(高圧バッテリセル電圧（PLCT用）)
v_bc_pl_s			= ASAP2.Signal;
v_bc_pl_s.Description = '高圧バッテリセル電圧（PLCT用）';
v_bc_pl_s.DataType = 'TSB_Volt_float';
v_bc_pl_s.Unit = 'V';
v_bc_pl_s.InitialValue = '';
v_bc_pl_s.Min = -10;
v_bc_pl_s.Max = 10;
v_bc_pl_s.Dimensions = [1 14];
v_bc_pl_s.CoderInfo.StorageClass = 'ExportedGlobal';

v_bc_pl_s_Min = -10;
v_bc_pl_s_Max = 10;


