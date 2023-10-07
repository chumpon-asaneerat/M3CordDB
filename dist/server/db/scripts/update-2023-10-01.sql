/*********** Script Update Date: 2023-10-01  ***********/
/*
DELETE FROM PCTwist1Operation
GO

DELETE FROM Twist1CheckSheet
GO

DELETE FROM Twist1LoadRecordItem
GO

DELETE FROM Twist1LoadRecord
GO

DELETE FROM PCTwist1
GO
*/

/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  Table [dbo].[S1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S1ConditionStd](
	[ProductCode] [nvarchar](10) NULL,
	[RingDiameterSC] [bit] NULL,
	[RingDiameter] [nvarchar](100) NULL,
	[TwistChangeGearSC] [bit] NULL,
	[TwistChangeGearI] [decimal](18, 3) NULL,
	[TwistChangeGearJ] [decimal](18, 3) NULL,
	[TwistChangeGearK] [decimal](18, 3) NULL,
	[LifterChangeGearSC] [bit] NULL,
	[LifterChangeGearA] [decimal](18, 3) NULL,
	[LifterChangeGearB] [decimal](18, 3) NULL,
	[OuterDiameterSC] [bit] NULL,
	[OuterDiameter] [decimal](18, 3) NULL,
	[TravellerNoSC] [bit] NULL,
	[TravellerNo] [nvarchar](100) NULL,
	[CouterUnitSC] [bit] NULL,
	[CouterUnit] [decimal](18, 3) NULL,
	[CouterUnitErr] [decimal](18, 3) NULL,
	[CouterUnit2SC] [bit] NULL,
	[CouterUnit2] [decimal](18, 3) NULL,
	[CouterUnit2Err] [decimal](18, 3) NULL,
	[CouterWeightSC] [bit] NULL,
	[CouterWeight] [decimal](18, 3) NULL,
	[CouterWeightErr] [decimal](18, 3) NULL,
	[CouterWeight2SC] [bit] NULL,
	[CouterWeight2] [decimal](18, 3) NULL,
	[CouterWeight2Err] [decimal](18, 3) NULL,
	[CounterSystemSC] [bit] NULL,
	[CounterSystem] [nvarchar](100) NULL,
	[SenserYarnBreakSC] [bit] NULL,
	[SenserYarnBreak] [nvarchar](100) NULL,
	[CalculatedTwistingNumberSC] [bit] NULL,
	[CalculatedTwistingNumber] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberErr] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationSC] [bit] NULL,
	[NumberOfSpindleRotation] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationErr] [decimal](18, 3) NULL,
	[YarnSpeedSC] [bit] NULL,
	[YarnSpeed] [decimal](18, 3) NULL,
	[YarnSpeedErr] [decimal](18, 3) NULL,
	[SpecialMentionSC] [bit] NULL,
	[SpecialMention] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  Table [dbo].[S1Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S1Condition](
	[ProductCode] [nvarchar](30) NULL,
	[RingDiameterSC] [bit] NULL,
	[RingDiameter] [nvarchar](100) NULL,
	[RingDiameterActual] [nvarchar](100) NULL,
	[TwistChangeGearSC] [bit] NULL,
	[TwistChangeGearI] [decimal](18, 3) NULL,
	[TwistChangeGearIActual] [decimal](18, 3) NULL,
	[TwistChangeGearJ] [decimal](18, 3) NULL,
	[TwistChangeGearJActual] [decimal](18, 3) NULL,
	[TwistChangeGearK] [decimal](18, 3) NULL,
	[TwistChangeGearKActual] [decimal](18, 3) NULL,
	[LifterChangeGearSC] [bit] NULL,
	[LifterChangeGearA] [decimal](18, 3) NULL,
	[LifterChangeGearAActual] [decimal](18, 3) NULL,
	[LifterChangeGearB] [decimal](18, 3) NULL,
	[LifterChangeGearBActual] [decimal](18, 3) NULL,
	[OuterDiameterSC] [bit] NULL,
	[OuterDiameter] [decimal](18, 3) NULL,
	[OuterDiameterActual] [decimal](18, 3) NULL,
	[TravellerNoSC] [bit] NULL,
	[TravellerNo] [nvarchar](100) NULL,
	[TravellerNoActual] [nvarchar](100) NULL,
	[CouterUnitSC] [bit] NULL,
	[CouterUnit] [decimal](18, 3) NULL,
	[CouterUnitErr] [decimal](18, 3) NULL,
	[CouterUnitActual] [decimal](18, 3) NULL,
	[CouterUnit2SC] [bit] NULL,
	[CouterUnit2] [decimal](18, 3) NULL,
	[CouterUnit2Err] [decimal](18, 3) NULL,
	[CouterUnit2Actual] [decimal](18, 3) NULL,
	[CouterWeightSC] [bit] NULL,
	[CouterWeight] [decimal](18, 3) NULL,
	[CouterWeightErr] [decimal](18, 3) NULL,
	[CouterWeightActual] [decimal](18, 3) NULL,
	[CouterWeight2SC] [bit] NULL,
	[CouterWeight2] [decimal](18, 3) NULL,
	[CouterWeight2Actual] [decimal](18, 3) NULL,
	[CouterWeight2Err] [decimal](18, 3) NULL,
	[CounterSystemSC] [bit] NULL,
	[CounterSystem] [nvarchar](100) NULL,
	[CounterSystemActual] [bit] NULL,
	[SenserYarnBreakSC] [bit] NULL,
	[SenserYarnBreak] [nvarchar](100) NULL,
	[SenserYarnBreakActual] [bit] NULL,
	[CalculatedTwistingNumberSC] [bit] NULL,
	[CalculatedTwistingNumber] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberErr] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberActual] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationSC] [bit] NULL,
	[NumberOfSpindleRotation] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationErr] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationActual] [decimal](18, 3) NULL,
	[YarnSpeedSC] [bit] NULL,
	[YarnSpeed] [decimal](18, 3) NULL,
	[YarnSpeedErr] [decimal](18, 3) NULL,
	[YarnSpeedActual] [decimal](18, 3) NULL,
	[SpecialMentionSC] [bit] NULL,
	[SpecialMention] [nvarchar](100) NULL,
	[SpecialMentionActual] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  Table [dbo].[S4x1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S4x1ConditionStd](
	[ProductCode] [nvarchar](30) NULL,
	[TwistChangeGearSC] [bit] NULL,
	[TwistChangeGearE] [decimal](18, 3) NULL,
	[TwistChangeGearF] [decimal](18, 3) NULL,
	[TwistChangeGearG] [decimal](18, 3) NULL,
	[TwistChangeGearH] [decimal](18, 3) NULL,
	[MotorPulleyDiaSC] [bit] NULL,
	[MotorPulleyDia] [decimal](18, 3) NULL,
	[DrivingPulleyDiaSC] [bit] NULL,
	[DrivingPulleyDia] [decimal](18, 3) NULL,
	[OverFeedSC] [bit] NULL,
	[OverFeedRate] [decimal](18, 3) NULL,
	[OverFeedGear] [decimal](18, 3) NULL,
	[WindAngleSC] [bit] NULL,
	[WindAngleDeg] [decimal](18, 3) NULL,
	[WindAngleGearA] [decimal](18, 3) NULL,
	[WindAngleGearB] [decimal](18, 3) NULL,
	[TensorDialSetSC] [bit] NULL,
	[TensorDialSet] [decimal](18, 3) NULL,
	[NumberOfLoopSC] [bit] NULL,
	[NumberOfLoop] [decimal](18, 3) NULL,
	[NumberOfLoopErr] [decimal](18, 3) NULL,
	[MethodOfKnotSC] [bit] NULL,
	[MethodOfKnot] [nvarchar](100) NULL,
	[WindQuantitySC] [bit] NULL,
	[WindQuantity] [decimal](18, 3) NULL,
	[WindQuantityErr] [decimal](18, 3) NULL,
	[LengthSC] [bit] NULL,
	[Length] [decimal](18, 3) NULL,
	[LengthErr] [decimal](18, 3) NULL,
	[DoffTimeSC] [bit] NULL,
	[DoffTime] [decimal](18, 3) NULL,
	[DoffTimeErr] [decimal](18, 3) NULL,
	[ProductQuantitySC] [bit] NULL,
	[ProductQuantityKg] [decimal](18, 3) NULL,
	[ProductQuantityDay] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberSC] [bit] NULL,
	[CalculatedTwistingNumber] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberErr] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationSC] [bit] NULL,
	[NumberOfSpindleRotation] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationErr] [decimal](18, 3) NULL,
	[YarnSpeedSC] [bit] NULL,
	[YarnSpeed] [decimal](18, 3) NULL,
	[YarnSpeedErr] [decimal](18, 3) NULL,
	[SpecialMentionSC] [bit] NULL,
	[SpecialMention] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  Table [dbo].[S4x1Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S4x1Condition](
	[ProductCode] [nvarchar](30) NULL,
	[TwistChangeGearSC] [bit] NULL,
	[TwistChangeGearE] [decimal](18, 3) NULL,
	[TwistChangeGearEActual] [decimal](18, 3) NULL,
	[TwistChangeGearF] [decimal](18, 3) NULL,
	[TwistChangeGearFActual] [decimal](18, 3) NULL,
	[TwistChangeGearG] [decimal](18, 3) NULL,
	[TwistChangeGearGActual] [decimal](18, 3) NULL,
	[TwistChangeGearH] [decimal](18, 3) NULL,
	[TwistChangeGearHActual] [decimal](18, 3) NULL,
	[MotorPulleyDiaSC] [bit] NULL,
	[MotorPulleyDia] [decimal](18, 3) NULL,
	[MotorPulleyDiaActual] [decimal](18, 3) NULL,
	[DrivingPulleyDiaSC] [bit] NULL,
	[DrivingPulleyDia] [decimal](18, 3) NULL,
	[DrivingPulleyDiaActual] [decimal](18, 3) NULL,
	[OverFeedSC] [bit] NULL,
	[OverFeedRate] [decimal](18, 3) NULL,
	[OverFeedRateActual] [decimal](18, 3) NULL,
	[OverFeedGear] [decimal](18, 3) NULL,
	[OverFeedGearActual] [decimal](18, 3) NULL,
	[WindAngleSC] [bit] NULL,
	[WindAngleDeg] [decimal](18, 3) NULL,
	[WindAngleDegActual] [decimal](18, 3) NULL,
	[WindAngleGearA] [decimal](18, 3) NULL,
	[WindAngleGearAActual] [decimal](18, 3) NULL,
	[WindAngleGearB] [decimal](18, 3) NULL,
	[WindAngleGearBActual] [decimal](18, 3) NULL,
	[TensorDialSetSC] [bit] NULL,
	[TensorDialSet] [decimal](18, 3) NULL,
	[TensorDialSetActual] [decimal](18, 3) NULL,
	[NumberOfLoopSC] [bit] NULL,
	[NumberOfLoop] [decimal](18, 3) NULL,
	[NumberOfLoopErr] [decimal](18, 3) NULL,
	[NumberOfLoopActual] [decimal](18, 3) NULL,
	[MethodOfKnotSC] [bit] NULL,
	[MethodOfKnot] [nvarchar](100) NULL,
	[MethodOfKnotActual] [nvarchar](100) NULL,
	[WindQuantitySC] [bit] NULL,
	[WindQuantity] [decimal](18, 3) NULL,
	[WindQuantityErr] [decimal](18, 3) NULL,
	[WindQuantityActual] [decimal](18, 3) NULL,
	[LengthSC] [bit] NULL,
	[Length] [decimal](18, 3) NULL,
	[LengthErr] [decimal](18, 3) NULL,
	[LengthActual] [decimal](18, 3) NULL,
	[DoffTimeSC] [bit] NULL,
	[DoffTime] [decimal](18, 3) NULL,
	[DoffTimeErr] [decimal](18, 3) NULL,
	[DoffTimeActual] [decimal](18, 3) NULL,
	[ProductQuantitySC] [bit] NULL,
	[ProductQuantityKg] [decimal](18, 3) NULL,
	[ProductQuantityKgActual] [decimal](18, 3) NULL,
	[ProductQuantityDay] [decimal](18, 3) NULL,
	[ProductQuantityDayActual] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberSC] [bit] NULL,
	[CalculatedTwistingNumber] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberErr] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberActual] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationSC] [bit] NULL,
	[NumberOfSpindleRotation] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationErr] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationActual] [decimal](18, 3) NULL,
	[YarnSpeedSC] [bit] NULL,
	[YarnSpeed] [decimal](18, 3) NULL,
	[YarnSpeedErr] [decimal](18, 3) NULL,
	[YarnSpeedActual] [decimal](18, 3) NULL,
	[SpecialMentionSC] [bit] NULL,
	[SpecialMention] [nvarchar](100) NULL,
	[SpecialMentionActual] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-01  ***********/
CREATE TABLE [dbo].[S4x2ConditionStd](
	[ProductCode] [nvarchar](30) NULL,
	[FullPackageModeSC] [bit] NULL,
	[FullPackageMode] [nvarchar](100) NULL,
	[LengthSC] [bit] NULL,
	[Length] [decimal](18, 3) NULL,
	[LengthErr] [decimal](18, 3) NULL,
	[WindAngleShiftFunctionSC] [bit] NULL,
	[WindAngleShiftFunction] [nvarchar](100) NULL,
	[AmountOfDisturbSC] [bit] NULL,
	[AmountOfDisturb] [nvarchar](100) NULL,
	[WindAngleSC] [bit] NULL,
	[WindAngle] [decimal](18, 3) NULL,
	[DistuebAccelerationTimeSC] [bit] NULL,
	[DistuebAccelerationTime] [decimal](18, 3) NULL,
	[DistuebDccelerationTimeSC] [bit] NULL,
	[DistuebDccelerationTime] [decimal](18, 3) NULL,
	[TensorSettingSC] [bit] NULL,
	[TensorSetting] [nvarchar](100) NULL,
	[FeedRollerSettingSC] [bit] NULL,
	[FeedRollerSetting] [nvarchar](100) NULL,
	[BollonSettingSC] [bit] NULL,
	[BollonSetting] [nvarchar](100) NULL,
	[MethodOfKnotSC] [bit] NULL,
	[MethodOfKnot] [nvarchar](100) NULL,
	[WindQuantitySC] [bit] NULL,
	[WindQuantity] [decimal](18, 3) NULL,
	[WindQuantityErr] [decimal](18, 3) NULL,
	[DoffTimeSC] [bit] NULL,
	[DoffTime] [decimal](18, 3) NULL,
	[DoffTimeErr] [decimal](18, 3) NULL,
	[ProductQuantitySC] [bit] NULL,
	[ProductQuantityKg] [decimal](18, 3) NULL,
	[ProductQuantityDay] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberSC] [bit] NULL,
	[CalculatedTwistingNumber] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberErr] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationSC] [bit] NULL,
	[NumberOfSpindleRotation] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationErr] [decimal](18, 3) NULL,
	[YarnSpeedSC] [bit] NULL,
	[YarnSpeed] [decimal](18, 3) NULL,
	[YarnSpeedErr] [decimal](18, 3) NULL,
	[SpecialMentionSC] [bit] NULL,
	[SpecialMention] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  Table [dbo].[S4x2Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S4x2Condition](
	[ProductCode] [nvarchar](30) NULL,
	[FullPackageModeSC] [bit] NULL,
	[FullPackageMode] [nvarchar](100) NULL,
	[FullPackageModeActual] [nvarchar](100) NULL,
	[LengthSC] [bit] NULL,
	[Length] [decimal](18, 3) NULL,
	[LengthErr] [decimal](18, 3) NULL,
	[LengthActual] [decimal](18, 3) NULL,
	[WindAngleShiftFunctionSC] [bit] NULL,
	[WindAngleShiftFunction] [nvarchar](100) NULL,
	[WindAngleShiftFunctionActual] [nvarchar](100) NULL,
	[AmountOfDisturbSC] [bit] NULL,
	[AmountOfDisturb] [nvarchar](100) NULL,
	[AmountOfDisturbActual] [nvarchar](100) NULL,
	[WindAngleSC] [bit] NULL,
	[WindAngle] [decimal](18, 3) NULL,
	[WindAngleActual] [decimal](18, 3) NULL,
	[DistuebAccelerationTimeSC] [bit] NULL,
	[DistuebAccelerationTime] [decimal](18, 3) NULL,
	[DistuebAccelerationTimeActual] [decimal](18, 3) NULL,
	[DistuebDccelerationTimeSC] [bit] NULL,
	[DistuebDccelerationTime] [decimal](18, 3) NULL,
	[DistuebDccelerationTimeActual] [decimal](18, 3) NULL,
	[TensorSettingSC] [bit] NULL,
	[TensorSetting] [nvarchar](100) NULL,
	[TensorSettingActual] [nvarchar](100) NULL,
	[FeedRollerSettingSC] [bit] NULL,
	[FeedRollerSetting] [nvarchar](100) NULL,
	[FeedRollerSettingActual] [nvarchar](100) NULL,
	[BollonSettingSC] [bit] NULL,
	[BollonSetting] [nvarchar](100) NULL,
	[BollonSettingActual] [nvarchar](100) NULL,
	[MethodOfKnotSC] [bit] NULL,
	[MethodOfKnot] [nvarchar](100) NULL,
	[MethodOfKnotActual] [nvarchar](100) NULL,
	[WindQuantitySC] [bit] NULL,
	[WindQuantity] [decimal](18, 3) NULL,
	[WindQuantityErr] [decimal](18, 3) NULL,
	[WindQuantityActual] [decimal](18, 3) NULL,
	[DoffTimeSC] [bit] NULL,
	[DoffTime] [decimal](18, 3) NULL,
	[DoffTimeErr] [decimal](18, 3) NULL,
	[DoffTimeActual] [decimal](18, 3) NULL,
	[ProductQuantitySC] [bit] NULL,
	[ProductQuantityKg] [decimal](18, 3) NULL,
	[ProductQuantityKgActual] [decimal](18, 3) NULL,
	[ProductQuantityDay] [decimal](18, 3) NULL,
	[ProductQuantityDayActual] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberSC] [bit] NULL,
	[CalculatedTwistingNumber] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberErr] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberActual] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationSC] [bit] NULL,
	[NumberOfSpindleRotation] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationErr] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationActual] [decimal](18, 3) NULL,
	[YarnSpeedSC] [bit] NULL,
	[YarnSpeed] [decimal](18, 3) NULL,
	[YarnSpeedErr] [decimal](18, 3) NULL,
	[YarnSpeedActual] [decimal](18, 3) NULL,
	[SpecialMentionSC] [bit] NULL,
	[SpecialMention] [nvarchar](100) NULL,
	[SpecialMentionActual] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-01  ***********/
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


/*********** Script Update Date: 2023-10-01  ***********/
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


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  Table [dbo].[CordSamplingDetails]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CordSamplingDetails](
	[TwistYarn] [bit] NULL,
	[CordDipping] [bit] NULL,
	[Rawmaterial] [bit] NULL,
	[SamplingDate] [datetime] NULL,
	[CustomerName] [nvarchar](100) NULL,
	[ProductCode] [nvarchar](30) NULL,
	[CordStructure] [nvarchar](100) NULL,
	[LotNo] [nvarchar](50) NULL,
	[ProductionSituationTwisting] [bit] NULL,
	[ProductionSituationHeatSet] [bit] NULL,
	[ProductionSituationDipCord] [bit] NULL,
	[ProductionSituationJointing] [bit] NULL,
	[StandardOfTwisting] [nvarchar](100) NULL,
	[S1] [bit] NULL,
	[S2] [bit] NULL,
	[S4] [bit] NULL,
	[S8] [bit] NULL,
	[S19] [bit] NULL,
	[Bobbin] [bit] NULL,
	[Cheese] [bit] NULL,
	[TaperBB] [bit] NULL,
	[ContainerOthers] [bit] NULL,
	[SpindleNo] [nvarchar](100) NULL,
	[Quantity] [nvarchar](100) NULL,
	[Polyester] [bit] NULL,
	[Nylon66] [bit] NULL,
	[MaterialOthers] [bit] NULL,
	[YarnType] [nvarchar](100) NULL,
	[Process] [bit] NULL,
	[Product] [bit] NULL,
	[Special] [bit] NULL,
	[Trial] [bit] NULL,
	[Shift] [nvarchar](50) NULL,
	[ShiftName] [nvarchar](100) NULL,
	[Remark] [nvarchar](100) NULL,
	[Direct] [bit] NULL,
	[Relax] [bit] NULL,
	[Relax_k] [nvarchar](50) NULL,
	[Relax_n] [nvarchar](50) NULL,
	[Necessary] [bit] NULL,
	[NotNecessary] [bit] NULL,
	[SpecialMentionJointing] [bit] NULL,
	[SpecialMentionNoJointing] [bit] NULL,
	[TensileR1] [decimal](18, 3) NULL,
	[TensileL1] [decimal](18, 3) NULL,
	[TensileR2] [decimal](18, 3) NULL,
	[TensileL2] [decimal](18, 3) NULL,
	[TensileR3] [decimal](18, 3) NULL,
	[TensileL3] [decimal](18, 3) NULL,
	[TensileR4] [decimal](18, 3) NULL,
	[TensileL4] [decimal](18, 3) NULL,
	[TensileR5] [decimal](18, 3) NULL,
	[TensileL5] [decimal](18, 3) NULL,
	[TensileRSum] [decimal](18, 3) NULL,
	[TensileLSum] [decimal](18, 3) NULL,
	[FirstTwistingR1] [decimal](18, 3) NULL,
	[FirstTwistingL1] [decimal](18, 3) NULL,
	[FirstTwistingR2] [decimal](18, 3) NULL,
	[FirstTwistingL2] [decimal](18, 3) NULL,
	[FirstTwistingR3] [decimal](18, 3) NULL,
	[FirstTwistingL3] [decimal](18, 3) NULL,
	[FirstTwistingR4] [decimal](18, 3) NULL,
	[FirstTwistingL4] [decimal](18, 3) NULL,
	[FirstTwistingR5] [decimal](18, 3) NULL,
	[FirstTwistingL5] [decimal](18, 3) NULL,
	[FirstTwistingRSum] [decimal](18, 3) NULL,
	[FirstTwistingLSum] [decimal](18, 3) NULL,
	[SecondTwistingR1] [decimal](18, 3) NULL,
	[SecondTwistingL1] [decimal](18, 3) NULL,
	[SecondTwistingR2] [decimal](18, 3) NULL,
	[SecondTwistingL2] [decimal](18, 3) NULL,
	[SecondTwistingR3] [decimal](18, 3) NULL,
	[SecondTwistingL3] [decimal](18, 3) NULL,
	[SecondTwistingR4] [decimal](18, 3) NULL,
	[SecondTwistingL4] [decimal](18, 3) NULL,
	[SecondTwistingR5] [decimal](18, 3) NULL,
	[SecondTwistingL5] [decimal](18, 3) NULL,
	[SecondTwistingRSum] [decimal](18, 3) NULL,
	[SecondTwistingLSum] [decimal](18, 3) NULL,
	[Remark1] [nvarchar](100) NULL,
	[Remark2] [nvarchar](100) NULL,
	[Remark3] [nvarchar](100) NULL,
	[Remark4] [nvarchar](100) NULL,
	[Remark5] [nvarchar](100) NULL,
	[RemarkSum] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS1ConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS1ConditionStd] (
  @ProductCode nvarchar(30),
	@RingDiameterSC bit,
	@RingDiameter nvarchar(100),
	@TwistChangeGearSC bit,
	@TwistChangeGearI decimal(18, 3),
	@TwistChangeGearJ decimal(18, 3),
	@TwistChangeGearK decimal(18, 3),
	@LifterChangeGearSC bit,
	@LifterChangeGearA decimal(18, 3),
	@LifterChangeGearB decimal(18, 3),
	@OuterDiameterSC bit,
	@OuterDiameter decimal(18, 3),
	@TravellerNoSC bit,
	@TravellerNo nvarchar(100),
	@CouterUnitSC bit,
	@CouterUnit decimal(18, 3),
	@CouterUnitErr decimal(18, 3),
	@CouterUnit2SC bit,
	@CouterUnit2 decimal(18, 3),
	@CouterUnit2Err decimal(18, 3),
	@CouterWeightSC bit,
	@CouterWeight decimal(18, 3),
	@CouterWeightErr decimal(18, 3),
	@CouterWeight2SC bit,
	@CouterWeight2 decimal(18, 3),
	@CouterWeight2Err decimal(18, 3),
	@CounterSystemSC bit,
	@CounterSystem nvarchar(100),
	@SenserYarnBreakSC bit,
	@SenserYarnBreak nvarchar(100),
	@CalculatedTwistingNumberSC bit,
	@CalculatedTwistingNumber decimal(18, 3),
	@CalculatedTwistingNumberErr decimal(18, 3),
	@NumberOfSpindleRotationSC bit,
	@NumberOfSpindleRotation decimal(18, 3),
	@NumberOfSpindleRotationErr decimal(18, 3),
	@YarnSpeedSC bit,
	@YarnSpeed decimal(18, 3),
	@YarnSpeedErr decimal(18, 3),
	@SpecialMentionSC bit,
	@SpecialMention nvarchar(100)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S1ConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S1ConditionStd 
               SET RingDiameterSC = @RingDiameterSC  ,
					RingDiameter = @RingDiameter ,
					TwistChangeGearSC = @TwistChangeGearSC ,
					TwistChangeGearI = @TwistChangeGearI ,
					TwistChangeGearJ = @TwistChangeGearJ ,
					TwistChangeGearK = @TwistChangeGearK ,
					LifterChangeGearSC = @LifterChangeGearSC ,
					LifterChangeGearA = @LifterChangeGearA ,
					LifterChangeGearB = @LifterChangeGearB ,
					OuterDiameterSC = @OuterDiameterSC ,
					OuterDiameter = @OuterDiameter ,
					TravellerNoSC = @TravellerNoSC ,
					TravellerNo = @TravellerNo ,
					CouterUnitSC = @CouterUnitSC ,
					CouterUnit = @CouterUnit ,
					CouterUnitErr = @CouterUnitErr ,
					CouterUnit2SC = @CouterUnit2SC ,
					CouterUnit2 = @CouterUnit2 ,
					CouterUnit2Err = @CouterUnit2Err ,
					CouterWeightSC = @CouterWeightSC ,
					CouterWeight = @CouterWeight ,
					CouterWeightErr = @CouterWeightErr ,
					CouterWeight2SC = @CouterWeight2SC ,
					CouterWeight2 = @CouterWeight2 ,
					CouterWeight2Err = @CouterWeight2Err ,
					CounterSystemSC = @CounterSystemSC ,
					CounterSystem = @CounterSystem ,
					SenserYarnBreakSC = @SenserYarnBreakSC ,
					SenserYarnBreak = @SenserYarnBreak ,
					CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
					CalculatedTwistingNumber = @CalculatedTwistingNumber ,
					CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
					NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
					NumberOfSpindleRotation = @NumberOfSpindleRotation ,
					NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
					YarnSpeedSC = @YarnSpeedSC ,
					YarnSpeed = @YarnSpeed ,
					YarnSpeedErr = @YarnSpeedErr ,
					SpecialMentionSC = @SpecialMentionSC ,
					SpecialMention = @SpecialMention 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S1ConditionStd
		    (
                ProductCode ,
				RingDiameterSC ,
				RingDiameter ,
				TwistChangeGearSC ,
				TwistChangeGearI ,
				TwistChangeGearJ ,
				TwistChangeGearK ,
				LifterChangeGearSC ,
				LifterChangeGearA ,
				LifterChangeGearB ,
				OuterDiameterSC ,
				OuterDiameter ,
				TravellerNoSC ,
				TravellerNo ,
				CouterUnitSC ,
				CouterUnit ,
				CouterUnitErr ,
				CouterUnit2SC ,
				CouterUnit2 ,
				CouterUnit2Err ,
				CouterWeightSC ,
				CouterWeight ,
				CouterWeightErr ,
				CouterWeight2SC ,
				CouterWeight2 ,
				CouterWeight2Err ,
				CounterSystemSC ,
				CounterSystem ,
				SenserYarnBreakSC ,
				SenserYarnBreak ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				SpecialMentionSC ,
				SpecialMention     
			)
			VALUES
			(
                @ProductCode ,
				@RingDiameterSC ,
				@RingDiameter ,
				@TwistChangeGearSC ,
				@TwistChangeGearI ,
				@TwistChangeGearJ ,
				@TwistChangeGearK ,
				@LifterChangeGearSC ,
				@LifterChangeGearA ,
				@LifterChangeGearB ,
				@OuterDiameterSC ,
				@OuterDiameter ,
				@TravellerNoSC ,
				@TravellerNo ,
				@CouterUnitSC ,
				@CouterUnit ,
				@CouterUnitErr ,
				@CouterUnit2SC ,
				@CouterUnit2 ,
				@CouterUnit2Err ,
				@CouterWeightSC ,
				@CouterWeight ,
				@CouterWeightErr ,
				@CouterWeight2SC ,
				@CouterWeight2 ,
				@CouterWeight2Err ,
				@CounterSystemSC ,
				@CounterSystem ,
				@SenserYarnBreakSC ,
				@SenserYarnBreak ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@SpecialMentionSC ,
				@SpecialMention 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS1Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS1Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS1Condition] (
  @ProductCode nvarchar(30),
	@RingDiameterSC bit,
	@RingDiameter nvarchar(100),
	@RingDiameterActual nvarchar(100),
	@TwistChangeGearSC bit,
	@TwistChangeGearI decimal(18, 3),
	@TwistChangeGearIActual decimal(18, 3),
	@TwistChangeGearJ decimal(18, 3),
	@TwistChangeGearJActual decimal(18, 3),
	@TwistChangeGearK decimal(18, 3),
	@TwistChangeGearKActual decimal(18, 3),
	@LifterChangeGearSC bit,
	@LifterChangeGearA decimal(18, 3),
	@LifterChangeGearAActual decimal(18, 3),
	@LifterChangeGearB decimal(18, 3),
	@LifterChangeGearBActual decimal(18, 3),
	@OuterDiameterSC bit,
	@OuterDiameter decimal(18, 3),
	@OuterDiameterActual decimal(18, 3),
	@TravellerNoSC bit,
	@TravellerNo nvarchar(100),
	@TravellerNoActual nvarchar(100),
	@CouterUnitSC bit,
	@CouterUnit decimal(18, 3),
	@CouterUnitErr decimal(18, 3),
	@CouterUnitActual decimal(18, 3),
	@CouterUnit2SC bit,
	@CouterUnit2 decimal(18, 3),
	@CouterUnit2Err decimal(18, 3),
	@CouterUnit2Actual decimal(18, 3),
	@CouterWeightSC bit,
	@CouterWeight decimal(18, 3),
	@CouterWeightErr decimal(18, 3),
	@CouterWeightActual decimal(18, 3),
	@CouterWeight2SC bit,
	@CouterWeight2 decimal(18, 3),
	@CouterWeight2Actual decimal(18, 3),
	@CouterWeight2Err decimal(18, 3),
	@CounterSystemSC bit,
	@CounterSystem nvarchar(100),
	@CounterSystemActual bit,
	@SenserYarnBreakSC bit,
	@SenserYarnBreak nvarchar(100),
	@SenserYarnBreakActual bit,
	@CalculatedTwistingNumberSC bit,
	@CalculatedTwistingNumber decimal(18, 3),
	@CalculatedTwistingNumberErr decimal(18, 3),
	@CalculatedTwistingNumberActual decimal(18, 3),
	@NumberOfSpindleRotationSC bit,
	@NumberOfSpindleRotation decimal(18, 3),
	@NumberOfSpindleRotationErr decimal(18, 3),
	@NumberOfSpindleRotationActual decimal(18, 3),
	@YarnSpeedSC bit,
	@YarnSpeed decimal(18, 3),
	@YarnSpeedErr decimal(18, 3),
	@YarnSpeedActual decimal(18, 3),
	@SpecialMentionSC bit,
	@SpecialMention nvarchar(100),
	@SpecialMentionActual nvarchar(100)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S1Condition WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S1Condition 
               SET RingDiameterSC = @RingDiameterSC  ,
					RingDiameter = @RingDiameter ,
					RingDiameterActual = @RingDiameterActual ,
					TwistChangeGearSC = @TwistChangeGearSC ,
					TwistChangeGearI = @TwistChangeGearI ,
					TwistChangeGearIActual = @TwistChangeGearIActual ,
					TwistChangeGearJ = @TwistChangeGearJ ,
					TwistChangeGearJActual = @TwistChangeGearJActual ,
					TwistChangeGearK = @TwistChangeGearK ,
					TwistChangeGearKActual = @TwistChangeGearKActual ,
					LifterChangeGearSC = @LifterChangeGearSC ,
					LifterChangeGearA = @LifterChangeGearA ,
					LifterChangeGearAActual = @LifterChangeGearAActual ,
					LifterChangeGearB = @LifterChangeGearB ,
					LifterChangeGearBActual = @LifterChangeGearBActual ,
					OuterDiameterSC = @OuterDiameterSC ,
					OuterDiameter = @OuterDiameter ,
					OuterDiameterActual = @OuterDiameterActual ,
					TravellerNoSC = @TravellerNoSC ,
					TravellerNo = @TravellerNo ,
					TravellerNoActual = @TravellerNoActual ,
					CouterUnitSC = @CouterUnitSC ,
					CouterUnit = @CouterUnit ,
					CouterUnitErr = @CouterUnitErr ,
					CouterUnitActual = @CouterUnitActual ,
					CouterUnit2SC = @CouterUnit2SC ,
					CouterUnit2 = @CouterUnit2 ,
					CouterUnit2Err = @CouterUnit2Err ,
					CouterUnit2Actual = @CouterUnit2Actual ,
					CouterWeightSC = @CouterWeightSC ,
					CouterWeight = @CouterWeight ,
					CouterWeightErr = @CouterWeightErr ,
					CouterWeightActual = @CouterWeightActual ,
					CouterWeight2SC = @CouterWeight2SC ,
					CouterWeight2 = @CouterWeight2 ,
					CouterWeight2Actual = @CouterWeight2Actual ,
					CouterWeight2Err = @CouterWeight2Err ,
					CounterSystemSC = @CounterSystemSC ,
					CounterSystem = @CounterSystem ,
					CounterSystemActual = @CounterSystemActual ,
					SenserYarnBreakSC = @SenserYarnBreakSC ,
					SenserYarnBreak = @SenserYarnBreak ,
					SenserYarnBreakActual = @SenserYarnBreakActual ,
					CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
					CalculatedTwistingNumber = @CalculatedTwistingNumber ,
					CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
					CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
					NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
					NumberOfSpindleRotation = @NumberOfSpindleRotation ,
					NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
					NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
					YarnSpeedSC = @YarnSpeedSC ,
					YarnSpeed = @YarnSpeed ,
					YarnSpeedErr = @YarnSpeedErr ,
					YarnSpeedActual = @YarnSpeedActual ,
					SpecialMentionSC = @SpecialMentionSC ,
					SpecialMention = @SpecialMention ,
					SpecialMentionActual = @SpecialMentionActual 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S1Condition
		    (
                ProductCode ,
				RingDiameterSC ,
				RingDiameter ,
				RingDiameterActual ,
				TwistChangeGearSC ,
				TwistChangeGearI ,
				TwistChangeGearIActual ,
				TwistChangeGearJ ,
				TwistChangeGearJActual ,
				TwistChangeGearK ,
				TwistChangeGearKActual ,
				LifterChangeGearSC ,
				LifterChangeGearA ,
				LifterChangeGearAActual ,
				LifterChangeGearB ,
				LifterChangeGearBActual ,
				OuterDiameterSC ,
				OuterDiameter ,
				OuterDiameterActual ,
				TravellerNoSC ,
				TravellerNo ,
				TravellerNoActual ,
				CouterUnitSC ,
				CouterUnit ,
				CouterUnitErr ,
				CouterUnitActual ,
				CouterUnit2SC ,
				CouterUnit2 ,
				CouterUnit2Err ,
				CouterUnit2Actual ,
				CouterWeightSC ,
				CouterWeight ,
				CouterWeightErr ,
				CouterWeightActual ,
				CouterWeight2SC ,
				CouterWeight2 ,
				CouterWeight2Actual ,
				CouterWeight2Err ,
				CounterSystemSC ,
				CounterSystem ,
				CounterSystemActual ,
				SenserYarnBreakSC ,
				SenserYarnBreak ,
				SenserYarnBreakActual ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				YarnSpeedActual ,
				SpecialMentionSC ,
				SpecialMention ,
				SpecialMentionActual        
			)
			VALUES
			(
                @ProductCode ,
				@RingDiameterSC ,
				@RingDiameter ,
				@RingDiameterActual ,
				@TwistChangeGearSC ,
				@TwistChangeGearI ,
				@TwistChangeGearIActual ,
				@TwistChangeGearJ ,
				@TwistChangeGearJActual ,
				@TwistChangeGearK ,
				@TwistChangeGearKActual ,
				@LifterChangeGearSC ,
				@LifterChangeGearA ,
				@LifterChangeGearAActual ,
				@LifterChangeGearB ,
				@LifterChangeGearBActual ,
				@OuterDiameterSC ,
				@OuterDiameter ,
				@OuterDiameterActual ,
				@TravellerNoSC ,
				@TravellerNo ,
				@TravellerNoActual ,
				@CouterUnitSC ,
				@CouterUnit ,
				@CouterUnitErr ,
				@CouterUnitActual ,
				@CouterUnit2SC ,
				@CouterUnit2 ,
				@CouterUnit2Err ,
				@CouterUnit2Actual ,
				@CouterWeightSC ,
				@CouterWeight ,
				@CouterWeightErr ,
				@CouterWeightActual ,
				@CouterWeight2SC ,
				@CouterWeight2 ,
				@CouterWeight2Actual ,
				@CouterWeight2Err ,
				@CounterSystemSC ,
				@CounterSystem ,
				@CounterSystemActual ,
				@SenserYarnBreakSC ,
				@SenserYarnBreak ,
				@SenserYarnBreakActual ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC ,
				@SpecialMention ,
				@SpecialMentionActual 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[GetS1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS1ConditionStd
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS1ConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
			RingDiameterSC ,
			RingDiameter ,
			TwistChangeGearSC ,
			TwistChangeGearI ,
			TwistChangeGearJ ,
			TwistChangeGearK ,
			LifterChangeGearSC ,
			LifterChangeGearA ,
			LifterChangeGearB ,
			OuterDiameterSC ,
			OuterDiameter ,
			TravellerNoSC ,
			TravellerNo ,
			CouterUnitSC ,
			CouterUnit ,
			CouterUnitErr ,
			CouterUnit2SC ,
			CouterUnit2 ,
			CouterUnit2Err ,
			CouterWeightSC ,
			CouterWeight ,
			CouterWeightErr ,
			CouterWeight2SC ,
			CouterWeight2 ,
			CouterWeight2Err ,
			CounterSystemSC ,
			CounterSystem ,
			SenserYarnBreakSC ,
			SenserYarnBreak ,
			CalculatedTwistingNumberSC ,
			CalculatedTwistingNumber ,
			CalculatedTwistingNumberErr ,
			NumberOfSpindleRotationSC ,
			NumberOfSpindleRotation ,
			NumberOfSpindleRotationErr ,
			YarnSpeedSC ,
			YarnSpeed ,
			YarnSpeedErr ,
			SpecialMentionSC ,
			SpecialMention 
     FROM S1ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[GetS1Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS1Condition
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS1Condition]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
			RingDiameterSC ,
			RingDiameter ,
			RingDiameterActual ,
			TwistChangeGearSC ,
			TwistChangeGearI ,
			TwistChangeGearIActual ,
			TwistChangeGearJ ,
			TwistChangeGearJActual ,
			TwistChangeGearK ,
			TwistChangeGearKActual ,
			LifterChangeGearSC ,
			LifterChangeGearA ,
			LifterChangeGearAActual ,
			LifterChangeGearB ,
			LifterChangeGearBActual ,
			OuterDiameterSC ,
			OuterDiameter ,
			OuterDiameterActual ,
			TravellerNoSC ,
			TravellerNo ,
			TravellerNoActual ,
			CouterUnitSC ,
			CouterUnit ,
			CouterUnitErr ,
			CouterUnitActual ,
			CouterUnit2SC ,
			CouterUnit2 ,
			CouterUnit2Err ,
			CouterUnit2Actual ,
			CouterWeightSC ,
			CouterWeight ,
			CouterWeightErr ,
			CouterWeightActual ,
			CouterWeight2SC ,
			CouterWeight2 ,
			CouterWeight2Actual ,
			CouterWeight2Err ,
			CounterSystemSC ,
			CounterSystem ,
			CounterSystemActual ,
			SenserYarnBreakSC ,
			SenserYarnBreak ,
			SenserYarnBreakActual ,
			CalculatedTwistingNumberSC ,
			CalculatedTwistingNumber ,
			CalculatedTwistingNumberErr ,
			CalculatedTwistingNumberActual ,
			NumberOfSpindleRotationSC ,
			NumberOfSpindleRotation ,
			NumberOfSpindleRotationErr ,
			NumberOfSpindleRotationActual ,
			YarnSpeedSC ,
			YarnSpeed ,
			YarnSpeedErr ,
			YarnSpeedActual ,
			SpecialMentionSC ,
			SpecialMention ,
			SpecialMentionActual 
     FROM S1Condition
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS4x1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x1ConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS4x1ConditionStd] (
  @ProductCode nvarchar(30)  ,
	@TwistChangeGearSC bit  ,
	@TwistChangeGearE decimal(18, 3)  ,
	@TwistChangeGearF decimal(18, 3)  ,
	@TwistChangeGearG decimal(18, 3)  ,
	@TwistChangeGearH decimal(18, 3)  ,
	@MotorPulleyDiaSC bit  ,
	@MotorPulleyDia decimal(18, 3)  ,
	@DrivingPulleyDiaSC bit  ,
	@DrivingPulleyDia decimal(18, 3)  ,
	@OverFeedSC bit  ,
	@OverFeedRate decimal(18, 3)  ,
	@OverFeedGear decimal(18, 3)  ,
	@WindAngleSC bit  ,
	@WindAngleDeg decimal(18, 3)  ,
	@WindAngleGearA decimal(18, 3)  ,
	@WindAngleGearB decimal(18, 3)  ,
	@TensorDialSetSC bit  ,
	@TensorDialSet decimal(18, 3)  ,
	@NumberOfLoopSC bit  ,
	@NumberOfLoop decimal(18, 3)  ,
	@NumberOfLoopErr decimal(18, 3)  ,
	@MethodOfKnotSC bit  ,
	@MethodOfKnot nvarchar(100)  ,
	@WindQuantitySC bit  ,
	@WindQuantity decimal(18, 3)  ,
	@WindQuantityErr decimal(18, 3)  ,
	@LengthSC bit  ,
	@Length decimal(18, 3)  ,
	@LengthErr decimal(18, 3)  ,
	@DoffTimeSC bit  ,
	@DoffTime decimal(18, 3)  ,
	@DoffTimeErr decimal(18, 3)  ,
	@ProductQuantitySC bit  ,
	@ProductQuantityKg decimal(18, 3)  ,
	@ProductQuantityDay decimal(18, 3)  ,
	@CalculatedTwistingNumberSC bit  ,
	@CalculatedTwistingNumber decimal(18, 3)  ,
	@CalculatedTwistingNumberErr decimal(18, 3)  ,
	@NumberOfSpindleRotationSC bit  ,
	@NumberOfSpindleRotation decimal(18, 3)  ,
	@NumberOfSpindleRotationErr decimal(18, 3)  ,
	@YarnSpeedSC bit  ,
	@YarnSpeed decimal(18, 3)  ,
	@YarnSpeedErr decimal(18, 3)  ,
	@SpecialMentionSC bit  ,
	@SpecialMention nvarchar(100)   
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x1ConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S4x1ConditionStd 
               SET TwistChangeGearSC = @TwistChangeGearSC ,
				TwistChangeGearE = @TwistChangeGearE ,
				TwistChangeGearF = @TwistChangeGearF ,
				TwistChangeGearG = @TwistChangeGearG ,
				TwistChangeGearH = @TwistChangeGearH ,
				MotorPulleyDiaSC = @MotorPulleyDiaSC ,
				MotorPulleyDia = @MotorPulleyDia ,
				DrivingPulleyDiaSC = @DrivingPulleyDiaSC ,
				DrivingPulleyDia = @DrivingPulleyDia ,
				OverFeedSC = @OverFeedSC ,
				OverFeedRate = @OverFeedRate ,
				OverFeedGear = @OverFeedGear ,
				WindAngleSC = @WindAngleSC ,
				WindAngleDeg = @WindAngleDeg ,
				WindAngleGearA = @WindAngleGearA ,
				WindAngleGearB = @WindAngleGearB ,
				TensorDialSetSC = @TensorDialSetSC ,
				TensorDialSet = @TensorDialSet ,
				NumberOfLoopSC = @NumberOfLoopSC ,
				NumberOfLoop = @NumberOfLoop ,
				NumberOfLoopErr = @NumberOfLoopErr ,
				MethodOfKnotSC = @MethodOfKnotSC ,
				MethodOfKnot = @MethodOfKnot  ,
				WindQuantitySC = @WindQuantitySC ,
				WindQuantity = @WindQuantity ,
				WindQuantityErr = @WindQuantityErr ,
				LengthSC = @LengthSC ,
				[Length] = @Length ,
				LengthErr = @LengthErr ,
				DoffTimeSC = @DoffTimeSC ,
				DoffTime = @DoffTime ,
				DoffTimeErr = @DoffTimeErr ,
				ProductQuantitySC = @ProductQuantitySC ,
				ProductQuantityKg = @ProductQuantityKg ,
				ProductQuantityDay = @ProductQuantityDay ,
				CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber = @CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
				NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation = @NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
				YarnSpeedSC = @YarnSpeedSC ,
				YarnSpeed = @YarnSpeed ,
				YarnSpeedErr = @YarnSpeedErr ,
				SpecialMentionSC = @SpecialMentionSC ,
				SpecialMention = @SpecialMention  
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S4x1ConditionStd
		    (
                ProductCode ,
				TwistChangeGearSC ,
				TwistChangeGearE ,
				TwistChangeGearF ,
				TwistChangeGearG ,
				TwistChangeGearH ,
				MotorPulleyDiaSC ,
				MotorPulleyDia ,
				DrivingPulleyDiaSC ,
				DrivingPulleyDia ,
				OverFeedSC ,
				OverFeedRate ,
				OverFeedGear ,
				WindAngleSC ,
				WindAngleDeg ,
				WindAngleGearA ,
				WindAngleGearB ,
				TensorDialSetSC,
				TensorDialSet,
				NumberOfLoopSC ,
				NumberOfLoop ,
				NumberOfLoopErr ,
				MethodOfKnotSC ,
				MethodOfKnot  ,
				WindQuantitySC ,
				WindQuantity ,
				WindQuantityErr ,
				LengthSC ,
				[Length] ,
				LengthErr ,
				DoffTimeSC ,
				DoffTime ,
				DoffTimeErr ,
				ProductQuantitySC ,
				ProductQuantityKg ,
				ProductQuantityDay ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				SpecialMentionSC ,
				SpecialMention  
			)
			VALUES
			(
               @ProductCode ,
				@TwistChangeGearSC ,
				@TwistChangeGearE ,
				@TwistChangeGearF ,
				@TwistChangeGearG ,
				@TwistChangeGearH ,
				@MotorPulleyDiaSC ,
				@MotorPulleyDia ,
				@DrivingPulleyDiaSC ,
				@DrivingPulleyDia ,
				@OverFeedSC ,
				@OverFeedRate ,
				@OverFeedGear ,
				@WindAngleSC ,
				@WindAngleDeg ,
				@WindAngleGearA ,
				@WindAngleGearB ,
				@TensorDialSetSC,
				@TensorDialSet,
				@NumberOfLoopSC ,
				@NumberOfLoop ,
				@NumberOfLoopErr ,
				@MethodOfKnotSC ,
				@MethodOfKnot  ,
				@WindQuantitySC ,
				@WindQuantity ,
				@WindQuantityErr ,
				@LengthSC ,
				@Length ,
				@LengthErr ,
				@DoffTimeSC ,
				@DoffTime ,
				@DoffTimeErr ,
				@ProductQuantitySC ,
				@ProductQuantityKg ,
				@ProductQuantityDay ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@SpecialMentionSC ,
				@SpecialMention  
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS4x1Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x1Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS4x1Condition] (
  @ProductCode nvarchar(30)  ,
	@TwistChangeGearSC bit  ,
	@TwistChangeGearE decimal(18, 3)  ,
	@TwistChangeGearEActual decimal(18, 3)  ,
	@TwistChangeGearF decimal(18, 3)  ,
	@TwistChangeGearFActual decimal(18, 3)  ,
	@TwistChangeGearG decimal(18, 3)  ,
	@TwistChangeGearGActual decimal(18, 3)  ,
	@TwistChangeGearH decimal(18, 3)  ,
	@TwistChangeGearHActual decimal(18, 3)  ,
	@MotorPulleyDiaSC bit  ,
	@MotorPulleyDia decimal(18, 3)  ,
	@MotorPulleyDiaActual decimal(18, 3)  ,
	@DrivingPulleyDiaSC bit  ,
	@DrivingPulleyDia decimal(18, 3)  ,
	@DrivingPulleyDiaActual decimal(18, 3)  ,
	@OverFeedSC bit  ,
	@OverFeedRate decimal(18, 3)  ,
	@OverFeedRateActual decimal(18, 3)  ,
	@OverFeedGear decimal(18, 3)  ,
	@OverFeedGearActual decimal(18, 3)  ,
	@WindAngleSC bit  ,
	@WindAngleDeg decimal(18, 3)  ,
	@WindAngleDegActual decimal(18, 3)  ,
	@WindAngleGearA decimal(18, 3)  ,
	@WindAngleGearAActual decimal(18, 3)  ,
	@WindAngleGearB decimal(18, 3)  ,
	@WindAngleGearBActual decimal(18, 3)  ,
	@TensorDialSetSC bit  ,
	@TensorDialSet decimal(18, 3)  ,
	@TensorDialSetActual decimal(18, 3)  ,
	@NumberOfLoopSC bit  ,
	@NumberOfLoop decimal(18, 3)  ,
	@NumberOfLoopErr decimal(18, 3)  ,
	@NumberOfLoopActual decimal(18, 3)  ,
	@MethodOfKnotSC bit  ,
	@MethodOfKnot nvarchar(100)  ,
	@MethodOfKnotActual nvarchar(100)  ,
	@WindQuantitySC bit  ,
	@WindQuantity decimal(18, 3)  ,
	@WindQuantityErr decimal(18, 3)  ,
	@WindQuantityActual decimal(18, 3)  ,
	@LengthSC bit  ,
	@Length decimal(18, 3)  ,
	@LengthErr decimal(18, 3)  ,
	@LengthActual decimal(18, 3)  ,
	@DoffTimeSC bit  ,
	@DoffTime decimal(18, 3)  ,
	@DoffTimeErr decimal(18, 3)  ,
	@DoffTimeActual decimal(18, 3)  ,
	@ProductQuantitySC bit  ,
	@ProductQuantityKg decimal(18, 3)  ,
	@ProductQuantityKgActual decimal(18, 3)  ,
	@ProductQuantityDay decimal(18, 3)  ,
	@ProductQuantityDayActual decimal(18, 3)  ,
	@CalculatedTwistingNumberSC bit  ,
	@CalculatedTwistingNumber decimal(18, 3)  ,
	@CalculatedTwistingNumberErr decimal(18, 3)  ,
	@CalculatedTwistingNumberActual decimal(18, 3)  ,
	@NumberOfSpindleRotationSC bit  ,
	@NumberOfSpindleRotation decimal(18, 3)  ,
	@NumberOfSpindleRotationErr decimal(18, 3)  ,
	@NumberOfSpindleRotationActual decimal(18, 3)  ,
	@YarnSpeedSC bit  ,
	@YarnSpeed decimal(18, 3)  ,
	@YarnSpeedErr decimal(18, 3)  ,
	@YarnSpeedActual decimal(18, 3)  ,
	@SpecialMentionSC bit  ,
	@SpecialMention nvarchar(100)  ,
	@SpecialMentionActual nvarchar(100)   
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x1Condition WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S4x1Condition 
               SET TwistChangeGearSC = @TwistChangeGearSC ,
				TwistChangeGearE = @TwistChangeGearE ,
				TwistChangeGearEActual = @TwistChangeGearEActual ,
				TwistChangeGearF = @TwistChangeGearF ,
				TwistChangeGearFActual = @TwistChangeGearFActual ,
				TwistChangeGearG = @TwistChangeGearG ,
				TwistChangeGearGActual = @TwistChangeGearGActual ,
				TwistChangeGearH = @TwistChangeGearH ,
				TwistChangeGearHActual = @TwistChangeGearHActual ,
				MotorPulleyDiaSC = @MotorPulleyDiaSC ,
				MotorPulleyDia = @MotorPulleyDia ,
				MotorPulleyDiaActual = @MotorPulleyDiaActual ,
				DrivingPulleyDiaSC = @DrivingPulleyDiaSC ,
				DrivingPulleyDia = @DrivingPulleyDia ,
				DrivingPulleyDiaActual = @DrivingPulleyDiaActual ,
				OverFeedSC = @OverFeedSC ,
				OverFeedRate = @OverFeedRate ,
				OverFeedRateActual = @OverFeedRateActual ,
				OverFeedGear = @OverFeedGear ,
				OverFeedGearActual = @OverFeedGearActual ,
				WindAngleSC = @WindAngleSC ,
				WindAngleDeg = @WindAngleDeg ,
				WindAngleDegActual = @WindAngleDegActual ,
				WindAngleGearA = @WindAngleGearA ,
				WindAngleGearAActual = @WindAngleGearAActual ,
				WindAngleGearB = @WindAngleGearB ,
				WindAngleGearBActual = @WindAngleGearBActual ,

				TensorDialSetSC = @TensorDialSetSC ,
				TensorDialSet = @TensorDialSet ,
				TensorDialSetActual = @TensorDialSetActual ,

				NumberOfLoopSC = @NumberOfLoopSC ,
				NumberOfLoop = @NumberOfLoop ,
				NumberOfLoopActual = @NumberOfLoopActual ,
				NumberOfLoopErr = @NumberOfLoopErr ,
				MethodOfKnotSC = @MethodOfKnotSC ,
				MethodOfKnot = @MethodOfKnot  ,
				MethodOfKnotActual = @MethodOfKnotActual  ,
				WindQuantitySC = @WindQuantitySC ,
				WindQuantity = @WindQuantity ,
				WindQuantityErr = @WindQuantityErr ,
				WindQuantityActual = @WindQuantityActual ,
				LengthSC = @LengthSC ,
				[Length] = @Length ,
				LengthErr = @LengthErr ,
				LengthActual = @LengthActual ,
				DoffTimeSC = @DoffTimeSC ,
				DoffTime = @DoffTime ,
				DoffTimeErr = @DoffTimeErr ,
				DoffTimeActual = @DoffTimeActual ,
				ProductQuantitySC = @ProductQuantitySC ,
				ProductQuantityKg = @ProductQuantityKg ,
				ProductQuantityKgActual = @ProductQuantityKgActual ,
				ProductQuantityDay = @ProductQuantityDay ,
				ProductQuantityDayActual = @ProductQuantityDayActual ,
				CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber = @CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation = @NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
				YarnSpeedSC = @YarnSpeedSC ,
				YarnSpeed = @YarnSpeed ,
				YarnSpeedActual = @YarnSpeedActual ,
				YarnSpeedErr = @YarnSpeedErr ,
				SpecialMentionSC = @SpecialMentionSC ,
				SpecialMention = @SpecialMention ,
				SpecialMentionActual = @SpecialMentionActual  
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S4x1Condition
		    (
                ProductCode ,
				TwistChangeGearSC ,
				TwistChangeGearE ,
				TwistChangeGearEActual ,
				TwistChangeGearF ,
				TwistChangeGearFActual ,
				TwistChangeGearG ,
				TwistChangeGearGActual ,
				TwistChangeGearH ,
				TwistChangeGearHActual ,
				MotorPulleyDiaSC ,
				MotorPulleyDia ,
				MotorPulleyDiaActual ,
				DrivingPulleyDiaSC ,
				DrivingPulleyDia ,
				DrivingPulleyDiaActual ,
				OverFeedSC ,
				OverFeedRate ,
				OverFeedRateActual ,
				OverFeedGear ,
				OverFeedGearActual ,
				WindAngleSC ,
				WindAngleDeg ,
				WindAngleDegActual ,
				WindAngleGearA ,
				WindAngleGearAActual ,
				WindAngleGearB ,
				WindAngleGearBActual ,
				TensorDialSetSC,
				TensorDialSet,
				TensorDialSetActual,
				NumberOfLoopSC ,
				NumberOfLoop ,
				NumberOfLoopErr ,
				NumberOfLoopActual ,
				MethodOfKnotSC ,
				MethodOfKnot  ,
				MethodOfKnotActual  ,
				WindQuantitySC ,
				WindQuantity ,
				WindQuantityErr ,
				WindQuantityActual ,
				LengthSC ,
				[Length] ,
				LengthErr ,
				LengthActual ,
				DoffTimeSC ,
				DoffTime ,
				DoffTimeErr ,
				DoffTimeActual ,
				ProductQuantitySC ,
				ProductQuantityKg ,
				ProductQuantityKgActual ,
				ProductQuantityDay ,
				ProductQuantityDayActual ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				YarnSpeedActual ,
				SpecialMentionSC ,
				SpecialMention  ,
				SpecialMentionActual          
			)
			VALUES
			(
                @ProductCode ,
				@TwistChangeGearSC ,
				@TwistChangeGearE ,
				@TwistChangeGearEActual ,
				@TwistChangeGearF ,
				@TwistChangeGearFActual ,
				@TwistChangeGearG ,
				@TwistChangeGearGActual ,
				@TwistChangeGearH ,
				@TwistChangeGearHActual ,
				@MotorPulleyDiaSC ,
				@MotorPulleyDia ,
				@MotorPulleyDiaActual ,
				@DrivingPulleyDiaSC ,
				@DrivingPulleyDia ,
				@DrivingPulleyDiaActual ,
				@OverFeedSC ,
				@OverFeedRate ,
				@OverFeedRateActual ,
				@OverFeedGear ,
				@OverFeedGearActual ,
				@WindAngleSC ,
				@WindAngleDeg ,
				@WindAngleDegActual ,
				@WindAngleGearA ,
				@WindAngleGearAActual ,
				@WindAngleGearB ,
				@WindAngleGearBActual ,
				@TensorDialSetSC,
				@TensorDialSet,
				@TensorDialSetActual,
				@NumberOfLoopSC ,
				@NumberOfLoop ,
				@NumberOfLoopErr ,
				@NumberOfLoopActual ,
				@MethodOfKnotSC ,
				@MethodOfKnot  ,
				@MethodOfKnotActual  ,
				@WindQuantitySC ,
				@WindQuantity ,
				@WindQuantityErr ,
				@WindQuantityActual ,
				@LengthSC ,
				@Length ,
				@LengthErr ,
				@LengthActual ,
				@DoffTimeSC ,
				@DoffTime ,
				@DoffTimeErr ,
				@DoffTimeActual ,
				@ProductQuantitySC ,
				@ProductQuantityKg ,
				@ProductQuantityKgActual ,
				@ProductQuantityDay ,
				@ProductQuantityDayActual ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC ,
				@SpecialMention  ,
				@SpecialMentionActual   
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS4x2ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x2ConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS4x2ConditionStd] (
    @ProductCode nvarchar (30) ,
	@FullPackageModeSC bit  ,
	@FullPackageMode nvarchar (100) ,
	@LengthSC bit  ,
	@Length decimal (18, 3) ,
	@LengthErr decimal (18, 3) ,
	@WindAngleShiftFunctionSC bit  ,
	@WindAngleShiftFunction nvarchar (100) ,
	@AmountOfDisturbSC bit  ,
	@AmountOfDisturb nvarchar (100) ,
	@WindAngleSC bit  ,
	@WindAngle decimal (18, 3) ,
	@DistuebAccelerationTimeSC bit  ,
	@DistuebAccelerationTime decimal (18, 3) ,
	@DistuebDccelerationTimeSC bit  ,
	@DistuebDccelerationTime decimal (18, 3) ,
	@TensorSettingSC bit  ,
	@TensorSetting nvarchar (100) ,
	@FeedRollerSettingSC bit  ,
	@FeedRollerSetting nvarchar (100) ,
	@BollonSettingSC bit  ,
	@BollonSetting nvarchar (100) ,
	@MethodOfKnotSC bit  ,
	@MethodOfKnot nvarchar (100) ,
	@WindQuantitySC bit  ,
	@WindQuantity decimal (18, 3) ,
	@WindQuantityErr decimal (18, 3) ,
	@DoffTimeSC bit  ,
	@DoffTime decimal (18, 3) ,
	@DoffTimeErr decimal (18, 3) ,
	@ProductQuantitySC bit  ,
	@ProductQuantityKg decimal (18, 3) ,
	@ProductQuantityDay decimal (18, 3) ,
	@CalculatedTwistingNumberSC bit  ,
	@CalculatedTwistingNumber decimal (18, 3) ,
	@CalculatedTwistingNumberErr decimal (18, 3) ,
	@NumberOfSpindleRotationSC bit  ,
	@NumberOfSpindleRotation decimal (18, 3) ,
	@NumberOfSpindleRotationErr decimal (18, 3) ,
	@YarnSpeedSC bit  ,
	@YarnSpeed decimal (18, 3) ,
	@YarnSpeedErr decimal (18, 3) ,
	@SpecialMentionSC bit  ,
	@SpecialMention nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x2ConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S4x2ConditionStd
               SET FullPackageModeSC = @FullPackageModeSC ,
					FullPackageMode = @FullPackageMode ,
					LengthSC = @LengthSC ,
					[Length] = @Length ,
					LengthErr = @LengthErr ,
					WindAngleShiftFunctionSC = @WindAngleShiftFunctionSC ,
					WindAngleShiftFunction = @WindAngleShiftFunction ,
					AmountOfDisturbSC = @AmountOfDisturbSC ,
					AmountOfDisturb = @AmountOfDisturb ,
					WindAngleSC = @WindAngleSC ,
					WindAngle = @WindAngle ,
					DistuebAccelerationTimeSC = @DistuebAccelerationTimeSC ,
					DistuebAccelerationTime = @DistuebAccelerationTime ,
					DistuebDccelerationTimeSC = @DistuebDccelerationTimeSC ,
					DistuebDccelerationTime = @DistuebDccelerationTime ,
					TensorSettingSC = @TensorSettingSC ,
					TensorSetting = @TensorSetting ,
					FeedRollerSettingSC = @FeedRollerSettingSC ,
					FeedRollerSetting = @FeedRollerSetting ,
					BollonSettingSC = @BollonSettingSC ,
					BollonSetting = @BollonSetting ,
					MethodOfKnotSC = @MethodOfKnotSC ,
					MethodOfKnot = @MethodOfKnot ,
					WindQuantitySC = @WindQuantitySC ,
					WindQuantity = @WindQuantity ,
					WindQuantityErr = @WindQuantityErr ,
					DoffTimeSC = @DoffTimeSC ,
					DoffTime = @DoffTime ,
					DoffTimeErr = @DoffTimeErr ,
					ProductQuantitySC = @ProductQuantitySC ,
					ProductQuantityKg = @ProductQuantityKg ,
					ProductQuantityDay = @ProductQuantityDay ,
					CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
					CalculatedTwistingNumber = @CalculatedTwistingNumber ,
					CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
					NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
					NumberOfSpindleRotation = @NumberOfSpindleRotation ,
					NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
					YarnSpeedSC = @YarnSpeedSC ,
					YarnSpeed = @YarnSpeed ,
					YarnSpeedErr = @YarnSpeedErr ,
					SpecialMentionSC = @SpecialMentionSC ,
					SpecialMention = @SpecialMention 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S4x2ConditionStd
		    (
                ProductCode ,
				FullPackageModeSC ,
				FullPackageMode ,
				LengthSC ,
				[Length] ,
				LengthErr ,
				WindAngleShiftFunctionSC ,
				WindAngleShiftFunction ,
				AmountOfDisturbSC ,
				AmountOfDisturb ,
				WindAngleSC ,
				WindAngle ,
				DistuebAccelerationTimeSC ,
				DistuebAccelerationTime ,
				DistuebDccelerationTimeSC ,
				DistuebDccelerationTime ,
				TensorSettingSC ,
				TensorSetting ,
				FeedRollerSettingSC ,
				FeedRollerSetting ,
				BollonSettingSC ,
				BollonSetting ,
				MethodOfKnotSC ,
				MethodOfKnot ,
				WindQuantitySC ,
				WindQuantity ,
				WindQuantityErr ,
				DoffTimeSC ,
				DoffTime ,
				DoffTimeErr ,
				ProductQuantitySC ,
				ProductQuantityKg ,
				ProductQuantityDay ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				SpecialMentionSC ,
				SpecialMention 
			)
			VALUES
			(
                @ProductCode ,
				@FullPackageModeSC ,
				@FullPackageMode ,
				@LengthSC ,
				@Length ,
				@LengthErr ,
				@WindAngleShiftFunctionSC ,
				@WindAngleShiftFunction ,
				@AmountOfDisturbSC ,
				@AmountOfDisturb ,
				@WindAngleSC ,
				@WindAngle ,
				@DistuebAccelerationTimeSC ,
				@DistuebAccelerationTime ,
				@DistuebDccelerationTimeSC ,
				@DistuebDccelerationTime ,
				@TensorSettingSC ,
				@TensorSetting ,
				@FeedRollerSettingSC ,
				@FeedRollerSetting ,
				@BollonSettingSC ,
				@BollonSetting ,
				@MethodOfKnotSC ,
				@MethodOfKnot ,
				@WindQuantitySC ,
				@WindQuantity ,
				@WindQuantityErr ,
				@DoffTimeSC ,
				@DoffTime ,
				@DoffTimeErr ,
				@ProductQuantitySC ,
				@ProductQuantityKg ,
				@ProductQuantityDay ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@SpecialMentionSC ,
				@SpecialMention 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS4x2Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x2Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS4x2Condition] (
 @ProductCode nvarchar (30),
	@FullPackageModeSC bit ,
	@FullPackageMode nvarchar (100),
	@FullPackageModeActual nvarchar (100),
	@LengthSC bit ,
	@Length decimal (18, 3),
	@LengthErr decimal (18, 3),
	@LengthActual decimal (18, 3),
	@WindAngleShiftFunctionSC bit ,
	@WindAngleShiftFunction nvarchar (100),
	@WindAngleShiftFunctionActual nvarchar (100),
	@AmountOfDisturbSC bit ,
	@AmountOfDisturb nvarchar (100),
	@AmountOfDisturbActual nvarchar (100),
	@WindAngleSC bit ,
	@WindAngle decimal (18, 3),
	@WindAngleActual decimal (18, 3),
	@DistuebAccelerationTimeSC bit ,
	@DistuebAccelerationTime decimal (18, 3),
	@DistuebAccelerationTimeActual decimal (18, 3),
	@DistuebDccelerationTimeSC bit ,
	@DistuebDccelerationTime decimal (18, 3),
	@DistuebDccelerationTimeActual decimal (18, 3),
	@TensorSettingSC bit ,
	@TensorSetting nvarchar (100),
	@TensorSettingActual nvarchar (100),
	@FeedRollerSettingSC bit ,
	@FeedRollerSetting nvarchar (100),
	@FeedRollerSettingActual nvarchar (100),
	@BollonSettingSC bit ,
	@BollonSetting nvarchar (100),
	@BollonSettingActual nvarchar (100),
	@MethodOfKnotSC bit ,
	@MethodOfKnot nvarchar (100),
	@MethodOfKnotActual nvarchar (100),
	@WindQuantitySC bit ,
	@WindQuantity decimal (18, 3),
	@WindQuantityErr decimal (18, 3),
	@WindQuantityActual decimal (18, 3),
	@DoffTimeSC bit ,
	@DoffTime decimal (18, 3),
	@DoffTimeErr decimal (18, 3),
	@DoffTimeActual decimal (18, 3),
	@ProductQuantitySC bit ,
	@ProductQuantityKg decimal (18, 3),
	@ProductQuantityKgActual decimal (18, 3),
	@ProductQuantityDay decimal (18, 3),
	@ProductQuantityDayActual decimal (18, 3),
	@CalculatedTwistingNumberSC bit ,
	@CalculatedTwistingNumber decimal (18, 3),
	@CalculatedTwistingNumberErr decimal (18, 3),
	@CalculatedTwistingNumberActual decimal (18, 3),
	@NumberOfSpindleRotationSC bit ,
	@NumberOfSpindleRotation decimal (18, 3),
	@NumberOfSpindleRotationErr decimal (18, 3),
	@NumberOfSpindleRotationActual decimal (18, 3),
	@YarnSpeedSC bit ,
	@YarnSpeed decimal (18, 3),
	@YarnSpeedErr decimal (18, 3),
	@YarnSpeedActual decimal (18, 3),
	@SpecialMentionSC bit ,
	@SpecialMention nvarchar (100),
	@SpecialMentionActual nvarchar (100)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x2Condition WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S4x2Condition
               SET FullPackageModeSC = @FullPackageModeSC ,
				FullPackageMode = @FullPackageMode ,
				FullPackageModeActual = @FullPackageModeActual ,
				LengthSC = @LengthSC ,
				[Length] = @Length ,
				LengthErr = @LengthErr ,
				LengthActual = @LengthActual ,
				WindAngleShiftFunctionSC = @WindAngleShiftFunctionSC ,
				WindAngleShiftFunction = @WindAngleShiftFunction ,
				WindAngleShiftFunctionActual = @WindAngleShiftFunctionActual ,
				AmountOfDisturbSC = @AmountOfDisturbSC ,
				AmountOfDisturb = @AmountOfDisturb ,
				AmountOfDisturbActual = @AmountOfDisturbActual ,
				WindAngleSC = @WindAngleSC ,
				WindAngle = @WindAngle ,
				WindAngleActual = @WindAngleActual ,
				DistuebAccelerationTimeSC = @DistuebAccelerationTimeSC ,
				DistuebAccelerationTime = @DistuebAccelerationTime ,
				DistuebAccelerationTimeActual = @DistuebAccelerationTimeActual ,
				DistuebDccelerationTimeSC = @DistuebDccelerationTimeSC ,
				DistuebDccelerationTime = @DistuebDccelerationTime ,
				DistuebDccelerationTimeActual = @DistuebDccelerationTimeActual ,
				TensorSettingSC = @TensorSettingSC ,
				TensorSetting = @TensorSetting ,
				TensorSettingActual = @TensorSettingActual ,
				FeedRollerSettingSC = @FeedRollerSettingSC ,
				FeedRollerSetting = @FeedRollerSetting ,
				FeedRollerSettingActual = @FeedRollerSettingActual ,
				BollonSettingSC = @BollonSettingSC ,
				BollonSetting = @BollonSetting ,
				BollonSettingActual = @BollonSettingActual ,
				MethodOfKnotSC = @MethodOfKnotSC ,
				MethodOfKnot = @MethodOfKnot ,
				MethodOfKnotActual = @MethodOfKnotActual ,
				WindQuantitySC = @WindQuantitySC ,
				WindQuantity = @WindQuantity ,
				WindQuantityErr = @WindQuantityErr ,
				WindQuantityActual = @WindQuantityActual ,
				DoffTimeSC = @DoffTimeSC ,
				DoffTime = @DoffTime ,
				DoffTimeErr = @DoffTimeErr ,
				DoffTimeActual = @DoffTimeActual ,
				ProductQuantitySC = @ProductQuantitySC ,
				ProductQuantityKg = @ProductQuantityKg ,
				ProductQuantityKgActual = @ProductQuantityKgActual ,
				ProductQuantityDay = @ProductQuantityDay ,
				ProductQuantityDayActual = @ProductQuantityDayActual ,
				CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber = @CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation = @NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
				YarnSpeedSC = @YarnSpeedSC ,
				YarnSpeed = @YarnSpeed ,
				YarnSpeedErr = @YarnSpeedErr ,
				YarnSpeedActual = @YarnSpeedActual ,
				SpecialMentionSC = @SpecialMentionSC ,
				SpecialMention = @SpecialMention ,
				SpecialMentionActual = @SpecialMentionActual
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S4x2Condition
		    (
                ProductCode,
				FullPackageModeSC,
				FullPackageMode,
				FullPackageModeActual,
				LengthSC,
				[Length],
				LengthErr,
				LengthActual,
				WindAngleShiftFunctionSC,
				WindAngleShiftFunction,
				WindAngleShiftFunctionActual,
				AmountOfDisturbSC,
				AmountOfDisturb,
				AmountOfDisturbActual,
				WindAngleSC,
				WindAngle,
				WindAngleActual,
				DistuebAccelerationTimeSC,
				DistuebAccelerationTime,
				DistuebAccelerationTimeActual,
				DistuebDccelerationTimeSC,
				DistuebDccelerationTime,
				DistuebDccelerationTimeActual,
				TensorSettingSC,
				TensorSetting,
				TensorSettingActual,
				FeedRollerSettingSC,
				FeedRollerSetting,
				FeedRollerSettingActual,
				BollonSettingSC,
				BollonSetting,
				BollonSettingActual,
				MethodOfKnotSC,
				MethodOfKnot,
				MethodOfKnotActual,
				WindQuantitySC,
				WindQuantity,
				WindQuantityErr,
				WindQuantityActual,
				DoffTimeSC,
				DoffTime,
				DoffTimeErr,
				DoffTimeActual,
				ProductQuantitySC,
				ProductQuantityKg,
				ProductQuantityKgActual,
				ProductQuantityDay,
				ProductQuantityDayActual,
				CalculatedTwistingNumberSC,
				CalculatedTwistingNumber,
				CalculatedTwistingNumberErr,
				CalculatedTwistingNumberActual,
				NumberOfSpindleRotationSC,
				NumberOfSpindleRotation,
				NumberOfSpindleRotationErr,
				NumberOfSpindleRotationActual,
				YarnSpeedSC,
				YarnSpeed,
				YarnSpeedErr,
				YarnSpeedActual,
				SpecialMentionSC,
				SpecialMention,
				SpecialMentionActual
			)
			VALUES
			(
                @ProductCode ,
				@FullPackageModeSC  ,
				@FullPackageMode ,
				@FullPackageModeActual ,
				@LengthSC  ,
				@Length ,
				@LengthErr ,
				@LengthActual ,
				@WindAngleShiftFunctionSC  ,
				@WindAngleShiftFunction ,
				@WindAngleShiftFunctionActual ,
				@AmountOfDisturbSC  ,
				@AmountOfDisturb ,
				@AmountOfDisturbActual ,
				@WindAngleSC  ,
				@WindAngle ,
				@WindAngleActual ,
				@DistuebAccelerationTimeSC  ,
				@DistuebAccelerationTime ,
				@DistuebAccelerationTimeActual ,
				@DistuebDccelerationTimeSC  ,
				@DistuebDccelerationTime ,
				@DistuebDccelerationTimeActual ,
				@TensorSettingSC  ,
				@TensorSetting ,
				@TensorSettingActual ,
				@FeedRollerSettingSC  ,
				@FeedRollerSetting ,
				@FeedRollerSettingActual ,
				@BollonSettingSC  ,
				@BollonSetting ,
				@BollonSettingActual ,
				@MethodOfKnotSC  ,
				@MethodOfKnot ,
				@MethodOfKnotActual ,
				@WindQuantitySC  ,
				@WindQuantity ,
				@WindQuantityErr ,
				@WindQuantityActual ,
				@DoffTimeSC  ,
				@DoffTime ,
				@DoffTimeErr ,
				@DoffTimeActual ,
				@ProductQuantitySC  ,
				@ProductQuantityKg ,
				@ProductQuantityKgActual ,
				@ProductQuantityDay ,
				@ProductQuantityDayActual ,
				@CalculatedTwistingNumberSC  ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC  ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC  ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC  ,
				@SpecialMention ,
				@SpecialMentionActual 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[GetS4x1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x1ConditionStd
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x1ConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
			 TwistChangeGearSC ,
			 TwistChangeGearE ,
			 TwistChangeGearF ,
			 TwistChangeGearG ,
			 TwistChangeGearH ,
			 MotorPulleyDiaSC ,
			 MotorPulleyDia ,
			 DrivingPulleyDiaSC ,
			 DrivingPulleyDia ,
			 OverFeedSC ,
			 OverFeedRate ,
			 OverFeedGear ,
			 WindAngleSC ,
			 WindAngleDeg ,
			 WindAngleGearA ,
			 WindAngleGearB ,
			 TensorDialSetSC,
			 TensorDialSet,
			 NumberOfLoopSC ,
			 NumberOfLoop ,
			 NumberOfLoopErr ,
			 MethodOfKnotSC ,
			 MethodOfKnot ,
			 WindQuantitySC ,
			 WindQuantity ,
			 WindQuantityErr ,
			 LengthSC ,
			 [Length] ,
			 LengthErr ,
			 DoffTimeSC ,
			 DoffTime ,
			 DoffTimeErr ,
			 ProductQuantitySC ,
			 ProductQuantityKg ,
			 ProductQuantityDay ,
			 CalculatedTwistingNumberSC ,
			 CalculatedTwistingNumber ,
			 CalculatedTwistingNumberErr ,
			 NumberOfSpindleRotationSC ,
			 NumberOfSpindleRotation ,
			 NumberOfSpindleRotationErr ,
			 YarnSpeedSC ,
			 YarnSpeed ,
			 YarnSpeedErr ,
			 SpecialMentionSC ,
			 SpecialMention 
      FROM S4x1ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[GetS4x1Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x1Condition
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x1Condition]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT  ProductCode ,
			 TwistChangeGearSC ,
			 TwistChangeGearE ,
			 TwistChangeGearEActual ,
			 TwistChangeGearF ,
			 TwistChangeGearFActual ,
			 TwistChangeGearG ,
			 TwistChangeGearGActual ,
			 TwistChangeGearH ,
			 TwistChangeGearHActual ,
			 MotorPulleyDiaSC ,
			 MotorPulleyDia ,
			 MotorPulleyDiaActual ,
			 DrivingPulleyDiaSC ,
			 DrivingPulleyDia ,
			 DrivingPulleyDiaActual ,
			 OverFeedSC ,
			 OverFeedRate ,
			 OverFeedRateActual ,
			 OverFeedGear ,
			 OverFeedGearActual ,
			 WindAngleSC ,
			 WindAngleDeg ,
			 WindAngleDegActual ,
			 WindAngleGearA ,
			 WindAngleGearAActual ,
			 WindAngleGearB ,
			 WindAngleGearBActual ,
			 TensorDialSetSC,
			 TensorDialSet,
			 TensorDialSetActual,
			 NumberOfLoopSC ,
			 NumberOfLoop ,
			 NumberOfLoopErr ,
			 NumberOfLoopActual ,
			 MethodOfKnotSC ,
			 MethodOfKnot ,
			 MethodOfKnotActual ,
			 WindQuantitySC ,
			 WindQuantity ,
			 WindQuantityErr ,
			 WindQuantityActual ,
			 LengthSC ,
			 [Length] ,
			 LengthErr ,
			 LengthActual ,
			 DoffTimeSC ,
			 DoffTime ,
			 DoffTimeErr ,
			 DoffTimeActual ,
			 ProductQuantitySC ,
			 ProductQuantityKg ,
			 ProductQuantityKgActual ,
			 ProductQuantityDay ,
			 ProductQuantityDayActual ,
			 CalculatedTwistingNumberSC ,
			 CalculatedTwistingNumber ,
			 CalculatedTwistingNumberErr ,
			 CalculatedTwistingNumberActual ,
			 NumberOfSpindleRotationSC ,
			 NumberOfSpindleRotation ,
			 NumberOfSpindleRotationErr ,
			 NumberOfSpindleRotationActual ,
			 YarnSpeedSC ,
			 YarnSpeed ,
			 YarnSpeedErr ,
			 YarnSpeedActual ,
			 SpecialMentionSC ,
			 SpecialMention ,
			 SpecialMentionActual
      FROM S4x1Condition
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[GetS4x2ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x2ConditionStd
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x2ConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
	FullPackageModeSC,
	FullPackageMode,
	LengthSC,
	[Length],
	LengthErr,
	WindAngleShiftFunctionSC,
	WindAngleShiftFunction,
	AmountOfDisturbSC,
	AmountOfDisturb,
	WindAngleSC,
	WindAngle,
	DistuebAccelerationTimeSC,
	DistuebAccelerationTime,
	DistuebDccelerationTimeSC,
	DistuebDccelerationTime,
	TensorSettingSC,
	TensorSetting,
	FeedRollerSettingSC,
	FeedRollerSetting,
	BollonSettingSC,
	BollonSetting,
	MethodOfKnotSC,
	MethodOfKnot,
	WindQuantitySC,
	WindQuantity,
	WindQuantityErr,
	DoffTimeSC,
	DoffTime,
	DoffTimeErr,
	ProductQuantitySC,
	ProductQuantityKg,
	ProductQuantityDay,
	CalculatedTwistingNumberSC,
	CalculatedTwistingNumber,
	CalculatedTwistingNumberErr,
	NumberOfSpindleRotationSC,
	NumberOfSpindleRotation,
	NumberOfSpindleRotationErr,
	YarnSpeedSC,
	YarnSpeed,
	YarnSpeedErr,
	SpecialMentionSC,
	SpecialMention
      FROM S4x2ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[GetS4x2Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x2Condition
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x2Condition]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
	FullPackageModeSC,
	FullPackageMode,
	FullPackageModeActual,
	LengthSC,
	[Length],
	LengthErr,
	LengthActual,
	WindAngleShiftFunctionSC,
	WindAngleShiftFunction,
	WindAngleShiftFunctionActual,
	AmountOfDisturbSC,
	AmountOfDisturb,
	AmountOfDisturbActual,
	WindAngleSC,
	WindAngle,
	WindAngleActual,
	DistuebAccelerationTimeSC,
	DistuebAccelerationTime,
	DistuebAccelerationTimeActual,
	DistuebDccelerationTimeSC,
	DistuebDccelerationTime,
	DistuebDccelerationTimeActual,
	TensorSettingSC,
	TensorSetting,
	TensorSettingActual,
	FeedRollerSettingSC,
	FeedRollerSetting,
	FeedRollerSettingActual,
	BollonSettingSC,
	BollonSetting,
	BollonSettingActual,
	MethodOfKnotSC,
	MethodOfKnot,
	MethodOfKnotActual,
	WindQuantitySC,
	WindQuantity,
	WindQuantityErr,
	WindQuantityActual,
	DoffTimeSC,
	DoffTime,
	DoffTimeErr,
	DoffTimeActual,
	ProductQuantitySC,
	ProductQuantityKg,
	ProductQuantityKgActual,
	ProductQuantityDay,
	ProductQuantityDayActual,
	CalculatedTwistingNumberSC,
	CalculatedTwistingNumber,
	CalculatedTwistingNumberErr,
	CalculatedTwistingNumberActual,
	NumberOfSpindleRotationSC,
	NumberOfSpindleRotation,
	NumberOfSpindleRotationErr,
	NumberOfSpindleRotationActual,
	YarnSpeedSC,
	YarnSpeed,
	YarnSpeedErr,
	YarnSpeedActual,
	SpecialMentionSC,
	SpecialMention,
	SpecialMentionActual
      FROM S4x2Condition
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS5ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS5ConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS5ConditionStd] (
	@ProductCode nvarchar (30),
	@MainSupplySteamPressureSC bit,
	@MainSupplySteamPressureSet decimal (18, 3),
	@MainSupplySteamPressureSetErr decimal (18, 3),
	@MainSupplySteamPressureSpec decimal (18, 3),
	@MainSupplySteamPressureSpecErr decimal (18, 3),
	@AgeingSteamPressureSC bit,
	@AgeingSteamPressureSet decimal (18, 3),
	@AgeingSteamPressureSetErr decimal (18, 3),
	@AgeingSteamPressureSpec decimal (18, 3),
	@AgeingSteamPressureSpecErr decimal (18, 3),
	@SettingTemperatureSC bit,
	@SettingTemperatureSet decimal (18, 3),
	@SettingTemperatureSetErr decimal (18, 3),
	@SettingTemperatureSpec decimal (18, 3),
	@SettingTemperatureSpecErr decimal (18, 3),
	@SettingTimeSC bit,
	@SettingTimeSet decimal (18, 3),
	@SettingTimeSetErr decimal (18, 3),
	@SettingTimeSpec decimal (18, 3),
	@SettingTimeSpecErr decimal (18, 3),
	@LampStatusSystemSC bit,
	@LampStatusSystemSet nvarchar (100),
	@LampStatusSystemSpec nvarchar (100),
	@SoudSystemTemperatureSC bit,
	@SoudSystemTemperatureSet nvarchar (100),
	@SoudSystemTemperatureSpec nvarchar (100),
	@YarnTypeSC bit,
	@YarnTypeSet nvarchar (100),
	@YarnTypeSpec nvarchar (100),
	@CordStructureSC bit,
	@CordStructureSet nvarchar (100),
	@CordStructureSpec nvarchar (100),
	@TwistingNoSC bit,
	@TwistingNoSet decimal (18, 3),
	@TwistingNoSetErr decimal (18, 3),
	@TwistingNoSpec decimal (18, 3),
	@TwistingNoSpecErr decimal (18, 3),
	@UnitWeightSC bit,
	@UnitWeightSet decimal (18, 3),
	@UnitWeightSetErr decimal (18, 3),
	@UnitWeightSpec decimal (18, 3),
	@UnitWeightSpecErr decimal (18, 3)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S5ConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S5ConditionStd 
               SET ProductCode = @ProductCode,
					MainSupplySteamPressureSC = @MainSupplySteamPressureSC,
					MainSupplySteamPressureSet = @MainSupplySteamPressureSet,
					MainSupplySteamPressureSetErr = @MainSupplySteamPressureSetErr,
					MainSupplySteamPressureSpec = @MainSupplySteamPressureSpec,
					MainSupplySteamPressureSpecErr = @MainSupplySteamPressureSpecErr,
					AgeingSteamPressureSC = @AgeingSteamPressureSC,
					AgeingSteamPressureSet = @AgeingSteamPressureSet,
					AgeingSteamPressureSetErr = @AgeingSteamPressureSetErr,
					AgeingSteamPressureSpec = @AgeingSteamPressureSpec ,
					AgeingSteamPressureSpecErr = @AgeingSteamPressureSpecErr ,
					SettingTemperatureSC = @SettingTemperatureSC ,
					SettingTemperatureSet = @SettingTemperatureSet ,
					SettingTemperatureSetErr = @SettingTemperatureSetErr ,
					SettingTemperatureSpec = @SettingTemperatureSpec ,
					SettingTemperatureSpecErr = @SettingTemperatureSpecErr ,
					SettingTimeSC = @SettingTimeSC ,
					SettingTimeSet = @SettingTimeSet ,
					SettingTimeSetErr = @SettingTimeSetErr ,
					SettingTimeSpec = @SettingTimeSpec ,
					SettingTimeSpecErr = @SettingTimeSpecErr ,
					LampStatusSystemSC = @LampStatusSystemSC ,
					LampStatusSystemSet = @LampStatusSystemSet ,
					LampStatusSystemSpec = @LampStatusSystemSpec ,
					SoudSystemTemperatureSC = @SoudSystemTemperatureSC ,
					SoudSystemTemperatureSet = @SoudSystemTemperatureSet ,
					SoudSystemTemperatureSpec = @SoudSystemTemperatureSpec ,
					YarnTypeSC = @YarnTypeSC ,
					YarnTypeSet = @YarnTypeSet ,
					YarnTypeSpec = @YarnTypeSpec ,
					CordStructureSC = @CordStructureSC ,
					CordStructureSet = @CordStructureSet ,
					CordStructureSpec = @CordStructureSpec ,
					TwistingNoSC = @TwistingNoSC ,
					TwistingNoSet = @TwistingNoSet ,
					TwistingNoSetErr = @TwistingNoSetErr ,
					TwistingNoSpec = @TwistingNoSpec ,
					TwistingNoSpecErr = @TwistingNoSpecErr ,
					UnitWeightSC = @UnitWeightSC ,
					UnitWeightSet = @UnitWeightSet ,
					UnitWeightSetErr = @UnitWeightSetErr ,
					UnitWeightSpec = @UnitWeightSpec ,
					UnitWeightSpecErr = @UnitWeightSpecErr
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S5ConditionStd
		    (
                ProductCode ,
				MainSupplySteamPressureSC ,
				MainSupplySteamPressureSet ,
				MainSupplySteamPressureSetErr ,
				MainSupplySteamPressureSpec ,
				MainSupplySteamPressureSpecErr ,
				AgeingSteamPressureSC ,
				AgeingSteamPressureSet ,
				AgeingSteamPressureSetErr ,
				AgeingSteamPressureSpec ,
				AgeingSteamPressureSpecErr ,
				SettingTemperatureSC ,
				SettingTemperatureSet ,
				SettingTemperatureSetErr ,
				SettingTemperatureSpec ,
				SettingTemperatureSpecErr ,
				SettingTimeSC ,
				SettingTimeSet ,
				SettingTimeSetErr ,
				SettingTimeSpec ,
				SettingTimeSpecErr ,
				LampStatusSystemSC ,
				LampStatusSystemSet ,
				LampStatusSystemSpec ,
				SoudSystemTemperatureSC ,
				SoudSystemTemperatureSet ,
				SoudSystemTemperatureSpec ,
				YarnTypeSC ,
				YarnTypeSet ,
				YarnTypeSpec ,
				CordStructureSC ,
				CordStructureSet ,
				CordStructureSpec ,
				TwistingNoSC ,
				TwistingNoSet ,
				TwistingNoSetErr ,
				TwistingNoSpec ,
				TwistingNoSpecErr ,
				UnitWeightSC ,
				UnitWeightSet ,
				UnitWeightSetErr ,
				UnitWeightSpec ,
				UnitWeightSpecErr        
			)
			VALUES
			(
                @ProductCode ,
				@MainSupplySteamPressureSC ,
				@MainSupplySteamPressureSet ,
				@MainSupplySteamPressureSetErr ,
				@MainSupplySteamPressureSpec ,
				@MainSupplySteamPressureSpecErr ,
				@AgeingSteamPressureSC ,
				@AgeingSteamPressureSet ,
				@AgeingSteamPressureSetErr ,
				@AgeingSteamPressureSpec ,
				@AgeingSteamPressureSpecErr ,
				@SettingTemperatureSC ,
				@SettingTemperatureSet ,
				@SettingTemperatureSetErr ,
				@SettingTemperatureSpec ,
				@SettingTemperatureSpecErr ,
				@SettingTimeSC ,
				@SettingTimeSet ,
				@SettingTimeSetErr ,
				@SettingTimeSpec ,
				@SettingTimeSpecErr ,
				@LampStatusSystemSC ,
				@LampStatusSystemSet ,
				@LampStatusSystemSpec ,
				@SoudSystemTemperatureSC ,
				@SoudSystemTemperatureSet ,
				@SoudSystemTemperatureSpec ,
				@YarnTypeSC ,
				@YarnTypeSet ,
				@YarnTypeSpec ,
				@CordStructureSC ,
				@CordStructureSet ,
				@CordStructureSpec ,
				@TwistingNoSC ,
				@TwistingNoSet ,
				@TwistingNoSetErr ,
				@TwistingNoSpec ,
				@TwistingNoSpecErr ,
				@UnitWeightSC ,
				@UnitWeightSet ,
				@UnitWeightSetErr ,
				@UnitWeightSpec ,
				@UnitWeightSpecErr 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS5Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS5Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS5Condition] (
	@ProductCode nvarchar (30),
	@MainSupplySteamPressureSC bit,
	@MainSupplySteamPressureSet decimal (18, 3),
	@MainSupplySteamPressureSetErr decimal (18, 3),
	@MainSupplySteamPressureSetActual decimal (18, 3),
	@MainSupplySteamPressureSpec decimal (18, 3),
	@MainSupplySteamPressureSpecErr decimal (18, 3),
	@MainSupplySteamPressureSpecActual decimal (18, 3),
	@AgeingSteamPressureSC bit,
	@AgeingSteamPressureSet decimal (18, 3),
	@AgeingSteamPressureSetErr decimal (18, 3),
	@AgeingSteamPressureSetActual decimal (18, 3),
	@AgeingSteamPressureSpec decimal (18, 3),
	@AgeingSteamPressureSpecErr decimal (18, 3),
	@AgeingSteamPressureActual decimal (18, 3),
	@SettingTemperatureSC bit,
	@SettingTemperatureSet decimal (18, 3),
	@SettingTemperatureSetErr decimal (18, 3),
	@SettingTemperatureSetActual decimal (18, 3),
	@SettingTemperatureSpec decimal (18, 3),
	@SettingTemperatureSpecErr decimal (18, 3),
	@SettingTemperatureSpecActual decimal (18, 3),
	@SettingTimeSC bit,
	@SettingTimeSet decimal (18, 3),
	@SettingTimeSetErr decimal (18, 3),
	@SettingTimeSetActual decimal (18, 3),
	@SettingTimeSpec decimal (18, 3),
	@SettingTimeSpecErr decimal (18, 3),
	@SettingTimeSpecActual decimal (18, 3),
	@LampStatusSystemSC bit,
	@LampStatusSystemSet nvarchar (100),
	@LampStatusSystemSetActual bit,
	@LampStatusSystemSpec nvarchar (100),
	@LampStatusSystemSpecActual bit,
	@SoudSystemTemperatureSC bit,
	@SoudSystemTemperatureSet nvarchar (100),
	@SoudSystemTemperatureSetActual bit,
	@SoudSystemTemperatureSpec nvarchar (100),
	@SoudSystemTemperatureSpecActual bit,
	@YarnTypeSC bit,
	@YarnTypeSet nvarchar (100),
	@YarnTypeSetActual nvarchar (100),
	@YarnTypeSpec nvarchar (100),
	@YarnTypeSpecActual nvarchar (100),
	@CordStructureSC bit,
	@CordStructureSet nvarchar (100),
	@CordStructureSetActual nvarchar (100),
	@CordStructureSpec nvarchar (100),
	@CordStructureSpecActual nvarchar (100),
	@TwistingNoSC bit,
	@TwistingNoSet decimal (18, 3),
	@TwistingNoSetErr decimal (18, 3),
	@TwistingNoSetActual decimal (18, 3),
	@TwistingNoSpec decimal (18, 3),
	@TwistingNoSpecErr decimal (18, 3),
	@TwistingNoSpecActual decimal (18, 3),
	@UnitWeightSC bit,
	@UnitWeightSet decimal (18, 3),
	@UnitWeightSetErr decimal (18, 3),
	@UnitWeightSetActual decimal (18, 3),
	@UnitWeightSpec decimal (18, 3),
	@UnitWeightSpecErr decimal (18, 3),
	@UnitWeightSpecActual decimal (18, 3),
	@StartingTimeSC bit,
	@StartingTimeSettingTime datetime,
	@StartingTimeStartAgeingTime datetime,
	@FinishTimeSC bit,
	@FinishTime datetime,
	@OutTimeSC bit,
	@OutTime datetime,
	@DoffNo1SC bit,
	@DoffNo1MCNo nvarchar (50),
	@DoffNo1Doff nvarchar (50),
	@DoffNo1Qty nvarchar (50),
	@DoffNo2SC bit,
	@DoffNo2MCNo nvarchar (50),
	@DoffNo2Doff nvarchar (50),
	@DoffNo2Qty nvarchar (50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S5Condition WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S5Condition 
               SET ProductCode = @ProductCode,
					MainSupplySteamPressureSC = @MainSupplySteamPressureSC,
					MainSupplySteamPressureSet = @MainSupplySteamPressureSet,
					MainSupplySteamPressureSetErr = @MainSupplySteamPressureSetErr,
					MainSupplySteamPressureSetActual = @MainSupplySteamPressureSetActual,
					MainSupplySteamPressureSpec = @MainSupplySteamPressureSpec,
					MainSupplySteamPressureSpecErr = @MainSupplySteamPressureSpecErr,
					MainSupplySteamPressureSpecActual = @MainSupplySteamPressureSpecActual,
					AgeingSteamPressureSC = @AgeingSteamPressureSC,
					AgeingSteamPressureSet = @AgeingSteamPressureSet,
					AgeingSteamPressureSetErr = @AgeingSteamPressureSetErr,
					AgeingSteamPressureSetActual = @AgeingSteamPressureSetActual ,
					AgeingSteamPressureSpec = @AgeingSteamPressureSpec ,
					AgeingSteamPressureSpecErr = @AgeingSteamPressureSpecErr ,
					AgeingSteamPressureActual = @AgeingSteamPressureActual ,
					SettingTemperatureSC = @SettingTemperatureSC ,
					SettingTemperatureSet = @SettingTemperatureSet ,
					SettingTemperatureSetErr = @SettingTemperatureSetErr ,
					SettingTemperatureSetActual = @SettingTemperatureSetActual ,
					SettingTemperatureSpec = @SettingTemperatureSpec ,
					SettingTemperatureSpecErr = @SettingTemperatureSpecErr ,
					SettingTemperatureSpecActual = @SettingTemperatureSpecActual ,
					SettingTimeSC = @SettingTimeSC ,
					SettingTimeSet = @SettingTimeSet ,
					SettingTimeSetErr = @SettingTimeSetErr ,
					SettingTimeSetActual = @SettingTimeSetActual ,
					SettingTimeSpec = @SettingTimeSpec ,
					SettingTimeSpecErr = @SettingTimeSpecErr ,
					SettingTimeSpecActual = @SettingTimeSpecActual ,
					LampStatusSystemSC = @LampStatusSystemSC ,
					LampStatusSystemSet = @LampStatusSystemSet ,
					LampStatusSystemSetActual = @LampStatusSystemSetActual ,
					LampStatusSystemSpec = @LampStatusSystemSpec ,
					LampStatusSystemSpecActual = @LampStatusSystemSpecActual ,
					SoudSystemTemperatureSC = @SoudSystemTemperatureSC ,
					SoudSystemTemperatureSet = @SoudSystemTemperatureSet ,
					SoudSystemTemperatureSetActual = @SoudSystemTemperatureSetActual ,
					SoudSystemTemperatureSpec = @SoudSystemTemperatureSpec ,
					SoudSystemTemperatureSpecActual = @SoudSystemTemperatureSpecActual ,
					YarnTypeSC = @YarnTypeSC ,
					YarnTypeSet = @YarnTypeSet ,
					YarnTypeSetActual = @YarnTypeSetActual ,
					YarnTypeSpec = @YarnTypeSpec ,
					YarnTypeSpecActual = @YarnTypeSpecActual ,
					CordStructureSC = @CordStructureSC ,
					CordStructureSet = @CordStructureSet ,
					CordStructureSetActual = @CordStructureSetActual ,
					CordStructureSpec = @CordStructureSpec ,
					CordStructureSpecActual = @CordStructureSpecActual ,
					TwistingNoSC = @TwistingNoSC ,
					TwistingNoSet = @TwistingNoSet ,
					TwistingNoSetErr = @TwistingNoSetErr ,
					TwistingNoSetActual = @TwistingNoSetActual ,
					TwistingNoSpec = @TwistingNoSpec ,
					TwistingNoSpecErr = @TwistingNoSpecErr ,
					TwistingNoSpecActual = @TwistingNoSpecActual ,
					UnitWeightSC = @UnitWeightSC ,
					UnitWeightSet = @UnitWeightSet ,
					UnitWeightSetErr = @UnitWeightSetErr ,
					UnitWeightSetActual = @UnitWeightSetActual ,
					UnitWeightSpec = @UnitWeightSpec ,
					UnitWeightSpecErr = @UnitWeightSpecErr ,
					UnitWeightSpecActual = @UnitWeightSpecActual ,
					StartingTimeSC = @StartingTimeSC ,
					StartingTimeSettingTime = @StartingTimeSettingTime ,
					StartingTimeStartAgeingTime = @StartingTimeStartAgeingTime ,
					FinishTimeSC = @FinishTimeSC ,
					FinishTime = @FinishTime ,
					OutTimeSC = @OutTimeSC ,
					OutTime = @OutTime ,
					DoffNo1SC = @DoffNo1SC ,
					DoffNo1MCNo = @DoffNo1MCNo ,
					DoffNo1Doff = @DoffNo1Doff ,
					DoffNo1Qty = @DoffNo1Qty ,
					DoffNo2SC = @DoffNo2SC ,
					DoffNo2MCNo = @DoffNo2MCNo ,
					DoffNo2Doff = @DoffNo2Doff ,
					DoffNo2Qty = @DoffNo2Qty 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S5Condition
		    (
                ProductCode ,
				MainSupplySteamPressureSC ,
				MainSupplySteamPressureSet ,
				MainSupplySteamPressureSetErr ,
				MainSupplySteamPressureSetActual ,
				MainSupplySteamPressureSpec ,
				MainSupplySteamPressureSpecErr ,
				MainSupplySteamPressureSpecActual ,
				AgeingSteamPressureSC ,
				AgeingSteamPressureSet ,
				AgeingSteamPressureSetErr ,
				AgeingSteamPressureSetActual ,
				AgeingSteamPressureSpec ,
				AgeingSteamPressureSpecErr ,
				AgeingSteamPressureActual ,
				SettingTemperatureSC ,
				SettingTemperatureSet ,
				SettingTemperatureSetErr ,
				SettingTemperatureSetActual ,
				SettingTemperatureSpec ,
				SettingTemperatureSpecErr ,
				SettingTemperatureSpecActual ,
				SettingTimeSC ,
				SettingTimeSet ,
				SettingTimeSetErr ,
				SettingTimeSetActual ,
				SettingTimeSpec ,
				SettingTimeSpecErr ,
				SettingTimeSpecActual ,
				LampStatusSystemSC ,
				LampStatusSystemSet ,
				LampStatusSystemSetActual ,
				LampStatusSystemSpec ,
				LampStatusSystemSpecActual ,
				SoudSystemTemperatureSC ,
				SoudSystemTemperatureSet ,
				SoudSystemTemperatureSetActual ,
				SoudSystemTemperatureSpec ,
				SoudSystemTemperatureSpecActual ,
				YarnTypeSC ,
				YarnTypeSet ,
				YarnTypeSetActual ,
				YarnTypeSpec ,
				YarnTypeSpecActual ,
				CordStructureSC ,
				CordStructureSet ,
				CordStructureSetActual ,
				CordStructureSpec ,
				CordStructureSpecActual ,
				TwistingNoSC ,
				TwistingNoSet ,
				TwistingNoSetErr ,
				TwistingNoSetActual ,
				TwistingNoSpec ,
				TwistingNoSpecErr ,
				TwistingNoSpecActual ,
				UnitWeightSC ,
				UnitWeightSet ,
				UnitWeightSetErr ,
				UnitWeightSetActual ,
				UnitWeightSpec ,
				UnitWeightSpecErr ,
				UnitWeightSpecActual ,
				StartingTimeSC ,
				StartingTimeSettingTime,
				StartingTimeStartAgeingTime,
				FinishTimeSC ,
				FinishTime,
				OutTimeSC ,
				OutTime,
				DoffNo1SC ,
				DoffNo1MCNo,
				DoffNo1Doff,
				DoffNo1Qty,
				DoffNo2SC ,
				DoffNo2MCNo,
				DoffNo2Doff,
				DoffNo2Qty        
			)
			VALUES
			(
                @ProductCode ,
				@MainSupplySteamPressureSC ,
				@MainSupplySteamPressureSet ,
				@MainSupplySteamPressureSetErr ,
				@MainSupplySteamPressureSetActual ,
				@MainSupplySteamPressureSpec ,
				@MainSupplySteamPressureSpecErr ,
				@MainSupplySteamPressureSpecActual ,
				@AgeingSteamPressureSC ,
				@AgeingSteamPressureSet ,
				@AgeingSteamPressureSetErr ,
				@AgeingSteamPressureSetActual ,
				@AgeingSteamPressureSpec ,
				@AgeingSteamPressureSpecErr ,
				@AgeingSteamPressureActual ,
				@SettingTemperatureSC ,
				@SettingTemperatureSet ,
				@SettingTemperatureSetErr ,
				@SettingTemperatureSetActual ,
				@SettingTemperatureSpec ,
				@SettingTemperatureSpecErr ,
				@SettingTemperatureSpecActual ,
				@SettingTimeSC ,
				@SettingTimeSet ,
				@SettingTimeSetErr ,
				@SettingTimeSetActual ,
				@SettingTimeSpec ,
				@SettingTimeSpecErr ,
				@SettingTimeSpecActual ,
				@LampStatusSystemSC ,
				@LampStatusSystemSet ,
				@LampStatusSystemSetActual ,
				@LampStatusSystemSpec ,
				@LampStatusSystemSpecActual ,
				@SoudSystemTemperatureSC ,
				@SoudSystemTemperatureSet ,
				@SoudSystemTemperatureSetActual ,
				@SoudSystemTemperatureSpec ,
				@SoudSystemTemperatureSpecActual ,
				@YarnTypeSC ,
				@YarnTypeSet ,
				@YarnTypeSetActual ,
				@YarnTypeSpec ,
				@YarnTypeSpecActual ,
				@CordStructureSC ,
				@CordStructureSet ,
				@CordStructureSetActual ,
				@CordStructureSpec ,
				@CordStructureSpecActual ,
				@TwistingNoSC ,
				@TwistingNoSet ,
				@TwistingNoSetErr ,
				@TwistingNoSetActual ,
				@TwistingNoSpec ,
				@TwistingNoSpecErr ,
				@TwistingNoSpecActual ,
				@UnitWeightSC ,
				@UnitWeightSet ,
				@UnitWeightSetErr ,
				@UnitWeightSetActual ,
				@UnitWeightSpec ,
				@UnitWeightSpecErr ,
				@UnitWeightSpecActual ,
				@StartingTimeSC ,
				@StartingTimeSettingTime,
				@StartingTimeStartAgeingTime,
				@FinishTimeSC ,
				@FinishTime,
				@OutTimeSC ,
				@OutTime,
				@DoffNo1SC ,
				@DoffNo1MCNo,
				@DoffNo1Doff,
				@DoffNo1Qty,
				@DoffNo2SC ,
				@DoffNo2MCNo,
				@DoffNo2Doff,
				@DoffNo2Qty
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[GetS5ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS5ConditionStd
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS5ConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT  ProductCode ,
			MainSupplySteamPressureSC ,
			MainSupplySteamPressureSet ,
			MainSupplySteamPressureSetErr ,
			MainSupplySteamPressureSpec ,
			MainSupplySteamPressureSpecErr ,
			AgeingSteamPressureSC ,
			AgeingSteamPressureSet ,
			AgeingSteamPressureSetErr ,
			AgeingSteamPressureSpec ,
			AgeingSteamPressureSpecErr ,
			SettingTemperatureSC ,
			SettingTemperatureSet ,
			SettingTemperatureSetErr ,
			SettingTemperatureSpec ,
			SettingTemperatureSpecErr ,
			SettingTimeSC ,
			SettingTimeSet ,
			SettingTimeSetErr ,
			SettingTimeSpec ,
			SettingTimeSpecErr ,
			LampStatusSystemSC ,
			LampStatusSystemSet ,
			LampStatusSystemSpec ,
			SoudSystemTemperatureSC ,
			SoudSystemTemperatureSet ,
			SoudSystemTemperatureSpec ,
			YarnTypeSC ,
			YarnTypeSet ,
			YarnTypeSpec ,
			CordStructureSC ,
			CordStructureSet ,
			CordStructureSpec ,
			TwistingNoSC ,
			TwistingNoSet ,
			TwistingNoSetErr ,
			TwistingNoSpec ,
			TwistingNoSpecErr ,
			UnitWeightSC ,
			UnitWeightSet ,
			UnitWeightSetErr ,
			UnitWeightSpec ,
			UnitWeightSpecErr 
     FROM S5ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[GetS5Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS5Condition
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS5Condition]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT  ProductCode ,
			MainSupplySteamPressureSC ,
			MainSupplySteamPressureSet ,
			MainSupplySteamPressureSetErr ,
			MainSupplySteamPressureSetActual ,
			MainSupplySteamPressureSpec ,
			MainSupplySteamPressureSpecErr ,
			MainSupplySteamPressureSpecActual ,
			AgeingSteamPressureSC ,
			AgeingSteamPressureSet ,
			AgeingSteamPressureSetErr ,
			AgeingSteamPressureSetActual ,
			AgeingSteamPressureSpec ,
			AgeingSteamPressureSpecErr ,
			AgeingSteamPressureActual ,
			SettingTemperatureSC ,
			SettingTemperatureSet ,
			SettingTemperatureSetErr ,
			SettingTemperatureSetActual ,
			SettingTemperatureSpec ,
			SettingTemperatureSpecErr ,
			SettingTemperatureSpecActual ,
			SettingTimeSC ,
			SettingTimeSet ,
			SettingTimeSetErr ,
			SettingTimeSetActual ,
			SettingTimeSpec ,
			SettingTimeSpecErr ,
			SettingTimeSpecActual ,
			LampStatusSystemSC ,
			LampStatusSystemSet ,
			LampStatusSystemSetActual ,
			LampStatusSystemSpec ,
			LampStatusSystemSpecActual ,
			SoudSystemTemperatureSC ,
			SoudSystemTemperatureSet ,
			SoudSystemTemperatureSetActual ,
			SoudSystemTemperatureSpec ,
			SoudSystemTemperatureSpecActual ,
			YarnTypeSC ,
			YarnTypeSet ,
			YarnTypeSetActual ,
			YarnTypeSpec ,
			YarnTypeSpecActual ,
			CordStructureSC ,
			CordStructureSet ,
			CordStructureSetActual ,
			CordStructureSpec ,
			CordStructureSpecActual ,
			TwistingNoSC ,
			TwistingNoSet ,
			TwistingNoSetErr ,
			TwistingNoSetActual ,
			TwistingNoSpec ,
			TwistingNoSpecErr ,
			TwistingNoSpecActual ,
			UnitWeightSC ,
			UnitWeightSet ,
			UnitWeightSetErr ,
			UnitWeightSetActual ,
			UnitWeightSpec ,
			UnitWeightSpecErr ,
			UnitWeightSpecActual ,
			StartingTimeSC ,
			StartingTimeSettingTime ,
			StartingTimeStartAgeingTime ,
			FinishTimeSC ,
			FinishTime ,
			OutTimeSC ,
			OutTime ,
			DoffNo1SC ,
			DoffNo1MCNo ,
			DoffNo1Doff ,
			DoffNo1Qty ,
			DoffNo2SC ,
			DoffNo2MCNo ,
			DoffNo2Doff ,
			DoffNo2Qty 
     FROM S5Condition
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SaveCordSamplingDetails]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveCordSamplingDetails
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveCordSamplingDetails] (
  	@TwistYarn bit,
	@CordDipping bit,
	@Rawmaterial bit,
	@SamplingDate datetime,
	@CustomerName nvarchar (100) ,
	@ProductCode nvarchar (30) ,
	@CordStructure nvarchar (100) ,
	@LotNo nvarchar (50) ,
	@ProductionSituationTwisting bit,
	@ProductionSituationHeatSet bit,
	@ProductionSituationDipCord bit,
	@ProductionSituationJointing bit,
	@StandardOfTwisting nvarchar (100) ,
	@S1 bit,
	@S2 bit,
	@S4 bit,
	@S8 bit,
	@S19 bit,
	@Bobbin bit,
	@Cheese bit,
	@TaperBB bit,
	@ContainerOthers bit,
	@SpindleNo nvarchar (100) ,
	@Quantity nvarchar (100) ,
	@Polyester bit,
	@Nylon66 bit,
	@MaterialOthers bit,
	@YarnType nvarchar (100) ,
	@Process bit,
	@Product bit,
	@Special bit,
	@Trial bit,
	@Shift nvarchar (50) ,
	@ShiftName nvarchar (100) ,
	@Remark nvarchar (100) ,
	@Direct bit,
	@Relax bit,
	@Relax_k nvarchar (50) ,
	@Relax_n nvarchar (50) ,
	@Necessary bit,
	@NotNecessary bit,
	@SpecialMentionJointing bit,
	@SpecialMentionNoJointing bit,
	@TensileR1 decimal (18, 3) ,
	@TensileL1 decimal (18, 3) ,
	@TensileR2 decimal (18, 3) ,
	@TensileL2 decimal (18, 3) ,
	@TensileR3 decimal (18, 3) ,
	@TensileL3 decimal (18, 3) ,
	@TensileR4 decimal (18, 3) ,
	@TensileL4 decimal (18, 3) ,
	@TensileR5 decimal (18, 3) ,
	@TensileL5 decimal (18, 3) ,
	@TensileRSum decimal (18, 3) ,
	@TensileLSum decimal (18, 3) ,
	@FirstTwistingR1 decimal (18, 3) ,
	@FirstTwistingL1 decimal (18, 3) ,
	@FirstTwistingR2 decimal (18, 3) ,
	@FirstTwistingL2 decimal (18, 3) ,
	@FirstTwistingR3 decimal (18, 3) ,
	@FirstTwistingL3 decimal (18, 3) ,
	@FirstTwistingR4 decimal (18, 3) ,
	@FirstTwistingL4 decimal (18, 3) ,
	@FirstTwistingR5 decimal (18, 3) ,
	@FirstTwistingL5 decimal (18, 3) ,
	@FirstTwistingRSum decimal (18, 3) ,
	@FirstTwistingLSum decimal (18, 3) ,
	@SecondTwistingR1 decimal (18, 3) ,
	@SecondTwistingL1 decimal (18, 3) ,
	@SecondTwistingR2 decimal (18, 3) ,
	@SecondTwistingL2 decimal (18, 3) ,
	@SecondTwistingR3 decimal (18, 3) ,
	@SecondTwistingL3 decimal (18, 3) ,
	@SecondTwistingR4 decimal (18, 3) ,
	@SecondTwistingL4 decimal (18, 3) ,
	@SecondTwistingR5 decimal (18, 3) ,
	@SecondTwistingL5 decimal (18, 3) ,
	@SecondTwistingRSum decimal (18, 3) ,
	@SecondTwistingLSum decimal (18, 3) ,
	@Remark1 nvarchar (100) ,
	@Remark2 nvarchar (100) ,
	@Remark3 nvarchar (100) ,
	@Remark4 nvarchar (100) ,
	@Remark5 nvarchar (100) ,
	@RemarkSum nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM CordSamplingDetails WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE CordSamplingDetails 
               SET 	TwistYarn = @TwistYarn ,
					CordDipping = @CordDipping ,
					Rawmaterial = @Rawmaterial ,
					SamplingDate = @SamplingDate ,
					CustomerName = @CustomerName ,
					ProductCode = @ProductCode ,
					CordStructure = @CordStructure ,
					LotNo = @LotNo ,
					ProductionSituationTwisting = @ProductionSituationTwisting ,
					ProductionSituationHeatSet = @ProductionSituationHeatSet ,
					ProductionSituationDipCord = @ProductionSituationDipCord ,
					ProductionSituationJointing = @ProductionSituationJointing ,
					StandardOfTwisting = @StandardOfTwisting ,
					S1 = @S1 ,
					S2 = @S2 ,
					S4 = @S4 ,
					S8 = @S8 ,
					S19 = @S19 ,
					Bobbin = @Bobbin ,
					Cheese = @Cheese ,
					TaperBB = @TaperBB ,
					ContainerOthers = @ContainerOthers ,
					SpindleNo = @SpindleNo ,
					Quantity = @Quantity ,
					Polyester = @Polyester ,
					Nylon66 = @Nylon66 ,
					MaterialOthers = @MaterialOthers ,
					YarnType = @YarnType ,
					Process = @Process ,
					Product = @Product ,
					Special = @Special ,
					Trial = @Trial ,
					[Shift] = @Shift ,
					ShiftName = @ShiftName ,
					Remark = @Remark ,
					Direct = @Direct ,
					Relax = @Relax ,
					Relax_k = @Relax_k ,
					Relax_n = @Relax_n ,
					Necessary = @Necessary ,
					NotNecessary = @NotNecessary ,
					SpecialMentionJointing = @SpecialMentionJointing ,
					SpecialMentionNoJointing = @SpecialMentionNoJointing ,
					TensileR1 = @TensileR1 ,
					TensileL1 = @TensileL1 ,
					TensileR2 = @TensileR2 ,
					TensileL2 = @TensileL2 ,
					TensileR3 = @TensileR3 ,
					TensileL3 = @TensileL3 ,
					TensileR4 = @TensileR4 ,
					TensileL4 = @TensileL4 ,
					TensileR5 = @TensileR5 ,
					TensileL5 = @TensileL5 ,
					TensileRSum = @TensileRSum ,
					TensileLSum = @TensileLSum ,
					FirstTwistingR1 = @FirstTwistingR1 ,
					FirstTwistingL1 = @FirstTwistingL1 ,
					FirstTwistingR2 = @FirstTwistingR2 ,
					FirstTwistingL2 = @FirstTwistingL2 ,
					FirstTwistingR3 = @FirstTwistingR3 ,
					FirstTwistingL3 = @FirstTwistingL3 ,
					FirstTwistingR4 = @FirstTwistingR4 ,
					FirstTwistingL4 = @FirstTwistingL4 ,
					FirstTwistingR5 = @FirstTwistingR5 ,
					FirstTwistingL5 = @FirstTwistingL5 ,
					FirstTwistingRSum = @FirstTwistingRSum ,
					FirstTwistingLSum = @FirstTwistingLSum ,
					SecondTwistingR1 = @SecondTwistingR1 ,
					SecondTwistingL1 = @SecondTwistingL1 ,
					SecondTwistingR2 = @SecondTwistingR2 ,
					SecondTwistingL2 = @SecondTwistingL2 ,
					SecondTwistingR3 = @SecondTwistingR3 ,
					SecondTwistingL3 = @SecondTwistingL3 ,
					SecondTwistingR4 = @SecondTwistingR4 ,
					SecondTwistingL4 = @SecondTwistingL4 ,
					SecondTwistingR5 = @SecondTwistingR5 ,
					SecondTwistingL5 = @SecondTwistingL5 ,
					SecondTwistingRSum = @SecondTwistingRSum ,
					SecondTwistingLSum = @SecondTwistingLSum ,
					Remark1 = @Remark1 ,
					Remark2 = @Remark2 ,
					Remark3 = @Remark3 ,
					Remark4 = @Remark4 ,
					Remark5 = @Remark5 ,
					RemarkSum = @RemarkSum 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO CordSamplingDetails
		    (
                TwistYarn ,
				CordDipping ,
				Rawmaterial ,
				SamplingDate ,
				CustomerName ,
				ProductCode ,
				CordStructure ,
				LotNo ,
				ProductionSituationTwisting ,
				ProductionSituationHeatSet ,
				ProductionSituationDipCord ,
				ProductionSituationJointing ,
				StandardOfTwisting ,
				S1 ,
				S2 ,
				S4 ,
				S8 ,
				S19 ,
				Bobbin ,
				Cheese ,
				TaperBB ,
				ContainerOthers ,
				SpindleNo ,
				Quantity ,
				Polyester ,
				Nylon66 ,
				MaterialOthers ,
				YarnType ,
				Process ,
				Product ,
				Special ,
				Trial ,
				[Shift] ,
				ShiftName ,
				Remark ,
				Direct ,
				Relax ,
				Relax_k ,
				Relax_n ,
				Necessary ,
				NotNecessary ,
				SpecialMentionJointing ,
				SpecialMentionNoJointing ,
				TensileR1 ,
				TensileL1 ,
				TensileR2 ,
				TensileL2 ,
				TensileR3 ,
				TensileL3 ,
				TensileR4 ,
				TensileL4 ,
				TensileR5 ,
				TensileL5 ,
				TensileRSum ,
				TensileLSum ,
				FirstTwistingR1 ,
				FirstTwistingL1 ,
				FirstTwistingR2 ,
				FirstTwistingL2 ,
				FirstTwistingR3 ,
				FirstTwistingL3 ,
				FirstTwistingR4 ,
				FirstTwistingL4 ,
				FirstTwistingR5 ,
				FirstTwistingL5 ,
				FirstTwistingRSum ,
				FirstTwistingLSum ,
				SecondTwistingR1 ,
				SecondTwistingL1 ,
				SecondTwistingR2 ,
				SecondTwistingL2 ,
				SecondTwistingR3 ,
				SecondTwistingL3 ,
				SecondTwistingR4 ,
				SecondTwistingL4 ,
				SecondTwistingR5 ,
				SecondTwistingL5 ,
				SecondTwistingRSum ,
				SecondTwistingLSum ,
				Remark1 ,
				Remark2 ,
				Remark3 ,
				Remark4 ,
				Remark5 ,
				RemarkSum        
			)
			VALUES
			(
                @TwistYarn ,
				@CordDipping ,
				@Rawmaterial ,
				@SamplingDate ,
				@CustomerName ,
				@ProductCode ,
				@CordStructure ,
				@LotNo ,
				@ProductionSituationTwisting ,
				@ProductionSituationHeatSet ,
				@ProductionSituationDipCord ,
				@ProductionSituationJointing ,
				@StandardOfTwisting ,
				@S1 ,
				@S2 ,
				@S4 ,
				@S8 ,
				@S19 ,
				@Bobbin ,
				@Cheese ,
				@TaperBB ,
				@ContainerOthers ,
				@SpindleNo ,
				@Quantity ,
				@Polyester ,
				@Nylon66 ,
				@MaterialOthers ,
				@YarnType ,
				@Process ,
				@Product ,
				@Special ,
				@Trial ,
				@Shift ,
				@ShiftName ,
				@Remark ,
				@Direct ,
				@Relax ,
				@Relax_k ,
				@Relax_n ,
				@Necessary ,
				@NotNecessary ,
				@SpecialMentionJointing ,
				@SpecialMentionNoJointing ,
				@TensileR1 ,
				@TensileL1 ,
				@TensileR2 ,
				@TensileL2 ,
				@TensileR3 ,
				@TensileL3 ,
				@TensileR4 ,
				@TensileL4 ,
				@TensileR5 ,
				@TensileL5 ,
				@TensileRSum ,
				@TensileLSum ,
				@FirstTwistingR1 ,
				@FirstTwistingL1 ,
				@FirstTwistingR2 ,
				@FirstTwistingL2 ,
				@FirstTwistingR3 ,
				@FirstTwistingL3 ,
				@FirstTwistingR4 ,
				@FirstTwistingL4 ,
				@FirstTwistingR5 ,
				@FirstTwistingL5 ,
				@FirstTwistingRSum ,
				@FirstTwistingLSum ,
				@SecondTwistingR1 ,
				@SecondTwistingL1 ,
				@SecondTwistingR2 ,
				@SecondTwistingL2 ,
				@SecondTwistingR3 ,
				@SecondTwistingL3 ,
				@SecondTwistingR4 ,
				@SecondTwistingL4 ,
				@SecondTwistingR5 ,
				@SecondTwistingL5 ,
				@SecondTwistingRSum ,
				@SecondTwistingLSum ,
				@Remark1 ,
				@Remark2 ,
				@Remark3 ,
				@Remark4 ,
				@Remark5 ,
				@RemarkSum 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[GetCordSamplingDetails]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCordSamplingDetails
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetCordSamplingDetails]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT TwistYarn,
			CordDipping,
			Rawmaterial,
			SamplingDate,
			CustomerName,
			ProductCode,
			CordStructure,
			LotNo,
			ProductionSituationTwisting,
			ProductionSituationHeatSet,
			ProductionSituationDipCord,
			ProductionSituationJointing,
			StandardOfTwisting,
			S1,
			S2,
			S4,
			S8,
			S19,
			Bobbin,
			Cheese,
			TaperBB,
			ContainerOthers,
			SpindleNo,
			Quantity,
			Polyester,
			Nylon66,
			MaterialOthers,
			YarnType,
			Process,
			Product,
			Special,
			Trial,
			[Shift],
			ShiftName,
			Remark,
			Direct,
			Relax,
			Relax_k,
			Relax_n,
			Necessary,
			NotNecessary,
			SpecialMentionJointing,
			SpecialMentionNoJointing,
			TensileR1,
			TensileL1,
			TensileR2,
			TensileL2,
			TensileR3,
			TensileL3,
			TensileR4,
			TensileL4,
			TensileR5,
			TensileL5,
			TensileRSum,
			TensileLSum,
			FirstTwistingR1,
			FirstTwistingL1,
			FirstTwistingR2,
			FirstTwistingL2,
			FirstTwistingR3,
			FirstTwistingL3,
			FirstTwistingR4,
			FirstTwistingL4,
			FirstTwistingR5,
			FirstTwistingL5,
			FirstTwistingRSum,
			FirstTwistingLSum,
			SecondTwistingR1,
			SecondTwistingL1,
			SecondTwistingR2,
			SecondTwistingL2,
			SecondTwistingR3,
			SecondTwistingL3,
			SecondTwistingR4,
			SecondTwistingL4,
			SecondTwistingR5,
			SecondTwistingL5,
			SecondTwistingRSum,
			SecondTwistingLSum,
			Remark1,
			Remark2,
			Remark3,
			Remark4,
			Remark5,
			RemarkSum
     FROM CordSamplingDetails
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
/****** Object:  StoredProcedure [dbo].[SearchWarehousePallet]    Script Date: 10/2/2023 14:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4IssueYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchWarehousePallet NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchWarehousePallet]
(
  @TraceNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT I.G4IssueYarnPkId -- FROM G4IssueYarn
         , I.RequestNo
         , I.IssueDate
         , I.IssueBy
         , I.TraceNo
         , I.PalletNo
         , I.WeightQty
         , I.ConeCH
         , I.PalletType
         , I.DeleteFlag
         , I.FinishFlag
         , I.WHReceiveFlag
         , I.[Remark]
         , I.UsedCH
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.Item400
		 , Y.ReceiveDate
		 , Y.ReceiveBy
		 , Y.Verify
         , Y.ExpiredDate
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y
     WHERE UPPER(LTRIM(RTRIM(I.TraceNo))) = UPPER(LTRIM(RTRIM(@TraceNo)))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
       AND (I.WHReceiveFlag = 1)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-10-01  ***********/
-- Port data to new tables

-- DROP TABLE ConditionStd
/*
EXEC DropTable N'ConditionStd'
GO
*/
