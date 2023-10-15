/****** Object:  Table [dbo].[SolutionRecipe]    Script Date: 14/10/2566 10:51:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SolutionRecipe](
	[SolutionId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SolutionName] [nvarchar](30) NULL,
	[Recipe1] [nvarchar](15) NULL,
	[Recipe2] [nvarchar](15) NULL,
	[Recipe3] [nvarchar](15) NULL,
	[Recipe4] [nvarchar](15) NULL,
	[Remark] [nvarchar](30) NULL,
	[QtySpec] [decimal](6, 2) NULL,
 CONSTRAINT [PK_SolutionRecipe] PRIMARY KEY CLUSTERED 
(
	[SolutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

