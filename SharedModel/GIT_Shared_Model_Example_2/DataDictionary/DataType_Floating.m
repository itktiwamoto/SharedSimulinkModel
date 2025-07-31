
%% Data Type 定義
%Data Type:T_uint32(符号なし32bit)
T_uint32			= Simulink.NumericType;
T_uint32.Description = '符号なし32bit';
T_uint32.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_uint32.Signedness = 'Unsigned';
T_uint32.WordLength = 32;
T_uint32.Slope = 1;
T_uint32.Bias = 0;
T_uint32.IsAlias = true;
T_uint32.DataScope = 'Auto';
T_uint32.HeaderFile = '';

%Data Type:T_uint16(符号なし16bit)
T_uint16			= Simulink.NumericType;
T_uint16.Description = '符号なし16bit';
T_uint16.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_uint16.Signedness = 'Unsigned';
T_uint16.WordLength = 16;
T_uint16.Slope = 1;
T_uint16.Bias = 0;
T_uint16.IsAlias = true;
T_uint16.DataScope = 'Auto';
T_uint16.HeaderFile = '';

%Data Type:T_uint8(符号なし8bit)
T_uint8			= Simulink.NumericType;
T_uint8.Description = '符号なし8bit';
T_uint8.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_uint8.Signedness = 'Unsigned';
T_uint8.WordLength = 8;
T_uint8.Slope = 1;
T_uint8.Bias = 0;
T_uint8.IsAlias = true;
T_uint8.DataScope = 'Auto';
T_uint8.HeaderFile = '';

%Data Type:T_int32(符号付き32bit)
T_int32			= Simulink.NumericType;
T_int32.Description = '符号付き32bit';
T_int32.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_int32.Signedness = 'Signed';
T_int32.WordLength = 32;
T_int32.Slope = 1;
T_int32.Bias = 0;
T_int32.IsAlias = true;
T_int32.DataScope = 'Auto';
T_int32.HeaderFile = '';

%Data Type:T_int16(符号付き16bit)
T_int16			= Simulink.NumericType;
T_int16.Description = '符号付き16bit';
T_int16.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_int16.Signedness = 'Signed';
T_int16.WordLength = 16;
T_int16.Slope = 1;
T_int16.Bias = 0;
T_int16.IsAlias = true;
T_int16.DataScope = 'Auto';
T_int16.HeaderFile = '';

%Data Type:T_int8(符号付き8bit)
T_int8			= Simulink.NumericType;
T_int8.Description = '符号付き8bit';
T_int8.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_int8.Signedness = 'Signed';
T_int8.WordLength = 8;
T_int8.Slope = 1;
T_int8.Bias = 0;
T_int8.IsAlias = true;
T_int8.DataScope = 'Auto';
T_int8.HeaderFile = '';

%Data Type:T_boolean(ブール)
T_boolean			= Simulink.NumericType;
T_boolean.Description = 'ブール';
T_boolean.DataTypeMode = 'Boolean';
T_boolean.IsAlias = true;
T_boolean.DataScope = 'Auto';
T_boolean.HeaderFile = '';

%Data Type:T_Flg(フラグのDataType)
T_Flg			= Simulink.NumericType;
T_Flg.Description = 'フラグのDataType';
T_Flg.DataTypeMode = 'Boolean';
T_Flg.IsAlias = true;
T_Flg.DataScope = 'Auto';
T_Flg.HeaderFile = '';

%Data Type:TUB_Dt(サンプリング周期（処理実行周期）のDataType(Unsigned))
TUB_Dt			= Simulink.NumericType;
TUB_Dt.Description = 'サンプリング周期（処理実行周期）のDataType(Unsigned)';
TUB_Dt.DataTypeMode = 'Fixed-point: binary point scaling';
TUB_Dt.Signedness = 'Unsigned';
TUB_Dt.WordLength = 32;
TUB_Dt.FractionLength = 4;
TUB_Dt.IsAlias = true;
TUB_Dt.DataScope = 'Auto';
TUB_Dt.HeaderFile = '';

%Data Type:TSB_IChrg(充電電流指示値のDataType)
TSB_IChrg			= Simulink.NumericType;
TSB_IChrg.Description = '充電電流指示値のDataType';
TSB_IChrg.DataTypeMode = 'Single';
TSB_IChrg.IsAlias = true;
TSB_IChrg.DataScope = 'Auto';
TSB_IChrg.HeaderFile = '';

%Data Type:TSE_PwrHVBatt(PwrHVBattActのDataType)
TSE_PwrHVBatt			= Simulink.NumericType;
TSE_PwrHVBatt.Description = 'PwrHVBattActのDataType';
TSE_PwrHVBatt.DataTypeMode = 'Single';
TSE_PwrHVBatt.IsAlias = true;
TSE_PwrHVBatt.DataScope = 'Auto';
TSE_PwrHVBatt.HeaderFile = '';

%Data Type:TSB_UHVBatt(UHVBattのDataType)
TSB_UHVBatt			= Simulink.NumericType;
TSB_UHVBatt.Description = 'UHVBattのDataType';
TSB_UHVBatt.DataTypeMode = 'Single';
TSB_UHVBatt.IsAlias = true;
TSB_UHVBatt.DataScope = 'Auto';
TSB_UHVBatt.HeaderFile = '';

%Data Type:TSB_THVBatt(THVBattCellMaxのDataType)
TSB_THVBatt			= Simulink.NumericType;
TSB_THVBatt.Description = 'THVBattCellMaxのDataType';
TSB_THVBatt.DataTypeMode = 'Single';
TSB_THVBatt.IsAlias = true;
TSB_THVBatt.DataScope = 'Auto';
TSB_THVBatt.HeaderFile = '';

%Data Type:TUB_Soc(SOCのDataType Unsigned)
TUB_Soc			= Simulink.NumericType;
TUB_Soc.Description = 'SOCのDataType Unsigned';
TUB_Soc.DataTypeMode = 'Single';
TUB_Soc.IsAlias = true;
TUB_Soc.DataScope = 'Auto';
TUB_Soc.HeaderFile = '';

%Data Type:TUB_ILmtChrgOutp(充電器最大出力可能電流値のDataType)
TUB_ILmtChrgOutp			= Simulink.NumericType;
TUB_ILmtChrgOutp.Description = '充電器最大出力可能電流値のDataType';
TUB_ILmtChrgOutp.DataTypeMode = 'Single';
TUB_ILmtChrgOutp.IsAlias = true;
TUB_ILmtChrgOutp.DataScope = 'Auto';
TUB_ILmtChrgOutp.HeaderFile = '';

%Data Type:TSB_ILmtBattOutp(バッテリー最大出力可能電流値のDataType)
TSB_ILmtBattOutp			= Simulink.NumericType;
TSB_ILmtBattOutp.Description = 'バッテリー最大出力可能電流値のDataType';
TSB_ILmtBattOutp.DataTypeMode = 'Single';
TSB_ILmtBattOutp.IsAlias = true;
TSB_ILmtBattOutp.DataScope = 'Auto';
TSB_ILmtBattOutp.HeaderFile = '';

%Data Type:TUB_TimMaxChrg(最大充電時間)
TUB_TimMaxChrg			= Simulink.NumericType;
TUB_TimMaxChrg.Description = '最大充電時間';
TUB_TimMaxChrg.DataTypeMode = 'Single';
TUB_TimMaxChrg.IsAlias = true;
TUB_TimMaxChrg.DataScope = 'Auto';
TUB_TimMaxChrg.HeaderFile = '';

%Data Type:TSB_ULimChrg(UTarChrg_CのDataType)
TSB_ULimChrg			= Simulink.NumericType;
TSB_ULimChrg.Description = 'UTarChrg_CのDataType';
TSB_ULimChrg.DataTypeMode = 'Single';
TSB_ULimChrg.IsAlias = true;
TSB_ULimChrg.DataScope = 'Auto';
TSB_ULimChrg.HeaderFile = '';

%Data Type:TSB_UTarChrg(UTarChrg_CのDataType)
TSB_UTarChrg			= Simulink.NumericType;
TSB_UTarChrg.Description = 'UTarChrg_CのDataType';
TSB_UTarChrg.DataTypeMode = 'Single';
TSB_UTarChrg.IsAlias = true;
TSB_UTarChrg.DataScope = 'Auto';
TSB_UTarChrg.HeaderFile = '';

%Data Type:TSB_UHVBattCell(UHVBattCellのDatatype)
TSB_UHVBattCell			= Simulink.NumericType;
TSB_UHVBattCell.Description = 'UHVBattCellのDatatype';
TSB_UHVBattCell.DataTypeMode = 'Single';
TSB_UHVBattCell.IsAlias = true;
TSB_UHVBattCell.DataScope = 'Auto';
TSB_UHVBattCell.HeaderFile = '';

%Data Type:TUB_U(電圧のDataType Unsigned)
TUB_U			= Simulink.NumericType;
TUB_U.Description = '電圧のDataType Unsigned';
TUB_U.DataTypeMode = 'Single';
TUB_U.IsAlias = true;
TUB_U.DataScope = 'Auto';
TUB_U.HeaderFile = '';

%Data Type:TSB_U(電圧のDataType Signed)
TSB_U			= Simulink.NumericType;
TSB_U.Description = '電圧のDataType Signed';
TSB_U.DataTypeMode = 'Single';
TSB_U.IsAlias = true;
TSB_U.DataScope = 'Auto';
TSB_U.HeaderFile = '';

%Data Type:TUB_SCSOCTR(制御SOC)
TUB_SCSOCTR			= Simulink.NumericType;
TUB_SCSOCTR.Description = '制御SOC';
TUB_SCSOCTR.DataTypeMode = 'Single';
TUB_SCSOCTR.IsAlias = true;
TUB_SCSOCTR.DataScope = 'Auto';
TUB_SCSOCTR.HeaderFile = '';

%Data Type:TUB_RATE_CHRGING(充電率)
TUB_RATE_CHRGING			= Simulink.NumericType;
TUB_RATE_CHRGING.Description = '充電率';
TUB_RATE_CHRGING.DataTypeMode = 'Single';
TUB_RATE_CHRGING.IsAlias = true;
TUB_RATE_CHRGING.DataScope = 'Auto';
TUB_RATE_CHRGING.HeaderFile = '';

%Data Type:TUB_St(充電ステータスのDataType(Unsigned))
TUB_St			= Simulink.NumericType;
TUB_St.Description = '充電ステータスのDataType(Unsigned)';
TUB_St.DataTypeMode = 'Single';
TUB_St.IsAlias = true;
TUB_St.DataScope = 'Auto';
TUB_St.HeaderFile = '';

%Data Type:TSE_PwrHVBatt10(PwrHVBattActのDataType)
TSE_PwrHVBatt10			= Simulink.NumericType;
TSE_PwrHVBatt10.Description = 'PwrHVBattActのDataType';
TSE_PwrHVBatt10.DataTypeMode = 'Single';
TSE_PwrHVBatt10.IsAlias = true;
TSE_PwrHVBatt10.DataScope = 'Auto';
TSE_PwrHVBatt10.HeaderFile = '';

%Data Type:TSB_Soc(SOCのDataType Unsigned)
TSB_Soc			= Simulink.NumericType;
TSB_Soc.Description = 'SOCのDataType Unsigned';
TSB_Soc.DataTypeMode = 'Single';
TSB_Soc.IsAlias = true;
TSB_Soc.DataScope = 'Auto';
TSB_Soc.HeaderFile = '';

%Data Type:TUB_U001(電圧のDataType Unsigned)
TUB_U001			= Simulink.NumericType;
TUB_U001.Description = '電圧のDataType Unsigned';
TUB_U001.DataTypeMode = 'Single';
TUB_U001.IsAlias = true;
TUB_U001.DataScope = 'Auto';
TUB_U001.HeaderFile = '';

%Data Type:TSB_T01(温度のDataType Unsigned)
TSB_T01			= Simulink.NumericType;
TSB_T01.Description = '温度のDataType Unsigned';
TSB_T01.DataTypeMode = 'Single';
TSB_T01.IsAlias = true;
TSB_T01.DataScope = 'Auto';
TSB_T01.HeaderFile = '';

%Data Type:T_Iuint16(符号なし16bitスロープ0.1)
T_Iuint16			= Simulink.NumericType;
T_Iuint16.Description = '符号なし16bitスロープ0.1';
T_Iuint16.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_Iuint16.Signedness = 'Unsigned';
T_Iuint16.WordLength = 16;
T_Iuint16.Slope = 0.1;
T_Iuint16.Bias = 0;
T_Iuint16.IsAlias = true;
T_Iuint16.DataScope = 'Auto';
T_Iuint16.HeaderFile = '';

%Data Type:CHG_V(充電電圧のDataType Unsigned)
CHG_V			= Simulink.NumericType;
CHG_V.Description = '充電電圧のDataType Unsigned';
CHG_V.DataTypeMode = 'Single';
CHG_V.IsAlias = true;
CHG_V.DataScope = 'Auto';
CHG_V.HeaderFile = '';

%Data Type:TUB_UTarChrg(UTarChrg_CのDataType)
TUB_UTarChrg			= Simulink.NumericType;
TUB_UTarChrg.Description = 'UTarChrg_CのDataType';
TUB_UTarChrg.DataTypeMode = 'Single';
TUB_UTarChrg.IsAlias = true;
TUB_UTarChrg.DataScope = 'Auto';
TUB_UTarChrg.HeaderFile = '';

%Data Type:T_Vuint16(符号なし16bitスロープ0.1)
T_Vuint16			= Simulink.NumericType;
T_Vuint16.Description = '符号なし16bitスロープ0.1';
T_Vuint16.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_Vuint16.Signedness = 'Unsigned';
T_Vuint16.WordLength = 16;
T_Vuint16.Slope = 0.1;
T_Vuint16.Bias = 0;
T_Vuint16.IsAlias = true;
T_Vuint16.DataScope = 'Auto';
T_Vuint16.HeaderFile = '';

%Data Type:TUB_S32(電圧のDataType signed32)
TUB_S32			= Simulink.NumericType;
TUB_S32.Description = '電圧のDataType signed32';
TUB_S32.DataTypeMode = 'Fixed-point: slope and bias scaling';
TUB_S32.Signedness = 'Signed';
TUB_S32.WordLength = 32;
TUB_S32.Slope = 0.05;
TUB_S32.Bias = 0;
TUB_S32.IsAlias = true;
TUB_S32.DataScope = 'Auto';
TUB_S32.HeaderFile = '';

%Data Type:T_Iint32(符号あり32bitスロープ0.1)
T_Iint32			= Simulink.NumericType;
T_Iint32.Description = '符号あり32bitスロープ0.1';
T_Iint32.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_Iint32.Signedness = 'Signed';
T_Iint32.WordLength = 32;
T_Iint32.Slope = 0.1;
T_Iint32.Bias = 0;
T_Iint32.IsAlias = true;
T_Iint32.DataScope = 'Auto';
T_Iint32.HeaderFile = '';

%Data Type:U_CHGV(電圧のdataType)
U_CHGV			= Simulink.NumericType;
U_CHGV.Description = '電圧のdataType';
U_CHGV.DataTypeMode = 'Fixed-point: slope and bias scaling';
U_CHGV.Signedness = 'Unsigned';
U_CHGV.WordLength = 16;
U_CHGV.Slope = 0.1;
U_CHGV.Bias = 0;
U_CHGV.IsAlias = true;
U_CHGV.DataScope = 'Auto';
U_CHGV.HeaderFile = '';

%Data Type:U_CHGV32(電圧32のdataType)
U_CHGV32			= Simulink.NumericType;
U_CHGV32.Description = '電圧32のdataType';
U_CHGV32.DataTypeMode = 'Fixed-point: slope and bias scaling';
U_CHGV32.Signedness = 'Signed';
U_CHGV32.WordLength = 32;
U_CHGV32.Slope = 0.1;
U_CHGV32.Bias = 0;
U_CHGV32.IsAlias = true;
U_CHGV32.DataScope = 'Auto';
U_CHGV32.HeaderFile = '';

%Data Type:TSB_U005(電圧のDataType Unsigned)
TSB_U005			= Simulink.NumericType;
TSB_U005.Description = '電圧のDataType Unsigned';
TSB_U005.DataTypeMode = 'Single';
TSB_U005.IsAlias = true;
TSB_U005.DataScope = 'Auto';
TSB_U005.HeaderFile = '';

%Data Type:T_int16_01(符号付き16bit LSB0.1)
T_int16_01			= Simulink.NumericType;
T_int16_01.Description = '符号付き16bit LSB0.1';
T_int16_01.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_int16_01.Signedness = 'Signed';
T_int16_01.WordLength = 16;
T_int16_01.Slope = 0.1;
T_int16_01.Bias = 0;
T_int16_01.IsAlias = true;
T_int16_01.DataScope = 'Auto';
T_int16_01.HeaderFile = '';

%Data Type:T_int32_01(符号付き32bit LSB0.1)
T_int32_01			= Simulink.NumericType;
T_int32_01.Description = '符号付き32bit LSB0.1';
T_int32_01.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_int32_01.Signedness = 'Signed';
T_int32_01.WordLength = 32;
T_int32_01.Slope = 0.1;
T_int32_01.Bias = 0;
T_int32_01.IsAlias = true;
T_int32_01.DataScope = 'Auto';
T_int32_01.HeaderFile = '';

%Data Type:TSB_Int16_001(符号付き16bit LSB0.01)
TSB_Int16_001			= Simulink.NumericType;
TSB_Int16_001.Description = '符号付き16bit LSB0.01';
TSB_Int16_001.DataTypeMode = 'Fixed-point: slope and bias scaling';
TSB_Int16_001.Signedness = 'Signed';
TSB_Int16_001.WordLength = 16;
TSB_Int16_001.Slope = 0.01;
TSB_Int16_001.Bias = 0;
TSB_Int16_001.IsAlias = true;
TSB_Int16_001.DataScope = 'Auto';
TSB_Int16_001.HeaderFile = '';

%Data Type:T_Iint16(符号あり16bitスロープ0.05)
T_Iint16			= Simulink.NumericType;
T_Iint16.Description = '符号あり16bitスロープ0.05';
T_Iint16.DataTypeMode = 'Fixed-point: slope and bias scaling';
T_Iint16.Signedness = 'Signed';
T_Iint16.WordLength = 16;
T_Iint16.Slope = 0.05;
T_Iint16.Bias = 0;
T_Iint16.IsAlias = true;
T_Iint16.DataScope = 'Auto';
T_Iint16.HeaderFile = '';

%Data Type:TUB_Gain(制御ゲインのDataType)
TUB_Gain			= Simulink.NumericType;
TUB_Gain.Description = '制御ゲインのDataType';
TUB_Gain.DataTypeMode = 'Single';
TUB_Gain.IsAlias = true;
TUB_Gain.DataScope = 'Auto';
TUB_Gain.HeaderFile = '';

%Data Type:TSB_Pwr(電力（LSB = 10W,単位 = kW）)
TSB_Pwr			= Simulink.NumericType;
TSB_Pwr.Description = '電力（LSB = 10W,単位 = kW）';
TSB_Pwr.DataTypeMode = 'Single';
TSB_Pwr.IsAlias = true;
TSB_Pwr.DataScope = 'Auto';
TSB_Pwr.HeaderFile = '';

%Data Type:TSB_Pwr_001(電力（LSB = 0.01W,単位 = W）)
TSB_Pwr_001			= Simulink.NumericType;
TSB_Pwr_001.Description = '電力（LSB = 0.01W,単位 = W）';
TSB_Pwr_001.DataTypeMode = 'Single';
TSB_Pwr_001.IsAlias = true;
TSB_Pwr_001.DataScope = 'Auto';
TSB_Pwr_001.HeaderFile = '';

%Data Type:TSB_Tbatt(バッテリー温度（LSB = 0.1,単位 = degC）)
TSB_Tbatt			= Simulink.NumericType;
TSB_Tbatt.Description = 'バッテリー温度（LSB = 0.1,単位 = degC）';
TSB_Tbatt.DataTypeMode = 'Single';
TSB_Tbatt.IsAlias = true;
TSB_Tbatt.DataScope = 'Auto';
TSB_Tbatt.HeaderFile = '';

%Data Type:TUB_RlsRat(解放率のデータ型)
TUB_RlsRat			= Simulink.NumericType;
TUB_RlsRat.Description = '解放率のデータ型';
TUB_RlsRat.DataTypeMode = 'Single';
TUB_RlsRat.IsAlias = true;
TUB_RlsRat.DataScope = 'Auto';
TUB_RlsRat.HeaderFile = '';

%Data Type:TSB_Cap(セル容量のData Type)
TSB_Cap			= Simulink.NumericType;
TSB_Cap.Description = 'セル容量のData Type';
TSB_Cap.DataTypeMode = 'Single';
TSB_Cap.IsAlias = true;
TSB_Cap.DataScope = 'Auto';
TSB_Cap.HeaderFile = '';

%Data Type:TSB_int16_2e_12(符号あり16bit LSB2^-12)
TSB_int16_2e_12			= Simulink.NumericType;
TSB_int16_2e_12.Description = '符号あり16bit LSB2^-12';
TSB_int16_2e_12.DataTypeMode = 'Fixed-point: slope and bias scaling';
TSB_int16_2e_12.Signedness = 'Signed';
TSB_int16_2e_12.WordLength = 16;
TSB_int16_2e_12.Slope = 2^-12;
TSB_int16_2e_12.Bias = 0;
TSB_int16_2e_12.IsAlias = true;
TSB_int16_2e_12.DataScope = 'Auto';
TSB_int16_2e_12.HeaderFile = '';

%Data Type:TUB_uint16_2e_16(符号なし16bit LSB2^-16)
TUB_uint16_2e_16			= Simulink.NumericType;
TUB_uint16_2e_16.Description = '符号なし16bit LSB2^-16';
TUB_uint16_2e_16.DataTypeMode = 'Fixed-point: slope and bias scaling';
TUB_uint16_2e_16.Signedness = 'Unsigned';
TUB_uint16_2e_16.WordLength = 16;
TUB_uint16_2e_16.Slope = 2^-16;
TUB_uint16_2e_16.Bias = 0;
TUB_uint16_2e_16.IsAlias = true;
TUB_uint16_2e_16.DataScope = 'Auto';
TUB_uint16_2e_16.HeaderFile = '';

%Data Type:TSB_uint16_2e_18(符号なし16bit LSB2^-18)
TSB_uint16_2e_18			= Simulink.NumericType;
TSB_uint16_2e_18.Description = '符号なし16bit LSB2^-18';
TSB_uint16_2e_18.DataTypeMode = 'Fixed-point: slope and bias scaling';
TSB_uint16_2e_18.Signedness = 'Unsigned';
TSB_uint16_2e_18.WordLength = 16;
TSB_uint16_2e_18.Slope = 2^-18;
TSB_uint16_2e_18.Bias = 0;
TSB_uint16_2e_18.IsAlias = true;
TSB_uint16_2e_18.DataScope = 'Auto';
TSB_uint16_2e_18.HeaderFile = '';

%Data Type:TSB_int32_2e_24(符号あり32bit LSB2^-24)
TSB_int32_2e_24			= Simulink.NumericType;
TSB_int32_2e_24.Description = '符号あり32bit LSB2^-24';
TSB_int32_2e_24.DataTypeMode = 'Fixed-point: slope and bias scaling';
TSB_int32_2e_24.Signedness = 'Signed';
TSB_int32_2e_24.WordLength = 32;
TSB_int32_2e_24.Slope = 2^-24;
TSB_int32_2e_24.Bias = 0;
TSB_int32_2e_24.IsAlias = true;
TSB_int32_2e_24.DataScope = 'Auto';
TSB_int32_2e_24.HeaderFile = '';

%Data Type:TSB_Dc(電流のData Type signed)
TSB_Dc			= Simulink.NumericType;
TSB_Dc.Description = '電流のData Type signed';
TSB_Dc.DataTypeMode = 'Single';
TSB_Dc.IsAlias = true;
TSB_Dc.DataScope = 'Auto';
TSB_Dc.HeaderFile = '';

%Data Type:TSB_Dc_005(電流(LSB = 0.05,単位 = A))
TSB_Dc_005			= Simulink.NumericType;
TSB_Dc_005.Description = '電流(LSB = 0.05,単位 = A)';
TSB_Dc_005.DataTypeMode = 'Single';
TSB_Dc_005.IsAlias = true;
TSB_Dc_005.DataScope = 'Auto';
TSB_Dc_005.HeaderFile = '';

%Data Type:TSB_Volt(電圧(LSB　＝　0.2m,単位 = mV))
TSB_Volt			= Simulink.NumericType;
TSB_Volt.Description = '電圧(LSB　＝　0.2m,単位 = mV)';
TSB_Volt.DataTypeMode = 'Single';
TSB_Volt.IsAlias = true;
TSB_Volt.DataScope = 'Auto';
TSB_Volt.HeaderFile = '';

%Data Type:TSB_Coulomb(電流積算値(LSB = 0.01C, 単位C))
TSB_Coulomb			= Simulink.NumericType;
TSB_Coulomb.Description = '電流積算値(LSB = 0.01C, 単位C)';
TSB_Coulomb.DataTypeMode = 'Single';
TSB_Coulomb.IsAlias = true;
TSB_Coulomb.DataScope = 'Auto';
TSB_Coulomb.HeaderFile = '';

%Data Type:TSB_Dc_float(電流制限値(LSB = 1, 単位 = A))
TSB_Dc_float			= Simulink.NumericType;
TSB_Dc_float.Description = '電流制限値(LSB = 1, 単位 = A)';
TSB_Dc_float.DataTypeMode = 'Single';
TSB_Dc_float.IsAlias = true;
TSB_Dc_float.DataScope = 'Auto';
TSB_Dc_float.HeaderFile = '';

%Data Type:TSB_Volt_float(電圧制限値(LSB = 1, 単位 = V))
TSB_Volt_float			= Simulink.NumericType;
TSB_Volt_float.Description = '電圧制限値(LSB = 1, 単位 = V)';
TSB_Volt_float.DataTypeMode = 'Single';
TSB_Volt_float.IsAlias = true;
TSB_Volt_float.DataScope = 'Auto';
TSB_Volt_float.HeaderFile = '';

%Data Type:TSB_Tbatt_float(温度制限値(LSB = 1, 単位 = ℃))
TSB_Tbatt_float			= Simulink.NumericType;
TSB_Tbatt_float.Description = '温度制限値(LSB = 1, 単位 = ℃)';
TSB_Tbatt_float.DataTypeMode = 'Single';
TSB_Tbatt_float.IsAlias = true;
TSB_Tbatt_float.DataScope = 'Auto';
TSB_Tbatt_float.HeaderFile = '';

%Data Type:TSB_value_float(許容上限値(LSB ＝1, 単位 = -))
TSB_value_float			= Simulink.NumericType;
TSB_value_float.Description = '許容上限値(LSB ＝1, 単位 = -)';
TSB_value_float.DataTypeMode = 'Single';
TSB_value_float.IsAlias = true;
TSB_value_float.DataScope = 'Auto';
TSB_value_float.HeaderFile = '';

%Data Type:TSB_Coulomb_float(容量最小値(LSB = 1, 単位 = Asec))
TSB_Coulomb_float			= Simulink.NumericType;
TSB_Coulomb_float.Description = '容量最小値(LSB = 1, 単位 = Asec)';
TSB_Coulomb_float.DataTypeMode = 'Single';
TSB_Coulomb_float.IsAlias = true;
TSB_Coulomb_float.DataScope = 'Auto';
TSB_Coulomb_float.HeaderFile = '';

%Data Type:TSB_Pwr_float(冷却能力フィルタ値(LSB = 1, 単位 = W))
TSB_Pwr_float			= Simulink.NumericType;
TSB_Pwr_float.Description = '冷却能力フィルタ値(LSB = 1, 単位 = W)';
TSB_Pwr_float.DataTypeMode = 'Single';
TSB_Pwr_float.IsAlias = true;
TSB_Pwr_float.DataScope = 'Auto';
TSB_Pwr_float.HeaderFile = '';

%Data Type:TSB_R_float(推定抵抗値(LSB = 1, 単位 = Ω))
TSB_R_float			= Simulink.NumericType;
TSB_R_float.Description = '推定抵抗値(LSB = 1, 単位 = Ω)';
TSB_R_float.DataTypeMode = 'Single';
TSB_R_float.IsAlias = true;
TSB_R_float.DataScope = 'Auto';
TSB_R_float.HeaderFile = '';


