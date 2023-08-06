/****** Object:  Table [dbo].[S1ConditionStd]    Script Date: 8/6/2023 20:37:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S1ConditionStd](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[ItemCode] [nvarchar](30) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[CordStructure1] [nvarchar](50) NULL,
	[CordStructure2] [nvarchar](50) NULL,
	[StdTwistingNumber] [nvarchar](50) NULL,
	[RingDiameter] [nvarchar](100) NULL,
	[TwistChangeGearI] [int] NULL,
	[TwistChangeGearJ] [int] NULL,
	[TwistChangeGearK] [int] NULL,
	[LifterChangGearA] [int] NULL,
	[LifterChangGearB] [int] NULL,
	[OuterDiameter] [int] NULL,
	[TravellerNo] [nvarchar](100) NULL,
	[CouterUnit] [decimal](18, 2) NULL,
	[CouterUnitErrRange] [decimal](18, 2) NULL,
	[CouterWg] [decimal](18, 2) NULL,
	[CouterWgErrRange] [decimal](18, 2) NULL,
	[CalcTwistingNumber] [decimal](18, 2) NULL,
	[CalcTwistingNumberErrRange] [decimal](18, 2) NULL,
	[SpindleRotation] [decimal](18, 2) NULL,
	[SpindleRotationErrRange] [decimal](18, 2) NULL,
	[YarnSpeed] [decimal](18, 2) NULL,
	[YarnSpeedErrRange] [decimal](18, 2) NULL,
	[SpecialMention] [nvarchar](100) NULL,
 CONSTRAINT [PK_S1ConditionStd] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
