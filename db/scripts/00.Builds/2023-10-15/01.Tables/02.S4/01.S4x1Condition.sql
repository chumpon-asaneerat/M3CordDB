/****** Object:  Table [dbo].[S4x1Condition]    Script Date: 10/15/2023 12:25:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S4x1Condition](
	[S4x1ConditionId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
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
	[SpecialMentionActual] [nvarchar](100) NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[CheckedBy] [nvarchar](100) NULL,
	[CheckedDate] [datetime] NULL,
	[ApproveBy] [nvarchar](100) NULL,
	[ApproveDate] [datetime] NULL,
	[ShiftLeader] [nvarchar](100) NULL,
	[ProductionManager] [nvarchar](100) NULL,
 CONSTRAINT [PK_S4x1Condition] PRIMARY KEY CLUSTERED 
(
	[S4x1ConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
