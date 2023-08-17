/****** Object:  Table [dbo].[CordProduct]    Script Date: 8/17/2023 8:59:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CordProduct](
	[CordProductPkId] [int] IDENTITY(1,1) NOT NULL,
	[ProductLotNo] [nvarchar](30) NULL,
	[CustomerCode] [nvarchar](30) NULL,
	[CustomerName] [nvarchar](150) NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[ItemCode] [nvarchar](30) NULL,
	[Item400] [nvarchar](30) NULL,
	[Color] [nvarchar](100) NULL,
	[TargetQty] [decimal](16, 3) NULL,
	[ActualQty] [decimal](16, 3) NULL,
	[ProcessingFlag] [bit] NULL,
	[FinishFlag] [bit] NULL,
	[DeleteFlag] [bit] NULL,
 CONSTRAINT [PK_CordProduct] PRIMARY KEY CLUSTERED 
(
	[CordProductPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[CordProduct] ADD  CONSTRAINT [DF__CordProdu__Finis__69E6AD86]  DEFAULT ((0)) FOR [FinishFlag]
GO

ALTER TABLE [dbo].[CordProduct] ADD  CONSTRAINT [DF__CordProdu__Delet__6ADAD1BF]  DEFAULT ((0)) FOR [DeleteFlag]
GO
