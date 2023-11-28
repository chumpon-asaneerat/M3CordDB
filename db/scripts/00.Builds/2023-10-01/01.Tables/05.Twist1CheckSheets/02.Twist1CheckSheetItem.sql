/****** Object:  Table [dbo].[Twist1CheckSheetItem]    Script Date: 10/9/2023 4:57:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1CheckSheetItem](
	[Twist1CheckId] [int] NOT NULL,
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
 CONSTRAINT [PK_Twist1CheckSheetItem] PRIMARY KEY CLUSTERED 
(
	[Twist1CheckId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_RawB]  DEFAULT ((0)) FOR [RawB]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_RawE]  DEFAULT ((0)) FOR [RawE]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_CrossB]  DEFAULT ((0)) FOR [CrossB]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_CrossE]  DEFAULT ((0)) FOR [CrossE]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_FormB]  DEFAULT ((0)) FOR [FormB]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_FormE]  DEFAULT ((0)) FOR [FormE]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_KebaB]  DEFAULT ((0)) FOR [KebaB]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_KebaE]  DEFAULT ((0)) FOR [KebaE]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_StainB]  DEFAULT ((0)) FOR [StainB]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_StainE]  DEFAULT ((0)) FOR [StainE]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_PaperTubeB]  DEFAULT ((0)) FOR [PaperTubeB]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_PaperTubeE]  DEFAULT ((0)) FOR [PaperTubeE]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_YarnNoB]  DEFAULT ((0)) FOR [YarnNoB]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_YarnNoE]  DEFAULT ((0)) FOR [YarnNoE]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_BBMarkB]  DEFAULT ((0)) FOR [BBMarkB]
GO

ALTER TABLE [dbo].[Twist1CheckSheetItem] ADD  CONSTRAINT [DF_Twist1CheckSheetItem_BBMarkE]  DEFAULT ((0)) FOR [BBMarkE]
GO


