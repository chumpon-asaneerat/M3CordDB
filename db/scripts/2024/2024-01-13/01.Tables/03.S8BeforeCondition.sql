/****** Object:  Table [dbo].[S8BeforeCondition]    Script Date: 1/15/2024 3:12:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8BeforeCondition](
	[S8BeforeId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NOT NULL,
	[ProductCode] [nvarchar](30) NULL,
	[RowType] [int] NOT NULL,
	[LotNo] [nvarchar](50) NULL,
	[SolutionNameBath1SC] [bit] NULL,
	[SolutionNameBath1] [nvarchar](50) NULL,
	[SolutionNameBath1Value] [nvarchar](50) NULL,
	[SolutionNameBath2SC] [bit] NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
	[SolutionNameBath2Value] [nvarchar](50) NULL,
	[TempJacketDrumBath1SC] [bit] NULL,
	[TempJacketDrumBath1Min] [decimal](18, 3) NULL,
	[TempJacketDrumBath1Max] [decimal](18, 3) NULL,
	[TempJacketDrumBath1] [decimal](18, 3) NULL,
	[TempJacketDrumBath2SC] [bit] NULL,
	[TempJacketDrumBath2Min] [decimal](18, 3) NULL,
	[TempJacketDrumBath2Max] [decimal](18, 3) NULL,
	[TempJacketDrumBath2] [decimal](18, 3) NULL,
	[TempChemicalBath1SC] [bit] NULL,
	[TempChemicalBath1Min] [decimal](18, 3) NULL,
	[TempChemicalBath1Max] [decimal](18, 3) NULL,
	[TempChemicalBath1] [decimal](18, 3) NULL,
	[TempChemicalBath2SC] [bit] NULL,
	[TempChemicalBath2Min] [decimal](18, 3) NULL,
	[TempChemicalBath2Max] [decimal](18, 3) NULL,
	[TempChemicalBath2] [decimal](18, 3) NULL,
	[StretchDSC] [bit] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchDErr] [decimal](18, 3) NULL,
	[StretchDValue] [decimal](18, 3) NULL,
	[StretchHSC] [bit] NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchHErr] [decimal](18, 3) NULL,
	[StretchHValue] [decimal](18, 3) NULL,
	[StretchNSC] [bit] NULL,
	[StretchN] [decimal](18, 3) NULL,
	[StretchNErr] [decimal](18, 3) NULL,
	[StretchNValue] [decimal](18, 3) NULL,
	[TempDSC] [bit] NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempDErr] [decimal](18, 3) NULL,
	[TempDValue] [decimal](18, 3) NULL,
	[TempHNSC] [bit] NULL,
	[TempHN] [decimal](18, 3) NULL,
	[TempHNErr] [decimal](18, 3) NULL,
	[TempHNValue] [decimal](18, 3) NULL,
	[SpeedSC] [bit] NULL,
	[Speed] [decimal](18, 3) NULL,
	[SpeedErr] [decimal](18, 3) NULL,
	[SpeedValue] [decimal](18, 3) NULL,
	[ExhaustFanDryerSC] [bit] NULL,
	[ExhaustFanDryer] [decimal](18, 3) NULL,
	[ExhaustFanDryerValue] [decimal](18, 3) NULL,
	[ExhaustFanHNSC] [bit] NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
	[ExhaustFanHNValue] [decimal](18, 3) NULL,
	[CleanBath1SC] [bit] NULL,
	[CleanBath1] [bit] NULL,
	[CleanBath2SC] [bit] NULL,
	[CleanBath2] [bit] NULL,
	[CleanFrontSC] [bit] NULL,
	[CleanFront] [bit] NULL,
	[CamboxSC] [bit] NULL,
	[Cambox] [bit] NULL,
	[CheckBy] [nvarchar](100) NULL,
	[CheckDate] [datetime] NULL,
	[VerifyBy] [nvarchar](100) NULL,
	[VerifyDate] [datetime] NULL,
 CONSTRAINT [PK_S8BeforeCondition] PRIMARY KEY CLUSTERED 
(
	[S8BeforeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
