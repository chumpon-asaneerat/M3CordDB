/****** Object:  Table [dbo].[PalletSettingItem]    Script Date: 10/9/2023 9:24:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PalletSettingItem](
	[PalletId] [int] NOT NULL,
	[DoffNo] [int] NOT NULL,
	[CH] [decimal](18, 3) NULL,
	[SPNoStart] [int] NULL,
	[SPNoEnd] [int] NULL,
 CONSTRAINT [PK_PalletSettingItem] PRIMARY KEY CLUSTERED 
(
	[PalletId] ASC,
	[DoffNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
