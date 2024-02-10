/****** Object:  Table [dbo].[DIPTimeTable]    Script Date: 1/14/2024 22:03:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPTimeTable](
	[ProductCode] [nvarchar](30) NULL,
	[DIPPCId] [int] NOT NULL,
	[RowType] [int] NULL,
	[PeriodTime] [datetime] NULL,
	[LotNo] [nvarchar](50) NULL,
	[S7BobbinSC] [bit] NULL,
	[S7Bobbin] [bit] NULL,
	[S8CoolingWaterSystemBath1SC] [bit] NULL,
	[S8CoolingWaterSystemBath1Min] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Max] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Value] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2SC] [bit] NULL,
	[S8CoolingWaterSystemBath2] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Min] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Max] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Value] [decimal](18, 3) NULL,
	[S8ChemicalWorkSC] [bit] NULL,
	[S8ChemicalWork] [bit] NULL,
	[S8ChemicalFilterSC] [bit] NULL,
	[S8ChemicalFilter] [bit] NULL,
	[S8SpeedSC] [bit] NULL,
	[S8Speed] [decimal](18, 3) NULL,
	[S8SpeedErr] [decimal](18, 3) NULL,
	[S8SpeedValue] [decimal](18, 3) NULL,
	[S8StretchDSC] [bit] NULL,
	[S8StretchD] [decimal](18, 3) NULL,
	[S8StretchDErr] [decimal](18, 3) NULL,
	[S8StretchDValue] [decimal](18, 3) NULL,
	[S8StretchHSC] [bit] NULL,
	[S8StretchH] [decimal](18, 3) NULL,
	[S8StretchHErr] [decimal](18, 3) NULL,
	[S8StretchHValue] [decimal](18, 3) NULL,
	[S8StretchNSC] [bit] NULL,
	[S8StretchN] [decimal](18, 3) NULL,
	[S8StretchNErr] [decimal](18, 3) NULL,
	[S8StretchNValue] [decimal](18, 3) NULL,
	[S8TempDSC] [bit] NULL,
	[S8TempD] [decimal](18, 3) NULL,
	[S8TempDErr] [decimal](18, 3) NULL,
	[S8TempDValue] [decimal](18, 3) NULL,
	[S8TempHNSC] [bit] NULL,
	[S8TempHN] [decimal](18, 3) NULL,
	[S8TempHNErr] [decimal](18, 3) NULL,
	[S8TempHNValue] [decimal](18, 3) NULL,
	[S9GlideStatusSC] [bit] NULL,
	[S9GlideStatus] [bit] NULL,
	[Remark] [nvarchar](200) NULL,
	[CheckBy] [nvarchar](100) NULL,
	[CheckDate] [datetime] NULL
) ON [PRIMARY]

GO

