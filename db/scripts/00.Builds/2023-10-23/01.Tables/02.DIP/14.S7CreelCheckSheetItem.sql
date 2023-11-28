/****** Object:  Table [dbo].[S7CreelCheckSheetItem]    Script Date: 10/26/2023 9:12:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S7CreelCheckSheetItem](
	[CreelId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[CheckUnstable] [bit] NULL,
	[CheckNotReachEnd] [bit] NULL,
	[CheckNotStraight] [bit] NULL,
	[CheckHasSound] [bit] NULL,
 CONSTRAINT [PK_S7CreelCheckItem_1] PRIMARY KEY CLUSTERED 
(
	[CreelId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
