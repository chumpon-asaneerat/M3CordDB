/****** Object:  Table [dbo].[YarnLoadSheetDoff]    Script Date: 8/17/2023 8:55:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[YarnLoadSheetDoff](
	[YarnLoadSheetDoffId] [int] IDENTITY(1,1) NOT NULL,
	[YarnLoadSheetId] [int] NOT NULL,
	[RecordDate] [datetime] NULL,
	[DoffNos] [nvarchar](50) NULL,
	[Shift] [nvarchar](10) NULL,
 CONSTRAINT [PK_YarnLoadSheetDoff] PRIMARY KEY CLUSTERED 
(
	[YarnLoadSheetDoffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
