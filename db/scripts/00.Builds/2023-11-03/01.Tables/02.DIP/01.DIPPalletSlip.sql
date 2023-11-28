/****** Object:  Table [dbo].[DIPPalletSlip]    Script Date: 11/7/2023 4:43:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPPalletSlip](
	[PalletId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[PalletCode] [nvarchar](30) NULL,
	[CreateDate] [datetime] NULL,
	[TwistNo] [nvarchar](100) NULL,
	[Counter] [int] NULL,
	[ActualQty] [decimal](18, 3) NULL,
	[ActualWeight] [decimal](18, 3) NULL,
	[UserName] [nvarchar](100) NULL,
	[PalletStatus] [int] NULL,
 CONSTRAINT [PK_DIPPalletSlip] PRIMARY KEY CLUSTERED 
(
	[PalletId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DIPPalletSlip] ADD  CONSTRAINT [DF_DIPPalletSlip_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
