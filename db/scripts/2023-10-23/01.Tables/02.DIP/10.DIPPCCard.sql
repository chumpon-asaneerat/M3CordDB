/****** Object:  Table [dbo].[DIPPCCard]    Script Date: 10/24/2023 15:52:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPPCCard](
	[DIPPCId] [int] IDENTITY(1,1) NOT NULL,
    [CustomerId] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[DIPLotNo] [nvarchar](30) NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[FinishFlag] [bit] NULL,
	[DeleteFlag] [bit] NULL,
 CONSTRAINT [PK_DIPPCCard] PRIMARY KEY CLUSTERED 
(
	[DIPPCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DIPPCCard] ADD  CONSTRAINT [DF_DIPPCCard_FinishFlag]  DEFAULT ((0)) FOR [FinishFlag]
GO

ALTER TABLE [dbo].[DIPPCCard] ADD  CONSTRAINT [DF_DIPPCCard_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO
