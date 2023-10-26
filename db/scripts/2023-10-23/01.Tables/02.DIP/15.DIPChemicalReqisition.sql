/****** Object:  Table [dbo].[DIPChemicalReqisition]    Script Date: 10/26/2023 9:23:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPChemicalReqisition](
	[ReqId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[ReqDate] [datetime] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[DIPLotNo] [nvarchar](30) NULL,
	[SolutionName] [nvarchar](30) NULL,
	[TankNo] [nvarchar](30) NULL,
	[Quantity] [decimal](18, 3) NULL,
	[S8LotNo] [nvarchar](30) NULL,
	[UserName] [nvarchar](100) NULL,
	[Chief] [nvarchar](100) NULL,
 CONSTRAINT [PK_DIPChemicalReqisition] PRIMARY KEY CLUSTERED 
(
	[ReqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
