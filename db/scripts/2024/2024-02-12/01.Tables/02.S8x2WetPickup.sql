/****** Object:  Table [dbo].[S8x2WetPickup]    Script Date: 2/16/2024 10:36:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8x2WetPickup](
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[CustomerName] [nvarchar](30) NULL,
	[FirstDip1] [nvarchar](50) NULL,
	[SolutionName] [nvarchar](50) NULL,
	[FirstDip2] [nvarchar](50) NULL,
	[SolutionLotNo] [nvarchar](50) NULL,
	[PullMotorActSpeed1] [decimal](18, 3) NULL,
	[PullMotorActSpeed2] [decimal](18, 3) NULL,
	[PullMotorActSpeed3] [decimal](18, 3) NULL,
	[PullMotorActSpeed4] [decimal](18, 3) NULL,
	[PullMotorActSpeed5] [decimal](18, 3) NULL,
	[PullMotorActSpeed6] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint1] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint2] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint3] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint4] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint5] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint6] [decimal](18, 3) NULL,
	[PullMotorActCurrent1] [decimal](18, 3) NULL,
	[PullMotorActCurrent2] [decimal](18, 0) NULL,
	[PullMotorActCurrent3] [decimal](18, 0) NULL,
	[PullMotorActCurrent4] [decimal](18, 0) NULL,
	[PullMotorActCurrent5] [decimal](18, 0) NULL,
	[PullMotorActCurrent6] [decimal](18, 0) NULL,
	[PullMotorPctCurrent1] [decimal](18, 0) NULL,
	[PullMotorPctCurrent2] [decimal](18, 0) NULL,
	[PullMotorPctCurrent3] [decimal](18, 0) NULL,
	[PullMotorPctCurrent4] [decimal](18, 0) NULL,
	[PullMotorPctCurrent5] [decimal](18, 0) NULL,
	[PullMotorPctCurrent6] [decimal](18, 0) NULL,
	[OvenCirculatingFanActSpeed1] [decimal](18, 0) NULL,
	[OvenCirculatingFanActSpeed2] [decimal](18, 0) NULL,
	[OvenExhaustFanActSpeed1] [decimal](18, 0) NULL,
	[OvenExhaustFanActSpeed2] [decimal](18, 0) NULL,
	[OvenExhaustFanFrontActSpeed] [decimal](18, 0) NULL,
	[OvenExhaustFanBackActSpeed] [decimal](18, 0) NULL,
	[OvenCirculatingFanSpeedSetpoint1] [decimal](18, 0) NULL,
	[OvenCirculatingFanSpeedSetpoint2] [decimal](18, 0) NULL,
	[OvenExhaustFanSpeedSetpoint1] [decimal](18, 0) NULL,
	[OvenExhaustFanSpeedSetpoint2] [decimal](18, 0) NULL,
	[OvenExhaustFanFrontSpeedSetpoint] [decimal](18, 0) NULL,
	[OvenExhaustFanBackSpeedSetpoint] [decimal](18, 0) NULL,
	[OvenCirculatingFanActCurrent1] [decimal](18, 0) NULL,
	[OvenCirculatingFanActCurrent2] [decimal](18, 0) NULL,
	[OvenExhaustFanActCurrent1] [decimal](18, 0) NULL,
	[OvenExhaustFanActCurrent2] [decimal](18, 0) NULL,
	[OvenExhaustFanFrontActCurrent] [decimal](18, 0) NULL,
	[OvenExhaustFanBackActCurrent] [decimal](18, 0) NULL,
	[OvenCirculatingFanPctCurrent1] [decimal](18, 0) NULL,
	[OvenCirculatingFanPctCurrent2] [decimal](18, 0) NULL,
	[OvenExhaustFanPctCurrent1] [decimal](18, 0) NULL,
	[OvenExhaustFanPctCurrent2] [decimal](18, 0) NULL,
	[OvenExhaustFanFrontPctCurrent] [decimal](18, 0) NULL,
	[OvenExhaustFanBackPctCurrent] [decimal](18, 0) NULL,
	[MotorActStretch1x2] [decimal](18, 0) NULL,
	[MotorActStretch3x4] [decimal](18, 0) NULL,
	[MotorActStretch4x5] [decimal](18, 0) NULL,
	[MotorActStretch1x6] [decimal](18, 0) NULL,
	[MotorSetPoint1x2] [decimal](18, 0) NULL,
	[MotorSetPoint3x4] [decimal](18, 0) NULL,
	[MotorSetPoint4x5] [decimal](18, 0) NULL,
	[MotorSetPoint1x6] [decimal](18, 0) NULL,
	[MotorActTensionTotal1x2] [decimal](18, 0) NULL,
	[MotorActTensionTotal3x4] [decimal](18, 0) NULL,
	[MotorActTensionTotal4x5] [decimal](18, 0) NULL,
	[MotorActTensionTotal1x6] [decimal](18, 0) NULL,
	[MotorSingleTension1x2] [decimal](18, 0) NULL,
	[MotorSingleTension3x4] [decimal](18, 0) NULL,
	[MotorSingleTension4x5] [decimal](18, 0) NULL,
	[MotorSingleTension1x6] [decimal](18, 0) NULL,
	[Remark] [nvarchar](200) NULL,
	[Operator] [nvarchar](100) NULL,
	[Leader] [nvarchar](100) NULL
) ON [PRIMARY]

GO