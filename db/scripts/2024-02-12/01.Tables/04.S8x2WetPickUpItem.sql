/****** Object:  Table [dbo].[S8x2WetPickUpItem]    Script Date: 2/16/2024 14:51:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8x2WetPickUpItem](
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[DoffNo] [int] NULL,
	[TwistNo] [int] NULL,
	[RowType] [int] NULL,
	[NipPressure] [nvarchar](50) NULL,
	[WPU] [decimal](18, 3) NULL,
	[WPUErr] [decimal](18, 3) NULL,
	[FirstAmt] [decimal](18, 3) NULL,
	[UseAmt] [decimal](18, 3) NULL,
	[RestAmt] [decimal](18, 3) NULL,
	[ThrowAmt] [decimal](18, 3) NULL,
	[Operator] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY]

GO
