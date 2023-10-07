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
	[ProductQuantity] [decimal](18, 3) NULL,
	[ProductQuantityErr] [decimal](18, 3) NULL,
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
