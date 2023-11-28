/****** Object:  Table [dbo].[S5ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S5ConditionStd](
	[ProductCode] [nvarchar](30) NULL,
	[MainSupplySteamPressureSC] [bit] NULL,
	[MainSupplySteamPressureSet] [decimal](18, 3) NULL,
	[MainSupplySteamPressureSetErr] [decimal](18, 3) NULL,
	[MainSupplySteamPressureSpec] [decimal](18, 3) NULL,
	[MainSupplySteamPressureSpecErr] [decimal](18, 3) NULL,
	[AgeingSteamPressureSC] [bit] NULL,
	[AgeingSteamPressureSet] [decimal](18, 3) NULL,
	[AgeingSteamPressureSetErr] [decimal](18, 3) NULL,
	[AgeingSteamPressureSpec] [decimal](18, 3) NULL,
	[AgeingSteamPressureSpecErr] [decimal](18, 3) NULL,
	[SettingTemperatureSC] [bit] NULL,
	[SettingTemperatureSet] [decimal](18, 3) NULL,
	[SettingTemperatureSetErr] [decimal](18, 3) NULL,
	[SettingTemperatureSpec] [decimal](18, 3) NULL,
	[SettingTemperatureSpecErr] [decimal](18, 3) NULL,
	[SettingTimeSC] [bit] NULL,
	[SettingTimeSet] [decimal](18, 3) NULL,
	[SettingTimeSetErr] [decimal](18, 3) NULL,
	[SettingTimeSpec] [decimal](18, 3) NULL,
	[SettingTimeSpecErr] [decimal](18, 3) NULL,
	[LampStatusSystemSC] [bit] NULL,
	[LampStatusSystemSet] [nvarchar](100) NULL,
	[LampStatusSystemSpec] [nvarchar](100) NULL,
	[SoudSystemTemperatureSC] [bit] NULL,
	[SoudSystemTemperatureSet] [nvarchar](100) NULL,
	[SoudSystemTemperatureSpec] [nvarchar](100) NULL,
	[YarnTypeSC] [bit] NULL,
	[YarnTypeSet] [nvarchar](100) NULL,
	[YarnTypeSpec] [nvarchar](100) NULL,
	[CordStructureSC] [bit] NULL,
	[CordStructureSet] [nvarchar](100) NULL,
	[CordStructureSpec] [nvarchar](100) NULL,
	[TwistingNoSC] [bit] NULL,
	[TwistingNoSet] [decimal](18, 3) NULL,
	[TwistingNoSetErr] [decimal](18, 3) NULL,
	[TwistingNoSpec] [decimal](18, 3) NULL,
	[TwistingNoSpecErr] [decimal](18, 3) NULL,
	[UnitWeightSC] [bit] NULL,
	[UnitWeightSet] [decimal](18, 3) NULL,
	[UnitWeightSetErr] [decimal](18, 3) NULL,
	[UnitWeightSpec] [decimal](18, 3) NULL,
	[UnitWeightSpecErr] [decimal](18, 3) NULL
) ON [PRIMARY]

GO
