/****** Object:  Table [dbo].[YarnLoadSheet]    Script Date: 8/7/2023 4:23:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[YarnLoadSheet](
	[YarnLoadSheetId] [int] IDENTITY(1,1) NOT NULL,
	[CordProductPkId] [int] NOT NULL,
	[MCCode] [nvarchar](10) NULL,
	[DeleteFlag] [bit] NULL DEFAULT 0,
	[FinishFlag] [bit] NULL DEFAULT 0,
 CONSTRAINT [PK_YarnLoadSheet] PRIMARY KEY CLUSTERED 
(
	[YarnLoadSheetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
