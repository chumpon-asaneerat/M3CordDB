/****** Object:  Table [dbo].[DIPTimeTable]    Script Date: 1/12/2024 8:01:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPTimeTable](
	[DIPTimeTableId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NOT NULL,
	[ProductCode] [nvarchar](30) NULL,
	[RowType] [int] NULL,
	[PeriodTime] [datetime] NULL,
	[S7BobbinSC] [bit] NULL,
	[S7Bobbin] [bit] NULL,
	[S8CoolingWaterSystemBath1SC] [bit] NULL,
	[S8CoolingWaterSystemBath1] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Err] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Value] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2SC] [bit] NULL,
	[S8CoolingWaterSystemBath2] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Err] [decimal](18, 3) NULL,
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
 CONSTRAINT [PK_DIPTimeTable] PRIMARY KEY CLUSTERED 
(
	[DIPTimeTableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
