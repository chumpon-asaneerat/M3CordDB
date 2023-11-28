/****** Object:  Table [dbo].[Twist1CheckSheet]    Script Date: 9/11/2023 5:19:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1CheckSheet](
	[Twist1LoadId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[RawB] [bit] NULL,
	[RawE] [bit] NULL,
	[CrossB] [bit] NULL,
	[CrossE] [bit] NULL,
	[FormB] [bit] NULL,
	[FormE] [bit] NULL,
	[KebaB] [bit] NULL,
	[KebaE] [bit] NULL,
	[StainB] [bit] NULL,
	[StainE] [bit] NULL,
	[PaperTubeB] [bit] NULL,
	[PaperTubeE] [bit] NULL,
	[YarnNoB] [bit] NULL,
	[YarnNoE] [bit] NULL,
	[BBMarkB] [bit] NULL,
	[BBMarkE] [bit] NULL,
 CONSTRAINT [PK_Twist1CheckSheet] PRIMARY KEY CLUSTERED 
(
	[Twist1LoadId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Table_1_RawMaterialB]  DEFAULT ((0)) FOR [RawB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Table_1_RawMaterialE]  DEFAULT ((0)) FOR [RawE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Table_1_CrossYarnB]  DEFAULT ((0)) FOR [CrossB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Table_1_CrossYarnE]  DEFAULT ((0)) FOR [CrossE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_FormB]  DEFAULT ((0)) FOR [FormB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_FormE]  DEFAULT ((0)) FOR [FormE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_KebaB]  DEFAULT ((0)) FOR [KebaB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_KebaE]  DEFAULT ((0)) FOR [KebaE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_StainB]  DEFAULT ((0)) FOR [StainB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_StainE]  DEFAULT ((0)) FOR [StainE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_PaperTubeB]  DEFAULT ((0)) FOR [PaperTubeB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_PaperTubeE]  DEFAULT ((0)) FOR [PaperTubeE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_YarnNoB]  DEFAULT ((0)) FOR [YarnNoB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_YarnNoE]  DEFAULT ((0)) FOR [YarnNoE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_BBMarkB]  DEFAULT ((0)) FOR [BBMarkB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_BBMarkE]  DEFAULT ((0)) FOR [BBMarkE]
GO

