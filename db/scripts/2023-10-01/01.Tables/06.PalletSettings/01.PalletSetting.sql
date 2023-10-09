/****** Object:  Table [dbo].[PalletSetting]    Script Date: 10/9/2023 9:23:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PalletSetting](
	[PalletId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[PalletCode] [nvarchar](30) NULL,
	[CreateDate] [datetime] NULL,
	[TwistNo] [nvarchar](100) NULL,
	[Counter] [int] NULL,
	[UserId] [int] NULL,
	[PalletType] [int] NULL,
	[PalletStatus] [int] NULL,
 CONSTRAINT [PK_PalletSetting] PRIMARY KEY CLUSTERED 
(
	[PalletId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PalletSetting] ADD  CONSTRAINT [DF_PalletSetting_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[PalletSetting] ADD  CONSTRAINT [DF_PalletSetting_PalletType]  DEFAULT ((0)) FOR [PalletType]
GO

ALTER TABLE [dbo].[PalletSetting] ADD  CONSTRAINT [DF_PalletSetting_PalletStatus]  DEFAULT ((0)) FOR [PalletStatus]
GO
