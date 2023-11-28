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
