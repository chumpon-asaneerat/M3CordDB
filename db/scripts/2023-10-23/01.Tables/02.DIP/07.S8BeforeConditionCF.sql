/****** Object:  Table [dbo].[S8BeforeConditionCF]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S8BeforeConditionCF](
	[S8ConditionId] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[SolutionNameBath1] [nvarchar](50) NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
	[TempJacketDrumBath1SC] [bit] NULL,
	[TempJacketDrumBath1] [decimal](18, 3) NULL,
	[TempJacketDrumBath2SC] [bit] NULL,
	[TempJacketDrumBath2] [decimal](18, 3) NULL,
	[TempChemicalBath1SC] [bit] NULL,
	[TempChemicalBath1] [decimal](18, 3) NULL,
	[TempChemicalBath2SC] [bit] NULL,
	[TempChemicalBath2] [decimal](18, 3) NULL,
	[StretchDSC] [bit] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchHSC] [bit] NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchNSC] [bit] NULL,
	[StretchN] [decimal](18, 3) NULL,
	[TempDSC] [bit] NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempHNSC] [bit] NULL,
	[TempHN] [decimal](18, 3) NULL,
	[SpeedSC] [bit] NULL,
	[Speed] [decimal](18, 3) NULL,
	[ExhaustFanDryerSC] [bit] NULL,
	[ExhaustFanDryer] [decimal](18, 3) NULL,
	[ExhaustFanHNSC] [bit] NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
	[CleanBath1] [bit] NULL,
	[CleanBath2] [bit] NULL,
	[CleanFront] [bit] NULL,
	[Cambox] [bit] NULL
) ON [PRIMARY]

GO
