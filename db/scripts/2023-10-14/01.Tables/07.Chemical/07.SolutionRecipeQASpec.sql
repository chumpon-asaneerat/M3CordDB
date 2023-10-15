/****** Object:  Table [dbo].[SolutionRecipeQASpec]    Script Date: 14/10/2566 10:52:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SolutionRecipeQASpec](
	[SolutionID] [int] NOT NULL,
	[Recipe] [nvarchar](15) NULL,
	[AgeingTemp] [nvarchar](20) NULL,
	[AgeingTime] [nvarchar](20) NULL,
	[Homomixer] [nvarchar](20) NULL,
	[LifeDay] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[pH_Before] [nvarchar](20) NULL,
	[Viscosity_Before] [nvarchar](20) NULL,
	[TSC_Before] [nvarchar](20) NULL,
	[pH_After] [nvarchar](20) NULL,
	[Viscosity_After] [nvarchar](20) NULL,
	[TSC_After] [nvarchar](20) NULL
) ON [PRIMARY]
GO

