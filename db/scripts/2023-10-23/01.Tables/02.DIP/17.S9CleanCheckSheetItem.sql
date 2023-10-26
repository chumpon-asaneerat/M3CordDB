/****** Object:  Table [dbo].[S9CleanCheckSheetItem]    Script Date: 10/26/2023 9:43:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S9CleanCheckSheetItem](
	[CleanId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[CheckSplitter] [bit] NULL,
	[CheckRollerCeramic] [bit] NULL,
	[CheckSlidebar] [bit] NULL,
	[CheckRollerCambox] [bit] NULL,
	[CheckTopGuide] [bit] NULL,
	[CheckBottomGuide] [bit] NULL,
	[CheckRollerFrontS9] [bit] NULL,
 CONSTRAINT [PK_S9CleanCheckSheetItem] PRIMARY KEY CLUSTERED 
(
	[CleanId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
