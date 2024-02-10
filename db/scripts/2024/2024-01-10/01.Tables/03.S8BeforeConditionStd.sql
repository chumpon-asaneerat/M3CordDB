/****** Object:  Table [dbo].[S8BeforeConditionStd]    Script Date: 1/12/2024 1:09:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8BeforeConditionStd](
	[ProductCode] [nvarchar](30) NULL,
	[SolutionNameBath1SC] [bit] NULL,
	[SolutionNameBath1] [nvarchar](50) NULL,
	[SolutionNameBath2SC] [bit] NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
	[TempJacketDrumBath1SC] [bit] NULL,
	[TempJacketDrumBath1Min] [decimal](18, 3) NULL,
	[TempJacketDrumBath1Max] [decimal](18, 3) NULL,
	[TempJacketDrumBath2SC] [bit] NULL,
	[TempJacketDrumBath2Min] [decimal](18, 3) NULL,
	[TempJacketDrumBath2Max] [decimal](18, 3) NULL,
	[TempChemicalBath1SC] [bit] NULL,
	[TempChemicalBath1Min] [decimal](18, 3) NULL,
	[TempChemicalBath1Max] [decimal](18, 3) NULL,
	[TempChemicalBath2SC] [bit] NULL,
	[TempChemicalBath2Min] [decimal](18, 3) NULL,
	[TempChemicalBath2Max] [decimal](18, 3) NULL,
	[StretchDSC] [bit] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchDErr] [decimal](18, 3) NULL,
	[StretchHSC] [bit] NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchHErr] [decimal](18, 3) NULL,
	[StretchNSC] [bit] NULL,
	[StretchN] [decimal](18, 3) NULL,
	[StretchNErr] [decimal](18, 3) NULL,
	[TempDSC] [bit] NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempDErr] [decimal](18, 3) NULL,
	[TempHNSC] [bit] NULL,
	[TempHN] [decimal](18, 3) NULL,
	[TempHNErr] [decimal](18, 3) NULL,
	[SpeedSC] [bit] NULL,
	[Speed] [decimal](18, 3) NULL,
	[SpeedErr] [decimal](18, 3) NULL,
	[ExhaustFanDryerSC] [bit] NULL,
	[ExhaustFanDryer] [decimal](18, 3) NULL,
	[ExhaustFanHNSC] [bit] NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
	[CleanBath1SC] [bit] NULL,
	[CleanBath2SC] [bit] NULL,
	[CleanFrontSC] [bit] NULL,
	[CamboxSC] [bit] NULL
) ON [PRIMARY]

GO
