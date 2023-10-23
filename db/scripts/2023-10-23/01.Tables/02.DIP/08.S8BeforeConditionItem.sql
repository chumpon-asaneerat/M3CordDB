/****** Object:  Table [dbo].[S8BeforeConditionItem]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S8BeforeConditionItem](
	[S8ConditionId] [int] NULL,
	[Seq] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](50) NULL,
	[SolutionNameBath1] [nvarchar](50) NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
	[TempJacketDrumBath1] [decimal](18, 3) NULL,
	[TempJacketDrumBath2] [decimal](18, 3) NULL,
	[TempChemicalBath1] [decimal](18, 3) NULL,
	[TempChemicalBath2] [decimal](18, 3) NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchN] [decimal](18, 3) NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempHN] [decimal](18, 3) NULL,
	[Speed] [decimal](18, 3) NULL,
	[ExhaustFanDryer] [decimal](18, 3) NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
	[CleanBath1] [bit] NULL,
	[CleanBath2] [bit] NULL,
	[CleanFront] [bit] NULL,
	[Cambox] [bit] NULL
) ON [PRIMARY]

GO
