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
	[LengthErrActual] [decimal](18, 3) NULL,
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
	[WindQuantityErrActual] [decimal](18, 3) NULL,
	[DoffTimeSC] [bit] NULL,
	[DoffTime] [decimal](18, 3) NULL,
	[DoffTimeErr] [decimal](18, 3) NULL,
	[DoffTimeActual] [decimal](18, 3) NULL,
	[DoffTimeErrActual] [decimal](18, 3) NULL,
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
