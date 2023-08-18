/****** Object:  Table [dbo].[Twist1LoadRecord]    Script Date: 8/18/2023 4:24:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1LoadRecord](
	[Twist1LoadId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[ProductionDate] [datetime] NULL,
	[TestFlag] [bit] NULL,
	[DoffNo] [int] NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[ShiftName] [nvarchar](10) NULL,
	[Chief] [nvarchar](100) NULL,
	[Remark] [nvarchar](100) NULL,
	[Keiba] [bit] NULL,
	[Traverse] [bit] NULL,
	[Crossing] [bit] NULL,
	[ScrapeTube] [bit] NULL,
	[Form] [bit] NULL,
	[Stain] [bit] NULL,
 CONSTRAINT [PK_Twist1LoadRecord] PRIMARY KEY CLUSTERED 
(
	[Twist1LoadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Twist1LoadRecord] ADD  CONSTRAINT [DF_Twist1LoadRecord_TestFlag]  DEFAULT ((0)) FOR [TestFlag]
GO

ALTER TABLE [dbo].[Twist1LoadRecord] ADD  CONSTRAINT [DF_Table_1_LastTestNo]  DEFAULT ((0)) FOR [DoffNo]
GO

ALTER TABLE [dbo].[Twist1LoadRecord] ADD  CONSTRAINT [DF_Table_1_LastDoffNo]  DEFAULT ((0)) FOR [ItemYarn]
GO
