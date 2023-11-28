/****** Object:  Table [dbo].[DIPTimeTable]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIPTimeTable](
	[ProductCode] [nvarchar](30) NULL,
	[PeriodTime] [nvarchar](30) NULL,
	[S7Bobbin] [bit] NULL,
	[S8CoolingWaterSystemBath1] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2] [decimal](18, 3) NULL,
	[S8ChemicalWork] [nvarchar](30) NULL,
	[S8ChemicalFilter] [nvarchar](30) NULL,
	[S8Speed] [decimal](18, 3) NULL,
	[S8StretchD] [decimal](18, 3) NULL,
	[S8StretchH] [decimal](18, 3) NULL,
	[S8StretchN] [decimal](18, 3) NULL,
	[S8TempD] [decimal](18, 3) NULL,
	[S8TempHN] [decimal](18, 3) NULL,
	[S9GlideStatus] [bit] NULL,
	[Remark] [nvarchar](50) NULL
) ON [PRIMARY]

GO
