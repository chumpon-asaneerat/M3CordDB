/****** Object:  Table [dbo].[PCCard]    Script Date: 8/11/2023 8:42:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PCCard](
	[PCId] [int] IDENTITY(1,1) NOT NULL,
	[PCNo] [nvarchar](50) NULL,
	[PCDate] [datetime] NULL,
	[ItemCode] [nvarchar](30) NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[ProductLotNo] [nvarchar](30) NULL,
	[Flow] [nvarchar](100) NULL,
	[TargetQty] [decimal](16, 3) NULL,
	[FinishFlag] [bit] NULL,
	[DeleteFlag] [bit] NULL,
 CONSTRAINT [PK_PCCard] PRIMARY KEY CLUSTERED 
(
	[PCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PCCard] ADD  CONSTRAINT [DF_PCCard_FinishFlag]  DEFAULT ((0)) FOR [FinishFlag]
GO

ALTER TABLE [dbo].[PCCard] ADD  CONSTRAINT [DF_PCCard_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO
