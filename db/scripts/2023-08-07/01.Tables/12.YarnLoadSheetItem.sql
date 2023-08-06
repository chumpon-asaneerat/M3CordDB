/****** Object:  Table [dbo].[YarnLoadSheetItem]    Script Date: 8/7/2023 1:27:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[YarnLoadSheetItem](
	[YarnLoadSheetId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[CoreNo] [int] NOT NULL,
	[PalletNo] [nvarchar](30) NOT NULL,
	[TraceNo] [nvarchar](30) NOT NULL,
	[YarnBarcode] [nvarchar](30) NULL
) ON [PRIMARY]

GO
