/****** Object:  Table [dbo].[DIPMaterialCheckSheetItem]    Script Date: 10/24/2023 17:23:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPMaterialCheckSheetItem](
	[MaterialCheckId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[LotNo] [nvarchar](30) NULL,
	[CHNo] [int] NULL,
	[CheckYarnNo] [bit] NULL,
	[CheckYanScrap] [bit] NULL,
	[CheckYarnBall] [bit] NULL,
	[CheckCover] [bit] NULL,
	[CheckSensor] [bit] NULL,
	[CheckDustFilter] [bit] NULL,
 CONSTRAINT [PK_DIPMaterialCheckSheetItem] PRIMARY KEY CLUSTERED 
(
	[MaterialCheckId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
