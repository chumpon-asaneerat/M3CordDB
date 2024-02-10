/****** Object:  Table [dbo].[ProductionRecord]    Script Date: 11/1/2567 2:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionRecord](
	[RecordDate] [datetime] NULL,
	[ProcessHS] [bit] NULL,
	[ProcessDIP] [bit] NULL,
	[Customer] [nvarchar](100) NULL,
	[Counter] [decimal](18, 3) NULL,
	[CounterErr] [decimal](18, 3) NULL,
	[CordStructure] [nvarchar](100) NULL,
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[Bath1SolutionName] [nvarchar](100) NULL,
	[Bath1NipFront] [decimal](18, 3) NULL,
	[Bath1NipBack] [decimal](18, 3) NULL,
	[Bath1NipBackErr] [decimal](18, 3) NULL,
	[Bath2SolutionName] [nvarchar](100) NULL,
	[Bath2NipFront] [decimal](18, 3) NULL,
	[Bath2NipBack] [decimal](18, 3) NULL,
	[Bath2NipBackErr] [decimal](18, 3) NULL,
	[Sofner] [bit] NULL,
	[DarwNip] [bit] NULL,
	[PaperTubeColorUse] [nvarchar](100) NULL,
	[TensionD] [decimal](18, 3) NULL,
	[TensionH] [decimal](18, 3) NULL,
	[TensionN] [decimal](18, 3) NULL,
	[TensionWinder] [nvarchar](100) NULL,
	[GasBefore] [decimal](18, 3) NULL,
	[GasAfter] [decimal](18, 3) NULL,
	[GasTotal] [decimal](18, 3) NULL,
	[CoolingWarterBefore] [decimal](18, 3) NULL,
	[CoolingWarterAfter] [decimal](18, 3) NULL,
	[CoolingWarterTotal] [decimal](18, 3) NULL,
	[AirPressureBefore] [decimal](18, 3) NULL,
	[AirPressureAfter] [decimal](18, 3) NULL,
	[AirPressureTotal] [decimal](18, 3) NULL,
	[Bath1Before] [decimal](18, 3) NULL,
	[Bath1After] [decimal](18, 3) NULL,
	[Bath1WPU] [decimal](18, 3) NULL,
	[Bath2Before] [decimal](18, 3) NULL,
	[Bath2After] [decimal](18, 3) NULL,
	[Bath2WPU] [decimal](18, 3) NULL,
	[TempDZone1] [decimal](18, 3) NULL,
	[TempDZone2] [decimal](18, 3) NULL,
	[TempDZone3] [decimal](18, 3) NULL,
	[TempHNZone1] [decimal](18, 3) NULL,
	[TempHNZone2] [decimal](18, 3) NULL,
	[TempHNZone3] [decimal](18, 3) NULL,
	[TempHNZone4] [decimal](18, 3) NULL,
	[TempHNZone5] [decimal](18, 3) NULL,
	[TempHNZone6] [decimal](18, 3) NULL,
	[SectionHead] [nvarchar](100) NULL,
	[SectionManager] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductionRecordDetail]    Script Date: 11/1/2567 2:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionRecordDetail](
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[DoffingNo] [int] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchN] [decimal](18, 3) NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempHN] [decimal](18, 3) NULL,
	[Speed] [decimal](18, 3) NULL,
	[Treat] [decimal](18, 3) NULL,
	[DoffingLength] [decimal](18, 3) NULL,
	[Weight] [decimal](18, 3) NULL,
	[Spindle] [decimal](18, 3) NULL,
	[ProductionGood] [decimal](18, 3) NULL,
	[ProductionTotal] [decimal](18, 3) NULL,
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
/****** Object:  Table [dbo].[ProductionRecordStd]    Script Date: 11/1/2567 2:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionRecordStd](
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
