/****** Object:  Table [dbo].[SolutionRecipeDetailSpec]    Script Date: 14/10/2566 10:51:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SolutionRecipeDetailSpec](
	[SolutionID] [int] NOT NULL,
	[Recipe] [nvarchar](15) NULL,
	[MixOrder] [int] NULL,
	[ChemicalType] [char](1) NULL,
	[ChemicalNo] [nvarchar](5) NULL,
	[ChemWet] [decimal](8, 4) NULL,
	[ChemDry] [decimal](8, 4) NULL
) ON [PRIMARY]
GO
