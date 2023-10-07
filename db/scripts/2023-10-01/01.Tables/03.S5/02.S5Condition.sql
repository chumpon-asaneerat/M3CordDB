/****** Object:  Table [dbo].[S5Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S5Condition](
	[ProductCode] [nvarchar](30) NULL,
	[MainSupplySteamPressureSC] [bit] NULL,
	[MainSupplySteamPressureSet] [decimal](18, 3) NULL,
	[MainSupplySteamPressureSetErr] [decimal](18, 3) NULL,
	[MainSupplySteamPressureSetActual] [decimal](18, 3) NULL,
	[MainSupplySteamPressureSpec] [decimal](18, 3) NULL,
	[MainSupplySteamPressureSpecErr] [decimal](18, 3) NULL,
	[MainSupplySteamPressureSpecActual] [decimal](18, 3) NULL,
	[AgeingSteamPressureSC] [bit] NULL,
	[AgeingSteamPressureSet] [decimal](18, 3) NULL,
	[AgeingSteamPressureSetErr] [decimal](18, 3) NULL,
	[AgeingSteamPressureSetActual] [decimal](18, 3) NULL,
	[AgeingSteamPressureSpec] [decimal](18, 3) NULL,
	[AgeingSteamPressureSpecErr] [decimal](18, 3) NULL,
	[AgeingSteamPressureActual] [decimal](18, 3) NULL,
	[SettingTemperatureSC] [bit] NULL,
	[SettingTemperatureSet] [decimal](18, 3) NULL,
	[SettingTemperatureSetErr] [decimal](18, 3) NULL,
	[SettingTemperatureSetActual] [decimal](18, 3) NULL,
	[SettingTemperatureSpec] [decimal](18, 3) NULL,
	[SettingTemperatureSpecErr] [decimal](18, 3) NULL,
	[SettingTemperatureSpecActual] [decimal](18, 3) NULL,
	[SettingTimeSC] [bit] NULL,
	[SettingTimeSet] [decimal](18, 3) NULL,
	[SettingTimeSetErr] [decimal](18, 3) NULL,
	[SettingTimeSetActual] [decimal](18, 3) NULL,
	[SettingTimeSpec] [decimal](18, 3) NULL,
	[SettingTimeSpecErr] [decimal](18, 3) NULL,
	[SettingTimeSpecActual] [decimal](18, 3) NULL,
	[LampStatusSystemSC] [bit] NULL,
	[LampStatusSystemSet] [nvarchar](100) NULL,
	[LampStatusSystemSetActual] [bit] NULL,
	[LampStatusSystemSpec] [nvarchar](100) NULL,
	[LampStatusSystemSpecActual] [bit] NULL,
	[SoudSystemTemperatureSC] [bit] NULL,
	[SoudSystemTemperatureSet] [nvarchar](100) NULL,
	[SoudSystemTemperatureSetActual] [bit] NULL,
	[SoudSystemTemperatureSpec] [nvarchar](100) NULL,
	[SoudSystemTemperatureSpecActual] [bit] NULL,
	[YarnTypeSC] [bit] NULL,
	[YarnTypeSet] [nvarchar](100) NULL,
	[YarnTypeSetActual] [nvarchar](100) NULL,
	[YarnTypeSpec] [nvarchar](100) NULL,
	[YarnTypeSpecActual] [nvarchar](100) NULL,
	[CordStructureSC] [bit] NULL,
	[CordStructureSet] [nvarchar](100) NULL,
	[CordStructureSetActual] [nvarchar](100) NULL,
	[CordStructureSpec] [nvarchar](100) NULL,
	[CordStructureSpecActual] [nvarchar](100) NULL,
	[TwistingNoSC] [bit] NULL,
	[TwistingNoSet] [decimal](18, 3) NULL,
	[TwistingNoSetErr] [decimal](18, 3) NULL,
	[TwistingNoSetActual] [decimal](18, 3) NULL,
	[TwistingNoSpec] [decimal](18, 3) NULL,
	[TwistingNoSpecErr] [decimal](18, 3) NULL,
	[TwistingNoSpecActual] [decimal](18, 3) NULL,
	[UnitWeightSC] [bit] NULL,
	[UnitWeightSet] [decimal](18, 3) NULL,
	[UnitWeightSetErr] [decimal](18, 3) NULL,
	[UnitWeightSetActual] [decimal](18, 3) NULL,
	[UnitWeightSpec] [decimal](18, 3) NULL,
	[UnitWeightSpecErr] [decimal](18, 3) NULL,
	[UnitWeightSpecActual] [decimal](18, 3) NULL,
	[StartingTimeSC] [bit] NULL,
	[StartingTimeSettingTime] [datetime] NULL,
	[StartingTimeStartAgeingTime] [datetime] NULL,
	[FinishTimeSC] [bit] NULL,
	[FinishTime] [datetime] NULL,
	[OutTimeSC] [bit] NULL,
	[OutTime] [datetime] NULL,
	[DoffNo1SC] [bit] NULL,
	[DoffNo1MCNo] [nvarchar](50) NULL,
	[DoffNo1Doff] [nvarchar](50) NULL,
	[DoffNo1Qty] [nvarchar](50) NULL,
	[DoffNo2SC] [bit] NULL,
	[DoffNo2MCNo] [nvarchar](50) NULL,
	[DoffNo2Doff] [nvarchar](50) NULL,
	[DoffNo2Qty] [nvarchar](50) NULL
) ON [PRIMARY]

GO
