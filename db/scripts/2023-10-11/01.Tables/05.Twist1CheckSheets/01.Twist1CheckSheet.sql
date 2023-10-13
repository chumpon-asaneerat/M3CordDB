/****** Object:  Table [dbo].[Twist1CheckSheet]    Script Date: 10/13/2023 13:17:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1CheckSheet](
	[Twist1CheckId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[ProductionDate] [datetime] NULL,
	[ConditionDate] [datetime] NULL,
	[TestFlag] [bit] NULL,
	[DoffNo] [int] NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserId] [int] NULL,
	[Chief] [nvarchar](100) NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_Twist1CheckSheet] PRIMARY KEY CLUSTERED 
(
	[Twist1CheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_TestFlag]  DEFAULT ((0)) FOR [TestFlag]
GO
