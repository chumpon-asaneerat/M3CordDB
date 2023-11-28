/****** Object:  Table [dbo].[Twist1LoadRecordItem]    Script Date: 9/11/2023 1:26:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1LoadRecordItem](
	[Twist1LoadId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[DeckNo] [int] NOT NULL,
	[PalletNo] [nvarchar](30) NULL,
	[TraceNo] [nvarchar](30) NULL,
	[YarnBarcode] [nvarchar](100) NULL,
 CONSTRAINT [PK_Twist1LoadRecordItem] PRIMARY KEY CLUSTERED 
(
	[Twist1LoadId] ASC,
	[SPNo] ASC,
	[DeckNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
