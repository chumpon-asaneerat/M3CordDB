/****** Object:  Table [dbo].[PCTwist1]    Script Date: 8/18/2023 4:17:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PCTwist1](
	[PCTwist1Id] [int] IDENTITY(1,1) NOT NULL,
	[PCId] [int] NULL,
	[IssueDate] [datetime] NULL,
	[IssueBy] [nvarchar](200) NULL,
	[CheckBy] [nvarchar](200) NULL,
	[ApproveBy] [nvarchar](200) NULL,
	[SectionHead] [nvarchar](200) NULL,
	[SectionMgr] [nvarchar](200) NULL,
	[MCCode] [nvarchar](10) NULL,
	[PaperTubeColor] [nvarchar](100) NULL,
	[ActualQty] [decimal](16, 3) NULL,
	[Remark] [nvarchar](200) NULL,
	[LastTestNo] [int] NULL,
	[LastDoffNo] [int] NULL,
	[FinishFlag] [bit] NULL,
	[DeleteFlag] [bit] NULL,
 CONSTRAINT [PK_PCTwist1] PRIMARY KEY CLUSTERED 
(
	[PCTwist1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PCTwist1] ADD  CONSTRAINT [DF_PCTwist1_LastTestNo]  DEFAULT ((0)) FOR [LastTestNo]
GO

ALTER TABLE [dbo].[PCTwist1] ADD  CONSTRAINT [DF_PCTwist1_LastDoffNo]  DEFAULT ((0)) FOR [LastDoffNo]
GO

ALTER TABLE [dbo].[PCTwist1] ADD  CONSTRAINT [DF_PCTwist1_FinishFlag]  DEFAULT ((0)) FOR [FinishFlag]
GO

ALTER TABLE [dbo].[PCTwist1] ADD  CONSTRAINT [DF_PCTwist1_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO


