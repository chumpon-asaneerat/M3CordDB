/****** Object:  Table [dbo].[S8ProductionConditionItem]    Script Date: 1/20/2024 10:29:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8ProductionConditionItem](
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[DoffingNo] [int] NULL,

	[StretchDSC] [bit] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchDErr] [decimal](18, 3) NULL,
	[StretchDValue] [decimal](18, 3) NULL,

	[StretchHSC] [bit] NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchHErr] [decimal](18, 3) NULL,
	[StretchHValue] [decimal](18, 3) NULL,

	[StretchNSC] [bit] NULL,
	[StretchN] [decimal](18, 3) NULL,
	[StretchNErr] [decimal](18, 3) NULL,
	[StretchNValue] [decimal](18, 3) NULL,

	[TempDSC] [bit] NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempDErr] [decimal](18, 3) NULL,
	[TempDValue] [decimal](18, 3) NULL,

	[TempHNSC] [bit] NULL,
	[TempHN] [decimal](18, 3) NULL,
	[TempHNErr] [decimal](18, 3) NULL,
	[TempHNValue] [decimal](18, 3) NULL,

	[SpeedSC] [bit] NULL,
	[Speed] [decimal](18, 3) NULL,
	[SpeedErr] [decimal](18, 3) NULL,
	[SpeedValue] [decimal](18, 3) NULL,

	[TreatSC] [bit] NULL,
	[Treat] [decimal](18, 3) NULL,
	[TreatValue] [decimal](18, 3) NULL,

	[DoffingLengthSC] [bit] NULL,
	[DoffingLength] [decimal](18, 3) NULL,
	[DoffingLengthValue] [decimal](18, 3) NULL,

	[WeightSC] [bit] NULL,
	[Weight] [decimal](18, 3) NULL,
	[WeightValue] [decimal](18, 3) NULL,

	[SpindleSC] [bit] NULL,
	[Spindle] [decimal](18, 3) NULL,
	[SpindleValue] [decimal](18, 3) NULL,

	[ProductionGoodSC] [bit] NULL,
	[ProductionGood] [decimal](18, 3) NULL,
	[ProductionGoodValue] [decimal](18, 3) NULL,
	
	[ProductionTotalSC] [bit] NULL,
	[ProductionTotal] [decimal](18, 3) NULL,
    [ProductionTotalValue] [decimal](18, 3) NULL,

	[ProductionCut] [decimal](18, 3) NULL,
	[PositionCordCutCreel] [decimal](18, 3) NULL,
	[PositionCordCutCS] [decimal](18, 3) NULL,
	[PositionCordCutWinder] [decimal](18, 3) NULL,
	[PositionCordCutWasteYarn] [decimal](18, 3) NULL,
    
	[CheckTimeStart] [datetime] NULL,
	[CheckTimeFinish] [datetime] NULL,
	[CheckTimeRecord] [datetime] NULL,

	[Opertor] [nvarchar](100) NULL,
	[Leader] [nvarchar](100) NULL
) ON [PRIMARY]

GO
