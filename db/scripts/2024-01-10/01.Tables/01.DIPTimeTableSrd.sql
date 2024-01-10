/****** Object:  Table [dbo].[DIPTimeTableStd]    Script Date: 1/11/2024 1:30:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPTimeTableStd](
	[ProductCode] [nvarchar](30) NULL,
	[S7BobbinSC] [bit] NULL,
	[S8CoolingWaterSystemBath1SC] [bit] NULL,
	[S8CoolingWaterSystemBath1] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Err] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2SC] [bit] NULL,
	[S8CoolingWaterSystemBath2] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Err] [decimal](18, 3) NULL,
	[S8ChemicalWorkSC] [bit] NULL,
	[S8ChemicalFilterSC] [bit] NULL,
	[S8SpeedSC] [bit] NULL,
	[S8Speed] [decimal](18, 3) NULL,
	[S8SpeedErr] [decimal](18, 3) NULL,
	[S8StretchDSC] [bit] NULL,
	[S8StretchD] [decimal](18, 3) NULL,
	[S8StretchDErr] [decimal](18, 3) NULL,
	[S8StretchHSC] [bit] NULL,
	[S8StretchH] [decimal](18, 3) NULL,
	[S8StretchHErr] [decimal](18, 3) NULL,
	[S8StretchNSC] [bit] NULL,
	[S8StretchN] [decimal](18, 3) NULL,
	[S8StretchNErr] [decimal](18, 3) NULL,
	[S8TempDSC] [bit] NULL,
	[S8TempD] [decimal](18, 3) NULL,
	[S8TempDErr] [decimal](18, 3) NULL,
	[S8TempHNSC] [bit] NULL,
	[S8TempHN] [decimal](18, 3) NULL,
	[S8TempHNErr] [decimal](18, 3) NULL,
	[S9GlideStatusSC] [bit] NULL
) ON [PRIMARY]

GO
