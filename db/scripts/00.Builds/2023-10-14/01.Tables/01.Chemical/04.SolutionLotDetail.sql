/****** Object:  Table [dbo].[SolutionLotDetail]    Script Date: 14/10/2566 10:50:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SolutionLotDetail](
	[SolutionID] [int] NOT NULL,
	[Recipe] [nvarchar](15) NULL,
	[MixOrder] [int] NULL,
	[ChemicalNo] [nvarchar](5) NULL,
	[WeightCal] [decimal](8, 4) NULL,
	[WeightActual] [decimal](8, 4) NULL,
	[WeightMc] [nvarchar](50) NULL,
	[WeightDate] [datetime] NULL,
	[WeightBy] [int] NULL
) ON [PRIMARY]
GO

