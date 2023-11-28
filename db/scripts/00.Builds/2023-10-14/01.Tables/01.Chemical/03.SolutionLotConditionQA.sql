/****** Object:  Table [dbo].[SolutionLotConditionQA]    Script Date: 14/10/2566 10:50:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SolutionLotConditionQA](
	[SolutionID] [int] NOT NULL,
	[Recipe] [nvarchar](15) NULL,
	[AgeingTemp] [nvarchar](20) NULL,
	[AgeingStart] [datetime] NULL,
	[AgeingEnd] [datetime] NULL,
	[Homomixer] [nvarchar](20) NULL,
	[LifeDay] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[ConditionDate] [datetime] NULL,
	[ConditionBy] [int] NULL,
	[pH_Before] [nvarchar](20) NULL,
	[Viscosity_Before] [nvarchar](20) NULL,
	[TSC_Before] [nvarchar](20) NULL,
	[pH_After] [nvarchar](20) NULL,
	[Viscosity_After] [nvarchar](20) NULL,
	[TSC_After] [nvarchar](20) NULL,
	[QaDate] [datetime] NULL,
	[QaBy] [int] NULL
) ON [PRIMARY]
GO


