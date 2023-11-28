/****** Object:  Table [dbo].[S9AppearanceCheckSheetItem]    Script Date: 10/26/2023 9:56:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S9AppearanceCheckSheetItem](
	[AppearId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[CheckGood] [bit] NULL,
	[CheckBad] [bit] NULL,
	[Check2Color] [bit] NULL,
	[CheckKeiba] [bit] NULL,
	[CheckWeight] [bit] NULL,
	[CheckFrontTwist] [bit] NULL,
	[CheckBackTwist] [bit] NULL,
	[CheckSnarl] [bit] NULL,
	[CheckTube] [bit] NULL,
 CONSTRAINT [PK_S9AppearanceCheckSheetItem] PRIMARY KEY CLUSTERED 
(
	[AppearId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
