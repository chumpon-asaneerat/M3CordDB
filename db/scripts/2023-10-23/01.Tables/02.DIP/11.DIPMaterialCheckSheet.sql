/****** Object:  Table [dbo].[DIPMaterialCheckSheet]    Script Date: 10/24/2023 16:12:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPMaterialCheckSheet](
	[MaterialCheckId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[CheckDate] [datetime] NULL,
	[DoffNo] [int] NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_DIPMaterialCheckSheet] PRIMARY KEY CLUSTERED 
(
	[MaterialCheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
