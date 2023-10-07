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
