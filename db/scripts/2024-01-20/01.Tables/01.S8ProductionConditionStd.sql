/****** Object:  Table [dbo].[S8ProductionConditionStd]    Script Date: 1/20/2024 10:20:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8ProductionConditionStd](
	[ProductCode] [nvarchar](30) NULL,
	[StretchDSC] [bit] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchDErr] [decimal](18, 3) NULL,
	[StretchHSC] [bit] NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchHErr] [decimal](18, 3) NULL,
	[StretchNSC] [bit] NULL,
	[StretchN] [decimal](18, 3) NULL,
	[StretchNErr] [decimal](18, 3) NULL,
	[TempDSC] [bit] NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempDErr] [decimal](18, 3) NULL,
	[TempHNSC] [bit] NULL,
	[TempHN] [decimal](18, 3) NULL,
	[TempHNErr] [decimal](18, 3) NULL,
	[SpeedSC] [bit] NULL,
	[Speed] [decimal](18, 3) NULL,
	[SpeedErr] [decimal](18, 3) NULL,
	[TreatSC] [bit] NULL,
	[Treat] [decimal](18, 3) NULL,
	[DoffingLengthSC] [bit] NULL,
	[DoffingLength] [decimal](18, 3) NULL,
	[WeightSC] [bit] NULL,
	[Weight] [decimal](18, 3) NULL,
	[SpindleSC] [bit] NULL,
	[Spindle] [decimal](18, 3) NULL,
	[ProductionGoodSC] [bit] NULL,
	[ProductionGood] [decimal](18, 3) NULL,
	[ProductionTotalSC] [bit] NULL,
	[ProductionTotal] [decimal](18, 3) NULL
) ON [PRIMARY]

GO
