/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  Table [dbo].[S8x2ProductionCondition]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S8x2ProductionCondition](
	[S8ConditionId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[RecordDate] [datetime] NULL,
	[ProcessHS] [bit] NULL,
	[ProcessDIP] [bit] NULL,
	[Counter] [decimal](18, 3) NULL,
	[CounterErr] [decimal](18, 3) NULL,
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
	[TempDZone4] [decimal](18, 3) NULL,
	[TempDZone5] [decimal](18, 3) NULL,
	[TempDZone6] [decimal](18, 3) NULL,
	[TempDZone7] [decimal](18, 3) NULL,
	[TempDZone8] [decimal](18, 3) NULL,
	[TempDZone9] [decimal](18, 3) NULL,
	[TempDZone10] [decimal](18, 3) NULL,
	[TempDZone11] [decimal](18, 3) NULL,
	[TempDZone12] [decimal](18, 3) NULL,
	[TempDZone13] [decimal](18, 3) NULL,
	[TempDZone14] [decimal](18, 3) NULL,
	[TempDZone15] [decimal](18, 3) NULL,
	[TempDZoneAvg] [decimal](18, 3) NULL,
	[TempHNZone1] [decimal](18, 3) NULL,
	[TempHNZone2] [decimal](18, 3) NULL,
	[TempHNZone3] [decimal](18, 3) NULL,
	[TempHNZone4] [decimal](18, 3) NULL,
	[TempHNZone5] [decimal](18, 3) NULL,
	[TempHNZone6] [decimal](18, 3) NULL,
	[TempHNZone7] [decimal](18, 3) NULL,
	[TempHNZone8] [decimal](18, 3) NULL,
	[TempHNZone9] [decimal](18, 3) NULL,
	[TempHNZone10] [decimal](18, 3) NULL,
	[TempHNZone11] [decimal](18, 3) NULL,
	[TempHNZone12] [decimal](18, 3) NULL,
	[TempHNZone13] [decimal](18, 3) NULL,
	[TempHNZone14] [decimal](18, 3) NULL,
	[TempHNZone15] [decimal](18, 3) NULL,
	[TempHNZoneAvg] [decimal](18, 3) NULL,
	[SectionHead] [nvarchar](100) NULL,
	[SectionManager] [nvarchar](100) NULL,
 CONSTRAINT [PK_S8x2ProductionCondition] PRIMARY KEY CLUSTERED 
(
	[S8ConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[S8x2ProductionConditionItem]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S8x2ProductionConditionItem](
	[DIPPCId] [int] NULL,
	[RowType] [int] NULL,
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
	[Opertor] [nvarchar](100) NULL,
	[Leader] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[S8x2ProductionConditionItemStd]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S8x2ProductionConditionItemStd](
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


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  View [dbo].[S8x2ProductionConditionView]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO

CREATE VIEW S8x2ProductionConditionView AS
    SELECT A.S8ConditionId
        , A.DIPPCId
        , A.RecordDate
        , A.ProcessHS
        , A.ProcessDIP
        , B.CustomerName
        , A.Counter
        , A.CounterErr
        , B.CordStructure
        , B.ItemYarn
        , A.ProductCode
        , A.LotNo
        , A.Bath1SolutionName
        , A.Bath1NipFront
        , A.Bath1NipBack
        , A.Bath1NipBackErr
        , A.Bath2SolutionName
        , A.Bath2NipFront
        , A.Bath2NipBack
        , A.Bath2NipBackErr
        , A.Sofner
        , A.DarwNip
        , A.PaperTubeColorUse
        , A.TensionD
        , A.TensionH
        , A.TensionN
        , A.TensionWinder
        , A.GasBefore
        , A.GasAfter
        , A.GasTotal
        , A.CoolingWarterBefore
        , A.CoolingWarterAfter
        , A.CoolingWarterTotal
        , A.AirPressureBefore
        , A.AirPressureAfter
        , A.AirPressureTotal
        , A.Bath1Before
        , A.Bath1After
        , A.Bath1WPU
        , A.Bath2Before
        , A.Bath2After
        , A.Bath2WPU
        , A.TempDZone1
        , A.TempDZone2
        , A.TempDZone3
        , A.TempDZone4
        , A.TempDZone5
        , A.TempDZone6
        , A.TempDZone7
        , A.TempDZone8
        , A.TempDZone9
        , A.TempDZone10
        , A.TempDZone11
        , A.TempDZone12
        , A.TempDZone13
        , A.TempDZone14
        , A.TempDZone15
        , A.TempDZoneAvg
        , A.TempHNZone1
        , A.TempHNZone2
        , A.TempHNZone3
        , A.TempHNZone4
        , A.TempHNZone5
        , A.TempHNZone6
        , A.TempHNZone7
        , A.TempHNZone8
        , A.TempHNZone9
        , A.TempHNZone10
        , A.TempHNZone11
        , A.TempHNZone12
        , A.TempHNZone13
        , A.TempHNZone14
        , A.TempHNZone15
        , A.TempHNZoneAvg
        , A.SectionHead
        , A.SectionManager
     FROM S8x2ProductionCondition AS A
    INNER JOIN dbo.DIPPCCardView AS B ON A.DIPPCId = B.DIPPCId 
    
GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  StoredProcedure [dbo].[DeleteS8x2ProductionConditionItemStd]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteS8x2ProductionConditionItemStd] (
  @DIPPCId int 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        DELETE FROM S8x2ProductionConditionItem
         WHERE DIPPCId = @DIPPCId
           AND (RowType = -2 OR RowType = -1 OR RowType = 0)

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[GetS8x2ProductionConditionItems]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8x2ProductionConditionItems]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , RowType
         , ProductCode 
         , LotNo 
		 , DoffingDate 
		 , DoffingNo 

         , StretchDSC 
		 , StretchD 
		 , StretchDErr 
		 , StretchDValue 

		 , StretchHSC 
		 , StretchH 
		 , StretchHErr 
		 , StretchHValue 

		 , StretchNSC 
		 , StretchN 
		 , StretchNErr 
		 , StretchNValue 

		 , TempDSC 
		 , TempD 
		 , TempDErr 
		 , TempDValue 

		 , TempHNSC 
		 , TempHN 
		 , TempHNErr 
		 , TempHNValue 

		 , SpeedSC 
		 , Speed 
		 , SpeedErr 
		 , SpeedValue 

		 , TreatSC 
		 , Treat 
		 , TreatValue 

		 , DoffingLengthSC 
		 , DoffingLength 
		 , DoffingLengthValue 

		 , WeightSC 
		 , [Weight] 
		 , WeightValue

		 , SpindleSC 
		 , Spindle 
		 , SpindleValue 
		 
		 , ProductionGoodSC
		 , ProductionGood
         , ProductionGoodValue 

		 , ProductionTotalSC
		 , ProductionTotal 
		 , ProductionTotalValue

		 , ProductionCut 
		 , PositionCordCutCreel 

		 , PositionCordCutCS 
		 , PositionCordCutWinder 
		 , PositionCordCutWasteYarn 
		 
         , CheckTimeStart 
		 , CheckTimeFinish 

		 , Opertor 
		 , Leader 
      FROM S8x2ProductionConditionItem
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
	   AND LotNo IS NOT NULL
     ORDER BY DIPPCId, LotNo, DoffingNo;

END;



GO
/****** Object:  StoredProcedure [dbo].[GetS8x2ProductionConditionItemStd]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8x2ProductionConditionItemStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode 
         , StretchDSC 
		 , StretchD 
		 , StretchDErr 
		 , StretchHSC 
		 , StretchH 
		 , StretchHErr 
		 , StretchNSC 
		 , StretchN 
		 , StretchNErr 
		 , TempDSC 
		 , TempD 
		 , TempDErr 
		 , TempHNSC 
		 , TempHN 
		 , TempHNErr 
		 , SpeedSC 
		 , Speed 
		 , SpeedErr 
		 , TreatSC 
		 , Treat 
		 , DoffingLengthSC 
		 , DoffingLength 
		 , WeightSC 
		 , [Weight] 
		 , SpindleSC 
		 , Spindle 
		 , ProductionGoodSC
		 , ProductionGood
		 , ProductionTotalSC
		 , ProductionTotal 
      FROM S8x2ProductionConditionItemStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;



GO
/****** Object:  StoredProcedure [dbo].[GetS8x2ProductionConditionItemStdBRow]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8x2ProductionConditionItemStdBRow]
(
  @DIPPCId int
)
AS
BEGIN
    SELECT DIPPCId
         , RowType
         , ProductCode 
         , LotNo 
		 , DoffingDate 
		 , DoffingNo 

         , StretchDSC 
		 , StretchD 
		 , StretchDErr 
		 , StretchDValue 

		 , StretchHSC 
		 , StretchH 
		 , StretchHErr 
		 , StretchHValue 

		 , StretchNSC 
		 , StretchN 
		 , StretchNErr 
		 , StretchNValue 

		 , TempDSC 
		 , TempD 
		 , TempDErr 
		 , TempDValue 

		 , TempHNSC 
		 , TempHN 
		 , TempHNErr 
		 , TempHNValue 

		 , SpeedSC 
		 , Speed 
		 , SpeedErr 
		 , SpeedValue 

		 , TreatSC 
		 , Treat 
		 , TreatValue 

		 , DoffingLengthSC 
		 , DoffingLength 
		 , DoffingLengthValue 

		 , WeightSC 
		 , [Weight] 
		 , WeightValue

		 , SpindleSC 
		 , Spindle 
		 , SpindleValue 
		 
		 , ProductionGoodSC
		 , ProductionGood
         , ProductionGoodValue 

		 , ProductionTotalSC
		 , ProductionTotal 
		 , ProductionTotalValue

		 , ProductionCut 
		 , PositionCordCutCreel 

		 , PositionCordCutCS 
		 , PositionCordCutWinder 
		 , PositionCordCutWasteYarn 
		 
         , CheckTimeStart 
		 , CheckTimeFinish 

		 , Opertor 
		 , Leader 
      FROM S8x2ProductionConditionItem
     WHERE DIPPCId = @DIPPCId
       AND RowType = -1
       AND LotNo IS NOT NULL
     ORDER BY DIPPCId, RowType, DoffingDate, DoffingNo;

END



GO
/****** Object:  StoredProcedure [dbo].[GetS8x2ProductionConditionItemStdVRow]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8x2ProductionConditionItemStdVRow]
(
  @DIPPCId int
)
AS
BEGIN
    SELECT DIPPCId
         , RowType
         , ProductCode 
         , LotNo 
		 , DoffingDate 
		 , DoffingNo 

         , StretchDSC 
		 , StretchD 
		 , StretchDErr 
		 , StretchDValue 

		 , StretchHSC 
		 , StretchH 
		 , StretchHErr 
		 , StretchHValue 

		 , StretchNSC 
		 , StretchN 
		 , StretchNErr 
		 , StretchNValue 

		 , TempDSC 
		 , TempD 
		 , TempDErr 
		 , TempDValue 

		 , TempHNSC 
		 , TempHN 
		 , TempHNErr 
		 , TempHNValue 

		 , SpeedSC 
		 , Speed 
		 , SpeedErr 
		 , SpeedValue 

		 , TreatSC 
		 , Treat 
		 , TreatValue 

		 , DoffingLengthSC 
		 , DoffingLength 
		 , DoffingLengthValue 

		 , WeightSC 
		 , [Weight] 
		 , WeightValue

		 , SpindleSC 
		 , Spindle 
		 , SpindleValue 
		 
		 , ProductionGoodSC
		 , ProductionGood
         , ProductionGoodValue 

		 , ProductionTotalSC
		 , ProductionTotal 
		 , ProductionTotalValue

		 , ProductionCut 
		 , PositionCordCutCreel 

		 , PositionCordCutCS 
		 , PositionCordCutWinder 
		 , PositionCordCutWasteYarn 
		 
         , CheckTimeStart 
		 , CheckTimeFinish 

		 , Opertor 
		 , Leader 
      FROM S8x2ProductionConditionItem
     WHERE DIPPCId = @DIPPCId
       AND RowType = -2
       AND LotNo IS NOT NULL
     ORDER BY DIPPCId, RowType, DoffingDate, DoffingNo;

END



GO
/****** Object:  StoredProcedure [dbo].[GetS8x2ProductionConditions]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8x2ProductionConditions]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT S8ConditionId
         , DIPPCId
         , RecordDate
		 , CustomerName
		 , CordStructure
         , ProcessHS 
         , ProcessDIP 
		 , [Counter]
		 , CounterErr
		 , CordStructure
         , ItemYarn
		 , ProductCode
		 , LotNo
		 , Bath1SolutionName
		 , Bath1NipFront
		 , Bath1NipBack
		 , Bath1NipBackErr
		 , Bath2SolutionName
		 , Bath2NipFront
		 , Bath2NipBack
		 , Bath2NipBackErr
		 , Sofner
		 , DarwNip
		 , PaperTubeColorUse
		 , TensionD
		 , TensionH
		 , TensionN
		 , TensionWinder
		 , GasBefore
		 , GasAfter
		 , GasTotal
		 , CoolingWarterBefore
		 , CoolingWarterAfter
		 , CoolingWarterTotal
		 , AirPressureBefore
		 , AirPressureAfter
		 , AirPressureTotal
		 , Bath1Before
		 , Bath1After
		 , Bath1WPU
		 , Bath2Before
		 , Bath2After
		 , Bath2WPU
		 , TempDZone1
		 , TempDZone2
		 , TempDZone3
		 , TempDZone4
		 , TempDZone5
		 , TempDZone6
		 , TempDZone7
		 , TempDZone8
		 , TempDZone9
		 , TempDZone10
		 , TempDZone11
		 , TempDZone12
		 , TempDZone13
		 , TempDZone14
		 , TempDZone15
		 , TempDZoneAvg
		 , TempHNZone1
		 , TempHNZone2
		 , TempHNZone3
		 , TempHNZone4
		 , TempHNZone5
		 , TempHNZone6
		 , TempHNZone7
		 , TempHNZone8
		 , TempHNZone9
		 , TempHNZone10
		 , TempHNZone11
		 , TempHNZone12
		 , TempHNZone13
		 , TempHNZone14
		 , TempHNZone15
		 , TempHNZoneAvg
		 , SectionHead
		 , SectionManager 
      FROM S8x2ProductionConditionView
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
	   AND LotNo IS NOT NULL
     ORDER BY RecordDate;

END;



GO
/****** Object:  StoredProcedure [dbo].[SaveS8x2ProductionCondition]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8x2ProductionCondition] (
  @DIPPCId int
, @RecordDate datetime 
, @ProcessHS bit 
, @ProcessDIP bit 
, @Counter decimal (18, 3)
, @CounterErr decimal (18, 3)
, @ProductCode nvarchar (30)
, @LotNo nvarchar (30)
, @Bath1SolutionName nvarchar (100)
, @Bath1NipFront decimal (18, 3)
, @Bath1NipBack decimal (18, 3)
, @Bath1NipBackErr decimal (18, 3)
, @Bath2SolutionName nvarchar (100)
, @Bath2NipFront decimal (18, 3)
, @Bath2NipBack decimal (18, 3)
, @Bath2NipBackErr decimal (18, 3)
, @Sofner bit 
, @DarwNip bit 
, @PaperTubeColorUse nvarchar (100)
, @TensionD decimal (18, 3)
, @TensionH decimal (18, 3)
, @TensionN decimal (18, 3)
, @TensionWinder nvarchar (100)
, @GasBefore decimal (18, 3)
, @GasAfter decimal (18, 3)
, @GasTotal decimal (18, 3)
, @CoolingWarterBefore decimal (18, 3)
, @CoolingWarterAfter decimal (18, 3)
, @CoolingWarterTotal decimal (18, 3)
, @AirPressureBefore decimal (18, 3)
, @AirPressureAfter decimal (18, 3)
, @AirPressureTotal decimal (18, 3)
, @Bath1Before decimal (18, 3)
, @Bath1After decimal (18, 3)
, @Bath1WPU decimal (18, 3)
, @Bath2Before decimal (18, 3)
, @Bath2After decimal (18, 3)
, @Bath2WPU decimal (18, 3)
, @TempDZone1 decimal (18, 3)
, @TempDZone2 decimal (18, 3)
, @TempDZone3 decimal (18, 3)
, @TempDZone4 decimal (18, 3)
, @TempDZone5 decimal (18, 3)
, @TempDZone6 decimal (18, 3)

, @TempDZone7 decimal (18, 3)
, @TempDZone8 decimal (18, 3)
, @TempDZone9 decimal (18, 3)
, @TempDZone10 decimal (18, 3)
, @TempDZone11 decimal (18, 3)
, @TempDZone12 decimal (18, 3)
, @TempDZone13 decimal (18, 3)
, @TempDZone14 decimal (18, 3)
, @TempDZone15 decimal (18, 3)
, @TempDZoneAvg decimal (18, 3)

, @TempHNZone1 decimal (18, 3)
, @TempHNZone2 decimal (18, 3)
, @TempHNZone3 decimal (18, 3)
, @TempHNZone4 decimal (18, 3)
, @TempHNZone5 decimal (18, 3)
, @TempHNZone6 decimal (18, 3)

, @TempHNZone7 decimal (18, 3)
, @TempHNZone8 decimal (18, 3)
, @TempHNZone9 decimal (18, 3)
, @TempHNZone10 decimal (18, 3)
, @TempHNZone11 decimal (18, 3)
, @TempHNZone12 decimal (18, 3)
, @TempHNZone13 decimal (18, 3)
, @TempHNZone14 decimal (18, 3)
, @TempHNZone15 decimal (18, 3)
, @TempHNZoneAvg decimal (18, 3)

, @SectionHead nvarchar (100)
, @SectionManager nvarchar (100) 
, @S8ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2ProductionCondition 
                    WHERE S8ConditionId = @S8ConditionId)
        BEGIN
            UPDATE S8x2ProductionCondition 
               SET DIPPCId = @DIPPCId
                 , RecordDate = @RecordDate 
				 , ProcessHS = @ProcessHS 
				 , ProcessDIP = @ProcessDIP 
				 , [Counter] = @Counter 
				 , CounterErr = @CounterErr 
				 , ProductCode = @ProductCode 
				 , LotNo = @LotNo 
				 , Bath1SolutionName = @Bath1SolutionName 
				 , Bath1NipFront = @Bath1NipFront 
				 , Bath1NipBack = @Bath1NipBack 
				 , Bath1NipBackErr = @Bath1NipBackErr 
				 , Bath2SolutionName = @Bath2SolutionName 
				 , Bath2NipFront = @Bath2NipFront 
				 , Bath2NipBack = @Bath2NipBack 
				 , Bath2NipBackErr = @Bath2NipBackErr 
				 , Sofner = @Sofner 
				 , DarwNip = @DarwNip 
				 , PaperTubeColorUse = @PaperTubeColorUse 
				 , TensionD = @TensionD 
				 , TensionH = @TensionH 
				 , TensionN = @TensionN 
				 , TensionWinder = @TensionWinder 
				 , GasBefore = @GasBefore 
				 , GasAfter = @GasAfter 
				 , GasTotal = @GasTotal 
				 , CoolingWarterBefore = @CoolingWarterBefore 
				 , CoolingWarterAfter = @CoolingWarterAfter 
				 , CoolingWarterTotal = @CoolingWarterTotal 
				 , AirPressureBefore = @AirPressureBefore 
				 , AirPressureAfter = @AirPressureAfter 
				 , AirPressureTotal = @AirPressureTotal 
				 , Bath1Before = @Bath1Before 
				 , Bath1After = @Bath1After 
				 , Bath1WPU = @Bath1WPU 
				 , Bath2Before = @Bath2Before 
				 , Bath2After = @Bath2After 
				 , Bath2WPU = @Bath2WPU 
				 , TempDZone1 = @TempDZone1 
				 , TempDZone2 = @TempDZone2 
				 , TempDZone3 = @TempDZone3 
				 , TempDZone4 = @TempDZone4 
				 , TempDZone5 = @TempDZone5 
				 , TempDZone6 = @TempDZone6 

				 , TempDZone7 = @TempDZone7 
				 , TempDZone8 = @TempDZone8 
				 , TempDZone9 = @TempDZone9 
				 , TempDZone10 = @TempDZone10 
				 , TempDZone11 = @TempDZone11
				 , TempDZone12 = @TempDZone12
				 , TempDZone13 = @TempDZone13 
				 , TempDZone14 = @TempDZone14 
				 , TempDZone15 = @TempDZone15 
				 , TempDZoneAvg = @TempDZoneAvg 

				 , TempHNZone1 = @TempHNZone1 
				 , TempHNZone2 = @TempHNZone2 
				 , TempHNZone3 = @TempHNZone3 
				 , TempHNZone4 = @TempHNZone4 
				 , TempHNZone5 = @TempHNZone5 
				 , TempHNZone6 = @TempHNZone6 

				 , TempHNZone7 = @TempHNZone7 
				 , TempHNZone8 = @TempHNZone8 
				 , TempHNZone9 = @TempHNZone9 
				 , TempHNZone10 = @TempHNZone10 
				 , TempHNZone11 = @TempHNZone11
				 , TempHNZone12 = @TempHNZone12
				 , TempHNZone13 = @TempHNZone13 
				 , TempHNZone14 = @TempHNZone14
				 , TempHNZone15 = @TempHNZone15
				 , TempHNZoneAvg = @TempHNZoneAvg   

				 , SectionHead = @SectionHead 
				 , SectionManager = @SectionManager 
             WHERE S8ConditionId = @S8ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S8x2ProductionCondition
		    (
                  DIPPCId
				, RecordDate 
				, ProcessHS 
				, ProcessDIP 
				, [Counter] 
				, CounterErr 
				, ProductCode 
				, LotNo 
				, Bath1SolutionName 
				, Bath1NipFront 
				, Bath1NipBack 
				, Bath1NipBackErr 
				, Bath2SolutionName 
				, Bath2NipFront 
				, Bath2NipBack 
				, Bath2NipBackErr 
				, Sofner 
				, DarwNip 
				, PaperTubeColorUse 
				, TensionD 
				, TensionH 
				, TensionN 
				, TensionWinder 
				, GasBefore 
				, GasAfter 
				, GasTotal 
				, CoolingWarterBefore 
				, CoolingWarterAfter 
				, CoolingWarterTotal 
				, AirPressureBefore 
				, AirPressureAfter 
				, AirPressureTotal 
				, Bath1Before 
				, Bath1After 
				, Bath1WPU 
				, Bath2Before 
				, Bath2After 
				, Bath2WPU 
				, TempDZone1 
				, TempDZone2 
				, TempDZone3 
				, TempDZone4 
				, TempDZone5 
				, TempDZone6 

				, TempDZone7 
				, TempDZone8
				, TempDZone9 
				, TempDZone10
				, TempDZone11
				, TempDZone12
				, TempDZone13
				, TempDZone14
				, TempDZone15
				, TempDZoneAvg 

				, TempHNZone1 
				, TempHNZone2 
				, TempHNZone3 
				, TempHNZone4 
				, TempHNZone5 
				, TempHNZone6 

				, TempHNZone7 
				, TempHNZone8 
				, TempHNZone9 
				, TempHNZone10 
				, TempHNZone11 
				, TempHNZone12 
				, TempHNZone13
				, TempHNZone14
				, TempHNZone15
				, TempHNZoneAvg  

				, SectionHead 
				, SectionManager
			)
			VALUES
			(
                  @DIPPCId
				, @RecordDate 
				, @ProcessHS 
				, @ProcessDIP 
				, @Counter 
				, @CounterErr 
				, @ProductCode 
				, @LotNo 
				, @Bath1SolutionName 
				, @Bath1NipFront 
				, @Bath1NipBack 
				, @Bath1NipBackErr 
				, @Bath2SolutionName 
				, @Bath2NipFront 
				, @Bath2NipBack 
				, @Bath2NipBackErr 
				, @Sofner 
				, @DarwNip 
				, @PaperTubeColorUse 
				, @TensionD 
				, @TensionH 
				, @TensionN 
				, @TensionWinder 
				, @GasBefore 
				, @GasAfter 
				, @GasTotal 
				, @CoolingWarterBefore 
				, @CoolingWarterAfter 
				, @CoolingWarterTotal 
				, @AirPressureBefore 
				, @AirPressureAfter 
				, @AirPressureTotal 
				, @Bath1Before 
				, @Bath1After 
				, @Bath1WPU 
				, @Bath2Before 
				, @Bath2After 
				, @Bath2WPU 
				, @TempDZone1 
				, @TempDZone2 
				, @TempDZone3 
				, @TempDZone4 
				, @TempDZone5 
				, @TempDZone6 

				, @TempDZone7 
				, @TempDZone8 
				, @TempDZone9 
				, @TempDZone10 
				, @TempDZone11 
				, @TempDZone12 
				, @TempDZone13
				, @TempDZone14
				, @TempDZone15
				, @TempDZoneAvg   

				, @TempHNZone1 
				, @TempHNZone2 
				, @TempHNZone3 
				, @TempHNZone4 
				, @TempHNZone5 
				, @TempHNZone6 

				, @TempHNZone7 
				, @TempHNZone8 
				, @TempHNZone9 
				, @TempHNZone10 
				, @TempHNZone11 
				, @TempHNZone12 
				, @TempHNZone13
				, @TempHNZone14
				, @TempHNZone15
				, @TempHNZoneAvg  

				, @SectionHead 
				, @SectionManager
			);

            SET @S8ConditionId = @@IDENTITY;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[SaveS8x2ProductionConditionItem]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8x2ProductionConditionItem] (
  @DIPPCId int  
, @RowType int  
, @ProductCode nvarchar (30) 
, @LotNo nvarchar (30) 
, @DoffingDate datetime  
, @DoffingNo int  

, @StretchDSC bit  
, @StretchD decimal (18, 3) 
, @StretchDErr decimal (18, 3) 
, @StretchDValue decimal (18, 3) 

, @StretchHSC bit  
, @StretchH decimal (18, 3) 
, @StretchHErr decimal (18, 3) 
, @StretchHValue decimal (18, 3) 

, @StretchNSC bit  
, @StretchN decimal (18, 3) 
, @StretchNErr decimal (18, 3) 
, @StretchNValue decimal (18, 3) 

, @TempDSC bit  
, @TempD decimal (18, 3) 
, @TempDErr decimal (18, 3) 
, @TempDValue decimal (18, 3) 

, @TempHNSC bit  
, @TempHN decimal (18, 3) 
, @TempHNErr decimal (18, 3) 
, @TempHNValue decimal (18, 3) 

, @SpeedSC bit  
, @Speed decimal (18, 3) 
, @SpeedErr decimal (18, 3) 
, @SpeedValue decimal (18, 3) 

, @TreatSC bit  
, @Treat decimal (18, 3) 
, @TreatValue decimal (18, 3) 

, @DoffingLengthSC bit  
, @DoffingLength decimal (18, 3) 
, @DoffingLengthValue decimal (18, 3) 

, @WeightSC bit  
, @Weight decimal (18, 3) 
, @WeightValue decimal (18, 3) 

, @SpindleSC bit  
, @Spindle decimal (18, 3) 
, @SpindleValue decimal (18, 3) 

, @ProductionGoodSC bit  
, @ProductionGood decimal (18, 3) 
, @ProductionGoodValue decimal (18, 3) 

, @ProductionTotalSC bit  
, @ProductionTotal decimal (18, 3) 
, @ProductionTotalValue decimal (18, 3) 

, @ProductionCut decimal (18, 3) 
, @PositionCordCutCreel decimal (18, 3) 
, @PositionCordCutCS decimal (18, 3) 
, @PositionCordCutWinder decimal (18, 3) 
, @PositionCordCutWasteYarn decimal (18, 3) 

, @CheckTimeStart datetime  
, @CheckTimeFinish datetime  

, @Opertor nvarchar (100) 
, @Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2ProductionConditionItem 
                    WHERE DIPPCId = @DIPPCId
                      AND RowType = @RowType
                      AND LotNo = @LotNo 
                      AND DoffingDate = @DoffingDate
                      AND DoffingNo = @DoffingNo)
        BEGIN
            UPDATE S8x2ProductionConditionItem 
               SET DIPPCId = @DIPPCId
                 , RowType = @RowType
                 , DoffingDate = @DoffingDate  
				 , DoffingNo = @DoffingNo 

                 , StretchDSC = @StretchDSC  
				 , StretchD = @StretchD 
				 , StretchDErr = @StretchDErr 
				 , StretchDValue = @StretchDValue

				 , StretchHSC = @StretchHSC  
				 , StretchH = @StretchH 
				 , StretchHErr = @StretchHErr 
				 , StretchHValue = @StretchHValue 

				 , StretchNSC = @StretchNSC  
				 , StretchN = @StretchN 
				 , StretchNErr = @StretchNErr 
				 , StretchNValue = @StretchNValue 

				 , TempDSC = @TempDSC  
				 , TempD = @TempD 
				 , TempDErr = @TempDErr 
				 , TempDValue = @TempDValue 

				 , TempHNSC = @TempHNSC  
				 , TempHN = @TempHN 
				 , TempHNErr = @TempHNErr 
				 , TempHNValue = @TempHNValue 

				 , SpeedSC = @SpeedSC  
				 , Speed = @Speed 
				 , SpeedErr = @SpeedErr 
				 , SpeedValue = @SpeedValue 

				 , TreatSC = @TreatSC  
				 , Treat = @Treat 
				 , TreatValue = @TreatValue 

				 , DoffingLengthSC = @DoffingLengthSC  
				 , DoffingLength = @DoffingLength 
				 , DoffingLengthValue = @DoffingLengthValue 

				 , WeightSC = @WeightSC  
				 , [Weight] = @Weight 
				 , WeightValue = @WeightValue 

				 , SpindleSC = @SpindleSC  
				 , Spindle = @Spindle 
				 , SpindleValue = @SpindleValue 

				 , ProductionGoodSC = @ProductionGoodSC  
				 , ProductionGood = @ProductionGood 
				 , ProductionGoodValue = @ProductionGoodValue 

				 , ProductionTotalSC = @ProductionTotalSC  
				 , ProductionTotal = @ProductionTotal  
				 , ProductionTotalValue = @ProductionTotalValue 

				 , ProductionCut = @ProductionCut 
				 , PositionCordCutCreel = @PositionCordCutCreel 
				 , PositionCordCutCS = @PositionCordCutCS 
				 , PositionCordCutWinder = @PositionCordCutWinder 
				 , PositionCordCutWasteYarn = @PositionCordCutWasteYarn 
				 , CheckTimeStart = @CheckTimeStart  
				 , CheckTimeFinish = @CheckTimeFinish  

				 , Opertor = @Opertor 
				 , Leader = @Leader   
             WHERE DIPPCId = @DIPPCId
               AND RowType = @RowType
               AND LotNo = @LotNo 
               AND DoffingDate = @DoffingDate
               AND DoffingNo = @DoffingNo
        END
        ELSE
        BEGIN
			INSERT INTO S8x2ProductionConditionItem
		    (
                  DIPPCId
                , RowType
				, ProductCode 
				, LotNo 
				, DoffingDate 
				, DoffingNo

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchDValue 

				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchHValue 

				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, StretchNValue 

				, TempDSC  
				, TempD 
				, TempDErr 
				, TempDValue 

				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, TempHNValue 
				
				, SpeedSC  
				, Speed 
				, SpeedErr 
                , SpeedValue 

				, TreatSC  
				, Treat 
				, TreatValue 

				, DoffingLengthSC  
				, DoffingLength 
				, DoffingLengthValue 

				, WeightSC  
				, [Weight] 
				, WeightValue 

				, SpindleSC  
				, Spindle 
				, SpindleValue 

				, ProductionGoodSC  
				, ProductionGood 
				, ProductionGoodValue 

				, ProductionTotalSC  
				, ProductionTotal 
				, ProductionTotalValue 

				, ProductionCut 
				, PositionCordCutCreel 
				, PositionCordCutCS 
				, PositionCordCutWinder 
				, PositionCordCutWasteYarn 

				, CheckTimeStart 
				, CheckTimeFinish 

				, Opertor 
		        , Leader 
			)
			VALUES
			(
                  @DIPPCId
                , @RowType
                , @ProductCode 
				, @LotNo 
				, @DoffingDate 
				, @DoffingNo

			    , @StretchDSC  
			    , @StretchD 
			    , @StretchDErr 
				, @StretchDValue 

			    , @StretchHSC  
			    , @StretchH 
			    , @StretchHErr 
				, @StretchHValue 

			    , @StretchNSC  
			    , @StretchN 
			    , @StretchNErr 
				, @StretchNValue 

			    , @TempDSC  
			    , @TempD 
			    , @TempDErr 
				, @TempDValue 

			    , @TempHNSC  
			    , @TempHN 
			    , @TempHNErr 
				, @TempHNValue 

			    , @SpeedSC  
			    , @Speed 
			    , @SpeedErr 
				, @SpeedValue 

			    , @TreatSC  
			    , @Treat 
				, @TreatValue 

			    , @DoffingLengthSC  
			    , @DoffingLength 
				, @DoffingLengthValue 

			    , @WeightSC  
			    , @Weight 
				, @WeightValue 

			    , @SpindleSC  
			    , @Spindle 
				, @SpindleValue 

			    , @ProductionGoodSC  
			    , @ProductionGood 
				, @ProductionGoodValue 

			    , @ProductionTotalSC  
			    , @ProductionTotal 
				, @ProductionTotalValue 

				, @ProductionCut 
				, @PositionCordCutCreel 
				, @PositionCordCutCS 
				, @PositionCordCutWinder 
				, @PositionCordCutWasteYarn 

				, @CheckTimeStart  
				, @CheckTimeFinish  

				, @Opertor 
				, @Leader 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[SaveS8x2ProductionConditionItemStd]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8x2ProductionConditionItemStd] (
  @ProductCode nvarchar (30) 
, @StretchDSC bit  
, @StretchD decimal (18, 3) 
, @StretchDErr decimal (18, 3) 
, @StretchHSC bit  
, @StretchH decimal (18, 3) 
, @StretchHErr decimal (18, 3) 
, @StretchNSC bit  
, @StretchN decimal (18, 3) 
, @StretchNErr decimal (18, 3) 
, @TempDSC bit  
, @TempD decimal (18, 3) 
, @TempDErr decimal (18, 3) 
, @TempHNSC bit  
, @TempHN decimal (18, 3) 
, @TempHNErr decimal (18, 3) 
, @SpeedSC bit  
, @Speed decimal (18, 3) 
, @SpeedErr decimal (18, 3) 
, @TreatSC bit  
, @Treat decimal (18, 3) 
, @DoffingLengthSC bit  
, @DoffingLength decimal (18, 3) 
, @WeightSC bit  
, @Weight decimal (18, 3) 
, @SpindleSC bit  
, @Spindle decimal (18, 3) 
, @ProductionGoodSC bit  
, @ProductionGood decimal (18, 3) 
, @ProductionTotalSC bit  
, @ProductionTotal decimal (18, 3) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2ProductionConditionItemStd 
                    WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S8x2ProductionConditionItemStd 
               SET StretchDSC = @StretchDSC  
				 , StretchD = @StretchD 
				 , StretchDErr = @StretchDErr 
				 , StretchHSC = @StretchHSC  
				 , StretchH = @StretchH 
				 , StretchHErr = @StretchHErr 
				 , StretchNSC = @StretchNSC  
				 , StretchN = @StretchN 
				 , StretchNErr = @StretchNErr 
				 , TempDSC = @TempDSC  
				 , TempD = @TempD 
				 , TempDErr = @TempDErr 
				 , TempHNSC = @TempHNSC  
				 , TempHN = @TempHN 
				 , TempHNErr = @TempHNErr 
				 , SpeedSC = @SpeedSC  
				 , Speed = @Speed 
				 , SpeedErr = @SpeedErr 
				 , TreatSC = @TreatSC  
				 , Treat = @Treat 
				 , DoffingLengthSC = @DoffingLengthSC  
				 , DoffingLength = @DoffingLength 
				 , WeightSC = @WeightSC  
				 , [Weight] = @Weight 
				 , SpindleSC = @SpindleSC  
				 , Spindle = @Spindle 
				 , ProductionGoodSC = @ProductionGoodSC  
				 , ProductionGood = @ProductionGood 
				 , ProductionTotalSC = @ProductionTotalSC  
				 , ProductionTotal = @ProductionTotal  
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S8x2ProductionConditionItemStd
		    (
			      ProductCode  
				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
			)
			VALUES
			(
                  @ProductCode  
			    , @StretchDSC  
			    , @StretchD 
			    , @StretchDErr 
			    , @StretchHSC  
			    , @StretchH 
			    , @StretchHErr 
			    , @StretchNSC  
			    , @StretchN 
			    , @StretchNErr 
			    , @TempDSC  
			    , @TempD 
			    , @TempDErr 
			    , @TempHNSC  
			    , @TempHN 
			    , @TempHNErr 
			    , @SpeedSC  
			    , @Speed 
			    , @SpeedErr 
			    , @TreatSC  
			    , @Treat 
			    , @DoffingLengthSC  
			    , @DoffingLength 
			    , @WeightSC  
			    , @Weight 
			    , @SpindleSC  
			    , @Spindle 
			    , @ProductionGoodSC  
			    , @ProductionGood 
			    , @ProductionTotalSC  
			    , @ProductionTotal 
			);  
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[SaveS8x2ProductionConditionItemStdBRow]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8x2ProductionConditionItemStdBRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @Date datetime,
    @DoffingNo int,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
--DECLARE @Today datetime = NULL
DECLARE @RowType int = -1
	BEGIN TRY
        IF (@LotNo IS NULL)
        BEGIN
            -- Update Error Status/Message
            SET @errNum = 100;
            SET @errMsg = 'Lot No Is null';
            RETURN
        END
        /*
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        */
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM S8x2ProductionConditionItem 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          --AND PeriodTime = @Today
                          AND DoffingDate = @Date
                          AND DoffingNo = @DoffingNo
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
			INSERT INTO S8x2ProductionConditionItem
		    (
                  DIPPCId
                , RowType
                , DoffingDate
                , DoffingNo
                , LotNo
                , ProductCode

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
			)
            SELECT DIPPCId = @DIPPCId
                , RowType = @RowType
                , DoffingDate = @Date
                , DoffingNo = @DoffingNo
                , LotNo = @LotNo
                ,[ProductCode]

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
            FROM S8x2ProductionConditionItemStd 
            WHERE ProductCode = @ProductCode;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[SaveS8x2ProductionConditionItemStdVRow]    Script Date: 6/2/2567 23:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8x2ProductionConditionItemStdVRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @Date datetime,
    @DoffingNo int,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
--DECLARE @Today datetime = NULL
DECLARE @RowType int = -2
	BEGIN TRY
        IF (@LotNo IS NULL)
        BEGIN
            -- Update Error Status/Message
            SET @errNum = 100;
            SET @errMsg = 'Lot No Is null';
            RETURN
        END
        /*
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        */
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM S8x2ProductionConditionItem 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          --AND PeriodTime = @Today
                          AND DoffingDate = @Date
                          AND DoffingNo = @DoffingNo
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
			INSERT INTO S8x2ProductionConditionItem
		    (
                  DIPPCId
                , RowType
                , DoffingDate
                , DoffingNo
                , LotNo
                , ProductCode

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
			)
            SELECT DIPPCId = @DIPPCId
                , RowType = @RowType
                , DoffingDate = @Date
                , DoffingNo = @DoffingNo
                , LotNo = @LotNo
                ,[ProductCode]

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
            FROM S8x2ProductionConditionItemStd 
            WHERE ProductCode = @ProductCode;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  Table [dbo].[S8WetPickup]    Script Date: 2/16/2024 10:36:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8WetPickup](
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[CustomerName] [nvarchar](30) NULL,
	[FirstDip1] [nvarchar](50) NULL,
	[SolutionName] [nvarchar](50) NULL,
	[FirstDip2] [nvarchar](50) NULL,
	[SolutionLotNo] [nvarchar](50) NULL,
	[SpeedSet] [decimal](18, 3) NULL,
	[SpeedActual] [decimal](18, 3) NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchN] [decimal](18, 3) NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempHN] [decimal](18, 3) NULL,
	[AMV1] [decimal](18, 3) NULL,
	[AMV2] [decimal](18, 3) NULL,
	[AMV3] [decimal](18, 3) NULL,
	[AMV4] [decimal](18, 3) NULL,
	[AMAmp1] [decimal](18, 3) NULL,
	[AMAmp2] [decimal](18, 3) NULL,
	[AMAmp3] [decimal](18, 3) NULL,
	[AMAmp4] [decimal](18, 3) NULL,
	[AMBearing1] [bit] NULL,
	[AMBearing2] [bit] NULL,
	[AMBearing3] [bit] NULL,
	[AMBearing4] [bit] NULL,
	[AMMotorNoise1] [bit] NULL,
	[AMMotorNoise2] [bit] NULL,
	[AMMotorNoise3] [bit] NULL,
	[AMMotorNoise4] [bit] NULL,
	[AMNoVibration1] [bit] NULL,
	[AMNoVibration2] [bit] NULL,
	[AMNoVibration3] [bit] NULL,
	[AMNoVibration4] [bit] NULL,
	[BurnerD] [bit] NULL,
	[BurnerHN] [bit] NULL,
	[GasLeakD] [bit] NULL,
	[GasLeakHN] [bit] NULL,
	[GasPresureD] [decimal](18, 3) NULL,
	[GasPresureHN] [decimal](18, 3) NULL,
	[AirPresureD] [decimal](18, 3) NULL,
	[AirPresureHN] [decimal](18, 3) NULL,
	[ACMotorExhaustFanD] [bit] NULL,
	[ACMotorExhaustFanHN] [bit] NULL,
	[ACMotorSupplyD] [bit] NULL,
	[ACMotorSupplyHN] [bit] NULL,
	[ExhaustFan1] [bit] NULL,
	[ExhaustFan2] [bit] NULL,
	[ExhaustFanSupply1] [bit] NULL,
	[ExhaustFanSupply2] [bit] NULL,
	[Remark] [nvarchar](200) NULL,
	[Opertor] [nvarchar](100) NULL,
	[Leader] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  Table [dbo].[S8x2WetPickup]    Script Date: 2/16/2024 10:36:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8x2WetPickup](
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[CustomerName] [nvarchar](30) NULL,
	[FirstDip1] [nvarchar](50) NULL,
	[SolutionName] [nvarchar](50) NULL,
	[FirstDip2] [nvarchar](50) NULL,
	[SolutionLotNo] [nvarchar](50) NULL,
	[PullMotorActSpeed1] [decimal](18, 3) NULL,
	[PullMotorActSpeed2] [decimal](18, 3) NULL,
	[PullMotorActSpeed3] [decimal](18, 3) NULL,
	[PullMotorActSpeed4] [decimal](18, 3) NULL,
	[PullMotorActSpeed5] [decimal](18, 3) NULL,
	[PullMotorActSpeed6] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint1] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint2] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint3] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint4] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint5] [decimal](18, 3) NULL,
	[PullMotorSpeedSetPoint6] [decimal](18, 3) NULL,
	[PullMotorActCurrent1] [decimal](18, 3) NULL,
	[PullMotorActCurrent2] [decimal](18, 0) NULL,
	[PullMotorActCurrent3] [decimal](18, 0) NULL,
	[PullMotorActCurrent4] [decimal](18, 0) NULL,
	[PullMotorActCurrent5] [decimal](18, 0) NULL,
	[PullMotorActCurrent6] [decimal](18, 0) NULL,
	[PullMotorPctCurrent1] [decimal](18, 0) NULL,
	[PullMotorPctCurrent2] [decimal](18, 0) NULL,
	[PullMotorPctCurrent3] [decimal](18, 0) NULL,
	[PullMotorPctCurrent4] [decimal](18, 0) NULL,
	[PullMotorPctCurrent5] [decimal](18, 0) NULL,
	[PullMotorPctCurrent6] [decimal](18, 0) NULL,
	[OvenCirculatingFanActSpeed1] [decimal](18, 0) NULL,
	[OvenCirculatingFanActSpeed2] [decimal](18, 0) NULL,
	[OvenExhaustFanActSpeed1] [decimal](18, 0) NULL,
	[OvenExhaustFanActSpeed2] [decimal](18, 0) NULL,
	[OvenExhaustFanFrontActSpeed] [decimal](18, 0) NULL,
	[OvenExhaustFanBackActSpeed] [decimal](18, 0) NULL,
	[OvenCirculatingFanSpeedSetpoint1] [decimal](18, 0) NULL,
	[OvenCirculatingFanSpeedSetpoint2] [decimal](18, 0) NULL,
	[OvenExhaustFanSpeedSetpoint1] [decimal](18, 0) NULL,
	[OvenExhaustFanSpeedSetpoint2] [decimal](18, 0) NULL,
	[OvenExhaustFanFrontSpeedSetpoint] [decimal](18, 0) NULL,
	[OvenExhaustFanBackSpeedSetpoint] [decimal](18, 0) NULL,
	[OvenCirculatingFanActCurrent1] [decimal](18, 0) NULL,
	[OvenCirculatingFanActCurrent2] [decimal](18, 0) NULL,
	[OvenExhaustFanActCurrent1] [decimal](18, 0) NULL,
	[OvenExhaustFanActCurrent2] [decimal](18, 0) NULL,
	[OvenExhaustFanFrontActCurrent] [decimal](18, 0) NULL,
	[OvenExhaustFanBackActCurrent] [decimal](18, 0) NULL,
	[OvenCirculatingFanPctCurrent1] [decimal](18, 0) NULL,
	[OvenCirculatingFanPctCurrent2] [decimal](18, 0) NULL,
	[OvenExhaustFanPctCurrent1] [decimal](18, 0) NULL,
	[OvenExhaustFanPctCurrent2] [decimal](18, 0) NULL,
	[OvenExhaustFanFrontPctCurrent] [decimal](18, 0) NULL,
	[OvenExhaustFanBackPctCurrent] [decimal](18, 0) NULL,
	[MotorActStretch1x2] [decimal](18, 0) NULL,
	[MotorActStretch3x4] [decimal](18, 0) NULL,
	[MotorActStretch4x5] [decimal](18, 0) NULL,
	[MotorActStretch1x6] [decimal](18, 0) NULL,
	[MotorSetPoint1x2] [decimal](18, 0) NULL,
	[MotorSetPoint3x4] [decimal](18, 0) NULL,
	[MotorSetPoint4x5] [decimal](18, 0) NULL,
	[MotorSetPoint1x6] [decimal](18, 0) NULL,
	[MotorActTensionTotal1x2] [decimal](18, 0) NULL,
	[MotorActTensionTotal3x4] [decimal](18, 0) NULL,
	[MotorActTensionTotal4x5] [decimal](18, 0) NULL,
	[MotorActTensionTotal1x6] [decimal](18, 0) NULL,
	[MotorSingleTension1x2] [decimal](18, 0) NULL,
	[MotorSingleTension3x4] [decimal](18, 0) NULL,
	[MotorSingleTension4x5] [decimal](18, 0) NULL,
	[MotorSingleTension1x6] [decimal](18, 0) NULL,
	[Remark] [nvarchar](200) NULL,
	[Operator] [nvarchar](100) NULL,
	[Leader] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  Table [dbo].[S8WetPickUpItem]    Script Date: 2/16/2024 15:11:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8WetPickUpItem](
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[DoffNo] [int] NULL,
	[TwistNo] [int] NULL,
	[RowType] [int] NULL,
	[NipPressure] [nvarchar](50) NULL,
	[WPU] [decimal](18, 3) NULL,
	[WPUErr] [decimal](18, 3) NULL,
	[WPUValue] [decimal](18, 3) NULL,
	[FirstAmt] [decimal](18, 3) NULL,
	[UseAmt] [decimal](18, 3) NULL,
	[RestAmt] [decimal](18, 3) NULL,
	[ThrowAmt] [decimal](18, 3) NULL,
	[Operator] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[Remark] [nvarchar](200) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  Table [dbo].[S8x2WetPickUpItem]    Script Date: 2/16/2024 15:11:22 ******/
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
	[WPUValue] [decimal](18, 3) NULL,
	[FirstAmt] [decimal](18, 3) NULL,
	[UseAmt] [decimal](18, 3) NULL,
	[RestAmt] [decimal](18, 3) NULL,
	[ThrowAmt] [decimal](18, 3) NULL,
	[Operator] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[Remark] [nvarchar](200) NULL
) ON [PRIMARY]

GO




/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8WetPickUp]    Script Date: 1/20/2024 12:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE GetS8WetPickUps
(
  @ProductCode nvarchar(50) = NULL
, @LotNo nvarchar(50) = NULL
, @DoffingDate datetime
)
AS
BEGIN
    SELECT A.ProductCode
         , A.LotNo
         , A.DoffingDate
         , A.CustomerName
         , A.FirstDip1
         , A.SolutionName
         , A.FirstDip2
         , A.SolutionLotNo
         , A.SpeedSet
         , A.SpeedActual
         , A.StretchD
         , A.StretchH
         , A.StretchN
         , A.TempD
         , A.TempHN
         , A.AMV1
         , A.AMV2
         , A.AMV3
         , A.AMV4
         , A.AMAmp1
         , A.AMAmp2
         , A.AMAmp3
         , A.AMAmp4
         , A.AMBearing1
         , A.AMBearing2
         , A.AMBearing3
         , A.AMBearing4
         , A.AMMotorNoise1
         , A.AMMotorNoise2
         , A.AMMotorNoise3
         , A.AMMotorNoise4
         , A.AMNoVibration1
         , A.AMNoVibration2
         , A.AMNoVibration3
         , A.AMNoVibration4
         , A.BurnerD
         , A.BurnerHN
         , A.GasLeakD
         , A.GasLeakHN
         , A.GasPresureD
         , A.GasPresureHN
         , A.AirPresureD
         , A.AirPresureHN
         , A.ACMotorExhaustFanD
         , A.ACMotorExhaustFanHN
         , A.ACMotorSupplyD
         , A.ACMotorSupplyHN
         , A.ExhaustFan1
         , A.ExhaustFan2
         , A.ExhaustFanSupply1
         , A.ExhaustFanSupply2
         , A.Remark
         , A.Opertor
         , A.Leader
      FROM S8WetPickup A
     WHERE A.LotNo = @LotNo 
       AND A.ProductCode = @ProductCode
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)))
	   AND A.LotNo IS NOT NULL
     ORDER BY A.DoffingDate;

END

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8x2WetPickUps]    Script Date: 1/20/2024 12:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE GetS8x2WetPickUps
(
  @ProductCode nvarchar(50) = NULL
, @LotNo nvarchar(50) = NULL
, @DoffingDate datetime
)
AS
BEGIN
    SELECT A.ProductCode
         , A.LotNo
         , A.DoffingDate
         , A.CustomerName
         , A.FirstDip1
         , A.SolutionName
         , A.FirstDip2
         , A.SolutionLotNo
         , A.PullMotorActSpeed1
         , A.PullMotorActSpeed2
         , A.PullMotorActSpeed3
         , A.PullMotorActSpeed4
         , A.PullMotorActSpeed5
         , A.PullMotorActSpeed6
         , A.PullMotorSpeedSetPoint1
         , A.PullMotorSpeedSetPoint2
         , A.PullMotorSpeedSetPoint3
         , A.PullMotorSpeedSetPoint4
         , A.PullMotorSpeedSetPoint5
         , A.PullMotorSpeedSetPoint6
         , A.PullMotorActCurrent1
         , A.PullMotorActCurrent2
         , A.PullMotorActCurrent3
         , A.PullMotorActCurrent4
         , A.PullMotorActCurrent5
         , A.PullMotorActCurrent6
         , A.PullMotorPctCurrent1
         , A.PullMotorPctCurrent2
         , A.PullMotorPctCurrent3
         , A.PullMotorPctCurrent4
         , A.PullMotorPctCurrent5
         , A.PullMotorPctCurrent6
         , A.OvenCirculatingFanActSpeed1
         , A.OvenCirculatingFanActSpeed2
         , A.OvenExhaustFanActSpeed1
         , A.OvenExhaustFanActSpeed2
         , A.OvenExhaustFanFrontActSpeed
         , A.OvenExhaustFanBackActSpeed
         , A.OvenCirculatingFanSpeedSetpoint1
         , A.OvenCirculatingFanSpeedSetpoint2
         , A.OvenExhaustFanSpeedSetpoint1
         , A.OvenExhaustFanSpeedSetpoint2
         , A.OvenExhaustFanFrontSpeedSetpoint
         , A.OvenExhaustFanBackSpeedSetpoint
         , A.OvenCirculatingFanActCurrent1
         , A.OvenCirculatingFanActCurrent2
         , A.OvenExhaustFanActCurrent1
         , A.OvenExhaustFanActCurrent2
         , A.OvenExhaustFanFrontActCurrent
         , A.OvenExhaustFanBackActCurrent
         , A.OvenCirculatingFanPctCurrent1
         , A.OvenCirculatingFanPctCurrent2
         , A.OvenExhaustFanPctCurrent1
         , A.OvenExhaustFanPctCurrent2
         , A.OvenExhaustFanFrontPctCurrent
         , A.OvenExhaustFanBackPctCurrent
         , A.MotorActStretch1x2
         , A.MotorActStretch3x4
         , A.MotorActStretch4x5
         , A.MotorActStretch1x6
         , A.MotorSetPoint1x2
         , A.MotorSetPoint3x4
         , A.MotorSetPoint4x5
         , A.MotorSetPoint1x6
         , A.MotorActTensionTotal1x2
         , A.MotorActTensionTotal3x4
         , A.MotorActTensionTotal4x5
         , A.MotorActTensionTotal1x6
         , A.MotorSingleTension1x2
         , A.MotorSingleTension3x4
         , A.MotorSingleTension4x5
         , A.MotorSingleTension1x6
         , A.Remark
         , A.Opertor
         , A.Leader
      FROM S8x2WetPickup A
     WHERE A.LotNo = @LotNo 
       AND A.ProductCode = @ProductCode
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)))
	   AND A.LotNo IS NOT NULL
     ORDER BY A.DoffingDate;

END;

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8WetPickup]    Script Date: 1/20/2024 13:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8WetPickup] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @CustomerName nvarchar(30)
, @FirstDip1 nvarchar(50)
, @SolutionName nvarchar(50)
, @FirstDip2 nvarchar(50)
, @SolutionLotNo nvarchar(50)
, @SpeedSet decimal(18, 3) 
, @SpeedActual decimal(18, 3) 
, @StretchD decimal(18, 3) 
, @StretchH decimal(18, 3) 
, @StretchN decimal(18, 3) 
, @TempD decimal(18, 3) 
, @TempHN decimal(18, 3) 
, @AMV1 decimal(18, 3) 
, @AMV2 decimal(18, 3) 
, @AMV3 decimal(18, 3) 
, @AMV4 decimal(18, 3) 
, @AMAmp1 decimal(18, 3) 
, @AMAmp2 decimal(18, 3) 
, @AMAmp3 decimal(18, 3) 
, @AMAmp4 decimal(18, 3) 
, @AMBearing1 bit 
, @AMBearing2 bit 
, @AMBearing3 bit 
, @AMBearing4 bit 
, @AMMotorNoise1 bit 
, @AMMotorNoise2 bit 
, @AMMotorNoise3 bit 
, @AMMotorNoise4 bit 
, @AMNoVibration1 bit 
, @AMNoVibration2 bit 
, @AMNoVibration3 bit 
, @AMNoVibration4 bit 
, @BurnerD bit 
, @BurnerHN bit 
, @GasLeakD bit 
, @GasLeakHN bit 
, @GasPresureD decimal(18, 3) 
, @GasPresureHN decimal(18, 3) 
, @AirPresureD decimal(18, 3) 
, @AirPresureHN decimal(18, 3) 
, @ACMotorExhaustFanD bit 
, @ACMotorExhaustFanHN bit 
, @ACMotorSupplyD bit 
, @ACMotorSupplyHN bit 
, @ExhaustFan1 bit 
, @ExhaustFan2 bit 
, @ExhaustFanSupply1 bit 
, @ExhaustFanSupply2 bit 
, @Remark nvarchar(200)
, @Opertor nvarchar (100) 
, @Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8WetPickup 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
                      --AND DoffingNo = @DoffingNo
                  )
        BEGIN
            UPDATE S8WetPickup 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , CustomerName = @CustomerName
                 , FirstDip1 = @FirstDip1
                 , SolutionName = @SolutionName
                 , FirstDip2 = @FirstDip2
                 , SolutionLotNo = @SolutionLotNo
                 , SpeedSet = @SpeedSet
                 , SpeedActual = @SpeedActual
                 , StretchD = @StretchD
                 , StretchH = @StretchH
                 , StretchN = @StretchN
                 , TempD = @TempD
                 , TempHN = @TempHN
                 , AMV1 = @AMV1
                 , AMV2 = @AMV2
                 , AMV3 = @AMV3
                 , AMV4 = @AMV4
                 , AMAmp1 = @AMAmp1
                 , AMAmp2 = @AMAmp2
                 , AMAmp3 = @AMAmp3
                 , AMAmp4 = @AMAmp4
                 , AMBearing1 = @AMBearing1
                 , AMBearing2 = @AMBearing2
                 , AMBearing3 = @AMBearing3
                 , AMBearing4 = @AMBearing4
                 , AMMotorNoise1 = @AMMotorNoise1
                 , AMMotorNoise2 = @AMMotorNoise2
                 , AMMotorNoise3 = @AMMotorNoise3
                 , AMMotorNoise4 = @AMMotorNoise4
                 , AMNoVibration1 = @AMNoVibration1
                 , AMNoVibration2 = @AMNoVibration2
                 , AMNoVibration3 = @AMNoVibration3
                 , AMNoVibration4 = @AMNoVibration4
                 , BurnerD = @BurnerD
                 , BurnerHN = @BurnerHN
                 , GasLeakD = @GasLeakD
                 , GasLeakHN = @GasLeakHN
                 , GasPresureD = @GasPresureD
                 , GasPresureHN = @GasPresureHN
                 , AirPresureD = @AirPresureD
                 , AirPresureHN = @AirPresureHN
                 , ACMotorExhaustFanD = @ACMotorExhaustFanD
                 , ACMotorExhaustFanHN = @ACMotorExhaustFanHN
                 , ACMotorSupplyD = @ACMotorSupplyD
                 , ACMotorSupplyHN = @ACMotorSupplyHN
                 , ExhaustFan1 = @ExhaustFan1
                 , ExhaustFan2 = @ExhaustFan2
                 , ExhaustFanSupply1 = @ExhaustFanSupply1
                 , ExhaustFanSupply2 = @ExhaustFanSupply2
                 , Remark = @Remark
				 , Opertor = @Opertor 
				 , Leader = @Leader   
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
        END
        ELSE
        BEGIN
			INSERT INTO S8WetPickup
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , CustomerName
                , FirstDip1
                , SolutionName
                , FirstDip2
                , SolutionLotNo
                , SpeedSet
                , SpeedActual
                , StretchD
                , StretchH
                , StretchN
                , TempD
                , TempHN
                , AMV1
                , AMV2
                , AMV3
                , AMV4
                , AMAmp1
                , AMAmp2
                , AMAmp3
                , AMAmp4
                , AMBearing1
                , AMBearing2
                , AMBearing3
                , AMBearing4
                , AMMotorNoise1
                , AMMotorNoise2
                , AMMotorNoise3
                , AMMotorNoise4
                , AMNoVibration1
                , AMNoVibration2
                , AMNoVibration3
                , AMNoVibration4
                , BurnerD
                , BurnerHN
                , GasLeakD
                , GasLeakHN
                , GasPresureD
                , GasPresureHN
                , AirPresureD
                , AirPresureHN
                , ACMotorExhaustFanD
                , ACMotorExhaustFanHN
                , ACMotorSupplyD
                , ACMotorSupplyHN
                , ExhaustFan1
                , ExhaustFan2
                , ExhaustFanSupply1
                , ExhaustFanSupply2
                , Remark
				, Opertor 
		        , Leader 
			)
			VALUES
			(
                  @ProductCode
                , @LotNo
                , @DoffingDate
                , @CustomerName
                , @FirstDip1
                , @SolutionName
                , @FirstDip2
                , @SolutionLotNo
                , @SpeedSet
                , @SpeedActual
                , @StretchD
                , @StretchH
                , @StretchN
                , @TempD
                , @TempHN
                , @AMV1
                , @AMV2
                , @AMV3
                , @AMV4
                , @AMAmp1
                , @AMAmp2
                , @AMAmp3
                , @AMAmp4
                , @AMBearing1
                , @AMBearing2
                , @AMBearing3
                , @AMBearing4
                , @AMMotorNoise1
                , @AMMotorNoise2
                , @AMMotorNoise3
                , @AMMotorNoise4
                , @AMNoVibration1
                , @AMNoVibration2
                , @AMNoVibration3
                , @AMNoVibration4
                , @BurnerD
                , @BurnerHN
                , @GasLeakD
                , @GasLeakHN
                , @GasPresureD
                , @GasPresureHN
                , @AirPresureD
                , @AirPresureHN
                , @ACMotorExhaustFanD
                , @ACMotorExhaustFanHN
                , @ACMotorSupplyD
                , @ACMotorSupplyHN
                , @ExhaustFan1
                , @ExhaustFan2
                , @ExhaustFanSupply1
                , @ExhaustFanSupply2
                , @Remark
				, @Opertor 
		        , @Leader 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8x2WetPickup]    Script Date: 1/20/2024 13:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8x2WetPickup] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @CustomerName nvarchar(30)
, @FirstDip1 nvarchar(50)
, @SolutionName nvarchar(50)
, @FirstDip2 nvarchar(50)
, @SolutionLotNo nvarchar(50)
, @PullMotorActSpeed1 decimal(18, 3) 
, @PullMotorActSpeed2 decimal(18, 3) 
, @PullMotorActSpeed3 decimal(18, 3) 
, @PullMotorActSpeed4 decimal(18, 3) 
, @PullMotorActSpeed5 decimal(18, 3) 
, @PullMotorActSpeed6 decimal(18, 3) 
, @PullMotorSpeedSetPoint1 decimal(18, 3) 
, @PullMotorSpeedSetPoint2 decimal(18, 3) 
, @PullMotorSpeedSetPoint3 decimal(18, 3) 
, @PullMotorSpeedSetPoint4 decimal(18, 3) 
, @PullMotorSpeedSetPoint5 decimal(18, 3) 
, @PullMotorSpeedSetPoint6 decimal(18, 3) 
, @PullMotorActCurrent1 decimal(18, 3) 
, @PullMotorActCurrent2 decimal(18, 3) 
, @PullMotorActCurrent3 decimal(18, 3) 
, @PullMotorActCurrent4 decimal(18, 3) 
, @PullMotorActCurrent5 decimal(18, 3) 
, @PullMotorActCurrent6 decimal(18, 3) 
, @PullMotorPctCurrent1 decimal(18, 3) 
, @PullMotorPctCurrent2 decimal(18, 3) 
, @PullMotorPctCurrent3 decimal(18, 3) 
, @PullMotorPctCurrent4 decimal(18, 3) 
, @PullMotorPctCurrent5 decimal(18, 3) 
, @PullMotorPctCurrent6 decimal(18, 3) 
, @OvenCirculatingFanActSpeed1 decimal(18, 3) 
, @OvenCirculatingFanActSpeed2 decimal(18, 3) 
, @OvenExhaustFanActSpeed1 decimal(18, 3) 
, @OvenExhaustFanActSpeed2 decimal(18, 3) 
, @OvenExhaustFanFrontActSpeed decimal(18, 3) 
, @OvenExhaustFanBackActSpeed decimal(18, 3) 
, @OvenCirculatingFanSpeedSetpoint1 decimal(18, 3) 
, @OvenCirculatingFanSpeedSetpoint2 decimal(18, 3) 
, @OvenExhaustFanSpeedSetpoint1 decimal(18, 3) 
, @OvenExhaustFanSpeedSetpoint2 decimal(18, 3) 
, @OvenExhaustFanFrontSpeedSetpoint decimal(18, 3) 
, @OvenExhaustFanBackSpeedSetpoint decimal(18, 3) 
, @OvenCirculatingFanActCurrent1 decimal(18, 3) 
, @OvenCirculatingFanActCurrent2 decimal(18, 3) 
, @OvenExhaustFanActCurrent1 decimal(18, 3) 
, @OvenExhaustFanActCurrent2 decimal(18, 3) 
, @OvenExhaustFanFrontActCurrent decimal(18, 3) 
, @OvenExhaustFanBackActCurrent decimal(18, 3) 
, @OvenCirculatingFanPctCurrent1 decimal(18, 3) 
, @OvenCirculatingFanPctCurrent2 decimal(18, 3) 
, @OvenExhaustFanPctCurrent1 decimal(18, 3) 
, @OvenExhaustFanPctCurrent2 decimal(18, 3) 
, @OvenExhaustFanFrontPctCurrent decimal(18, 3) 
, @OvenExhaustFanBackPctCurrent decimal(18, 3) 
, @MotorActStretch1x2 decimal(18, 3) 
, @MotorActStretch3x4 decimal(18, 3) 
, @MotorActStretch4x5 decimal(18, 3) 
, @MotorActStretch1x6 decimal(18, 3) 
, @MotorSetPoint1x2 decimal(18, 3) 
, @MotorSetPoint3x4 decimal(18, 3) 
, @MotorSetPoint4x5 decimal(18, 3) 
, @MotorSetPoint1x6 decimal(18, 3) 
, @MotorActTensionTotal1x2 decimal(18, 3) 
, @MotorActTensionTotal3x4 decimal(18, 3) 
, @MotorActTensionTotal4x5 decimal(18, 3) 
, @MotorActTensionTotal1x6 decimal(18, 3) 
, @MotorSingleTension1x2 decimal(18, 3) 
, @MotorSingleTension3x4 decimal(18, 3) 
, @MotorSingleTension4x5 decimal(18, 3) 
, @MotorSingleTension1x6 decimal(18, 3) 
, @Remark nvarchar(200)
, @Opertor nvarchar (100) 
, @Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2WetPickup 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
                      --AND DoffingNo = @DoffingNo
                  )
        BEGIN
            UPDATE S8x2WetPickup 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , CustomerName = @CustomerName
                 , FirstDip1 = @FirstDip1
                 , SolutionName = @SolutionName
                 , FirstDip2 = @FirstDip2
                 , SolutionLotNo = @SolutionLotNo
                 , PullMotorActSpeed1 = @PullMotorActSpeed1
                 , PullMotorActSpeed2 = @PullMotorActSpeed2
                 , PullMotorActSpeed3 = @PullMotorActSpeed3
                 , PullMotorActSpeed4 = @PullMotorActSpeed4
                 , PullMotorActSpeed5 = @PullMotorActSpeed5
                 , PullMotorActSpeed6 = @PullMotorActSpeed6
                 , PullMotorSpeedSetPoint1 = @PullMotorSpeedSetPoint1
                 , PullMotorSpeedSetPoint2 = @PullMotorSpeedSetPoint2
                 , PullMotorSpeedSetPoint3 = @PullMotorSpeedSetPoint3
                 , PullMotorSpeedSetPoint4 = @PullMotorSpeedSetPoint4
                 , PullMotorSpeedSetPoint5 = @PullMotorSpeedSetPoint5
                 , PullMotorSpeedSetPoint6 = @PullMotorSpeedSetPoint6
                 , PullMotorActCurrent1 = @PullMotorActCurrent1
                 , PullMotorActCurrent2 = @PullMotorActCurrent2
                 , PullMotorActCurrent3 = @PullMotorActCurrent3
                 , PullMotorActCurrent4 = @PullMotorActCurrent4
                 , PullMotorActCurrent5 = @PullMotorActCurrent5
                 , PullMotorActCurrent6 = @PullMotorActCurrent6
                 , PullMotorPctCurrent1 = @PullMotorPctCurrent1
                 , PullMotorPctCurrent2 = @PullMotorPctCurrent2
                 , PullMotorPctCurrent3 = @PullMotorPctCurrent3
                 , PullMotorPctCurrent4 = @PullMotorPctCurrent4
                 , PullMotorPctCurrent5 = @PullMotorPctCurrent5
                 , PullMotorPctCurrent6 = @PullMotorPctCurrent6
                 , OvenCirculatingFanActSpeed1 = @OvenCirculatingFanActSpeed1
                 , OvenCirculatingFanActSpeed2 = @OvenCirculatingFanActSpeed2
                 , OvenExhaustFanActSpeed1 = @OvenExhaustFanActSpeed1
                 , OvenExhaustFanActSpeed2 = @OvenExhaustFanActSpeed2
                 , OvenExhaustFanFrontActSpeed = @OvenExhaustFanFrontActSpeed
                 , OvenExhaustFanBackActSpeed = @OvenExhaustFanBackActSpeed
                 , OvenCirculatingFanSpeedSetpoint1 = @OvenCirculatingFanSpeedSetpoint1
                 , OvenCirculatingFanSpeedSetpoint2 = @OvenCirculatingFanSpeedSetpoint2
                 , OvenExhaustFanSpeedSetpoint1 = @OvenExhaustFanSpeedSetpoint1
                 , OvenExhaustFanSpeedSetpoint2 = @OvenExhaustFanSpeedSetpoint2
                 , OvenExhaustFanFrontSpeedSetpoint = @OvenExhaustFanFrontSpeedSetpoint
                 , OvenExhaustFanBackSpeedSetpoint = @OvenExhaustFanBackSpeedSetpoint
                 , OvenCirculatingFanActCurrent1 = @OvenCirculatingFanActCurrent1
                 , OvenCirculatingFanActCurrent2 = @OvenCirculatingFanActCurrent2
                 , OvenExhaustFanActCurrent1 = @OvenExhaustFanActCurrent1
                 , OvenExhaustFanActCurrent2 = @OvenExhaustFanActCurrent2
                 , OvenExhaustFanFrontActCurrent = @OvenExhaustFanFrontActCurrent
                 , OvenExhaustFanBackActCurrent = @OvenExhaustFanBackActCurrent
                 , OvenCirculatingFanPctCurrent1 = @OvenCirculatingFanPctCurrent1
                 , OvenCirculatingFanPctCurrent2 = @OvenCirculatingFanPctCurrent2
                 , OvenExhaustFanPctCurrent1 = @OvenExhaustFanPctCurrent1
                 , OvenExhaustFanPctCurrent2 = @OvenExhaustFanPctCurrent2
                 , OvenExhaustFanFrontPctCurrent = @OvenExhaustFanFrontPctCurrent
                 , OvenExhaustFanBackPctCurrent = @OvenExhaustFanBackPctCurrent
                 , MotorActStretch1x2 = @MotorActStretch1x2
                 , MotorActStretch3x4 = @MotorActStretch3x4
                 , MotorActStretch4x5 = @MotorActStretch4x5
                 , MotorActStretch1x6 = @MotorActStretch1x6
                 , MotorSetPoint1x2 = @MotorSetPoint1x2
                 , MotorSetPoint3x4 = @MotorSetPoint3x4
                 , MotorSetPoint4x5 = @MotorSetPoint4x5
                 , MotorSetPoint1x6 = @MotorSetPoint1x6
                 , MotorActTensionTotal1x2 = @MotorActTensionTotal1x2
                 , MotorActTensionTotal3x4 = @MotorActTensionTotal3x4
                 , MotorActTensionTotal4x5 = @MotorActTensionTotal4x5
                 , MotorActTensionTotal1x6 = @MotorActTensionTotal1x6
                 , MotorSingleTension1x2 = @MotorSingleTension1x2
                 , MotorSingleTension3x4 = @MotorSingleTension3x4
                 , MotorSingleTension4x5 = @MotorSingleTension4x5
                 , MotorSingleTension1x6 = @MotorSingleTension1x6
                 , Remark = @Remark
				 , Opertor = @Opertor 
				 , Leader = @Leader   
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
        END
        ELSE
        BEGIN
			INSERT INTO S8x2WetPickup
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , CustomerName
                , FirstDip1
                , SolutionName
                , FirstDip2
                , SolutionLotNo
                , PullMotorActSpeed1
                , PullMotorActSpeed2
                , PullMotorActSpeed3
                , PullMotorActSpeed4
                , PullMotorActSpeed5
                , PullMotorActSpeed6
                , PullMotorSpeedSetPoint1
                , PullMotorSpeedSetPoint2
                , PullMotorSpeedSetPoint3
                , PullMotorSpeedSetPoint4
                , PullMotorSpeedSetPoint5
                , PullMotorSpeedSetPoint6
                , PullMotorActCurrent1
                , PullMotorActCurrent2
                , PullMotorActCurrent3
                , PullMotorActCurrent4
                , PullMotorActCurrent5
                , PullMotorActCurrent6
                , PullMotorPctCurrent1
                , PullMotorPctCurrent2
                , PullMotorPctCurrent3
                , PullMotorPctCurrent4
                , PullMotorPctCurrent5
                , PullMotorPctCurrent6
                , OvenCirculatingFanActSpeed1
                , OvenCirculatingFanActSpeed2
                , OvenExhaustFanActSpeed1
                , OvenExhaustFanActSpeed2
                , OvenExhaustFanFrontActSpeed
                , OvenExhaustFanBackActSpeed
                , OvenCirculatingFanSpeedSetpoint1
                , OvenCirculatingFanSpeedSetpoint2
                , OvenExhaustFanSpeedSetpoint1
                , OvenExhaustFanSpeedSetpoint2
                , OvenExhaustFanFrontSpeedSetpoint
                , OvenExhaustFanBackSpeedSetpoint
                , OvenCirculatingFanActCurrent1
                , OvenCirculatingFanActCurrent2
                , OvenExhaustFanActCurrent1
                , OvenExhaustFanActCurrent2
                , OvenExhaustFanFrontActCurrent
                , OvenExhaustFanBackActCurrent
                , OvenCirculatingFanPctCurrent1
                , OvenCirculatingFanPctCurrent2
                , OvenExhaustFanPctCurrent1
                , OvenExhaustFanPctCurrent2
                , OvenExhaustFanFrontPctCurrent
                , OvenExhaustFanBackPctCurrent
                , MotorActStretch1x2
                , MotorActStretch3x4
                , MotorActStretch4x5
                , MotorActStretch1x6
                , MotorSetPoint1x2
                , MotorSetPoint3x4
                , MotorSetPoint4x5
                , MotorSetPoint1x6
                , MotorActTensionTotal1x2
                , MotorActTensionTotal3x4
                , MotorActTensionTotal4x5
                , MotorActTensionTotal1x6
                , MotorSingleTension1x2
                , MotorSingleTension3x4
                , MotorSingleTension4x5
                , MotorSingleTension1x6
                , Remark
				, Opertor 
		        , Leader 
			)
			VALUES
			(
                  @ProductCode
                , @LotNo
                , @DoffingDate
                , @CustomerName
                , @FirstDip1
                , @SolutionName
                , @FirstDip2
                , @SolutionLotNo
                , @PullMotorActSpeed1
                , @PullMotorActSpeed2
                , @PullMotorActSpeed3
                , @PullMotorActSpeed4
                , @PullMotorActSpeed5
                , @PullMotorActSpeed6
                , @PullMotorSpeedSetPoint1
                , @PullMotorSpeedSetPoint2
                , @PullMotorSpeedSetPoint3
                , @PullMotorSpeedSetPoint4
                , @PullMotorSpeedSetPoint5
                , @PullMotorSpeedSetPoint6
                , @PullMotorActCurrent1
                , @PullMotorActCurrent2
                , @PullMotorActCurrent3
                , @PullMotorActCurrent4
                , @PullMotorActCurrent5
                , @PullMotorActCurrent6
                , @PullMotorPctCurrent1
                , @PullMotorPctCurrent2
                , @PullMotorPctCurrent3
                , @PullMotorPctCurrent4
                , @PullMotorPctCurrent5
                , @PullMotorPctCurrent6
                , @OvenCirculatingFanActSpeed1
                , @OvenCirculatingFanActSpeed2
                , @OvenExhaustFanActSpeed1
                , @OvenExhaustFanActSpeed2
                , @OvenExhaustFanFrontActSpeed
                , @OvenExhaustFanBackActSpeed
                , @OvenCirculatingFanSpeedSetpoint1
                , @OvenCirculatingFanSpeedSetpoint2
                , @OvenExhaustFanSpeedSetpoint1
                , @OvenExhaustFanSpeedSetpoint2
                , @OvenExhaustFanFrontSpeedSetpoint
                , @OvenExhaustFanBackSpeedSetpoint
                , @OvenCirculatingFanActCurrent1
                , @OvenCirculatingFanActCurrent2
                , @OvenExhaustFanActCurrent1
                , @OvenExhaustFanActCurrent2
                , @OvenExhaustFanFrontActCurrent
                , @OvenExhaustFanBackActCurrent
                , @OvenCirculatingFanPctCurrent1
                , @OvenCirculatingFanPctCurrent2
                , @OvenExhaustFanPctCurrent1
                , @OvenExhaustFanPctCurrent2
                , @OvenExhaustFanFrontPctCurrent
                , @OvenExhaustFanBackPctCurrent
                , @MotorActStretch1x2
                , @MotorActStretch3x4
                , @MotorActStretch4x5
                , @MotorActStretch1x6
                , @MotorSetPoint1x2
                , @MotorSetPoint3x4
                , @MotorSetPoint4x5
                , @MotorSetPoint1x6
                , @MotorActTensionTotal1x2
                , @MotorActTensionTotal3x4
                , @MotorActTensionTotal4x5
                , @MotorActTensionTotal1x6
                , @MotorSingleTension1x2
                , @MotorSingleTension3x4
                , @MotorSingleTension4x5
                , @MotorSingleTension1x6
                , @Remark
				, @Opertor 
		        , @Leader 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8WetPickUpItems]    Script Date: 1/20/2024 12:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE GetS8WetPickUpItems
(
  @ProductCode nvarchar(50) = NULL
, @LotNo nvarchar(50) = NULL
, @DoffingDate datetime
, @TwistNo int
)
AS
BEGIN
    SELECT A.ProductCode
         , A.LotNo
         , A.DoffingDate
         , A.DoffNo
         , A.TwistNo
         , A.RowType
         , A.NipPressure
         , A.WPU
         , A.WPUErr
         , A.FirstAmt
         , A.UseAmt
         , A.RestAmt
         , A.ThrowAmt
         , A.Operator
         , A.UpdateDate
      FROM S8WetPickupItem A
     WHERE A.LotNo = @LotNo 
       AND A.ProductCode = @ProductCode
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)))
       AND A.TwistNo = @TwistNo
	   AND A.LotNo IS NOT NULL
     ORDER BY A.DoffingDate, A.DoffNo, A.RowType;

END

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8x2WetPickUpItems]    Script Date: 1/20/2024 12:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE GetS8x2WetPickUpItems
(
  @ProductCode nvarchar(50) = NULL
, @LotNo nvarchar(50) = NULL
, @DoffingDate datetime
, @TwistNo int
)
AS
BEGIN
    SELECT A.ProductCode
         , A.LotNo
         , A.DoffingDate
         , A.DoffNo
         , A.TwistNo
         , A.RowType
         , A.NipPressure
         , A.WPU
         , A.WPUErr
         , A.FirstAmt
         , A.UseAmt
         , A.RestAmt
         , A.ThrowAmt
         , A.Operator
         , A.UpdateDate
      FROM S8x2WetPickupItem A
     WHERE A.LotNo = @LotNo 
       AND A.ProductCode = @ProductCode
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)))
       AND A.TwistNo = @TwistNo
	   AND A.LotNo IS NOT NULL
     ORDER BY A.DoffingDate, A.DoffNo, A.RowType;

END

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8WetPickupItem]    Script Date: 1/20/2024 13:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8WetPickupItem] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @DoffingNo int
, @TwistNo int
, @RowType int
, @NipPressure nvarchar(50)
, @WPU decimal(18, 3) 
, @WPUErr decimal(18, 3) 
, @WPUValue decimal(18, 3) 
, @FirstAmt decimal(18, 3) 
, @UseAmt decimal(18, 3) 
, @RestAmt decimal(18, 3) 
, @ThrowAmt decimal(18, 3) 
, @Operator nvarchar (100) 
, @UpdateDate datetime 
, @Remark nvarchar (200) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8WetPickupItem 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
                      AND DoffNo = @DoffingNo
                      AND TwistNo = @TwistNo
                      AND RowType = @RowType
                  )
        BEGIN
            UPDATE S8WetPickupItem 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , DoffNo = @DoffingNo
                 , TwistNo = @TwistNo
                 , RowType = @RowType
                 , NipPressure = @NipPressure
                 , WPU = @WPU
                 , WPUErr = @WPUErr
                 , WPUValue = @WPUValue
                 , FirstAmt = @FirstAmt
                 , UseAmt = @UseAmt
                 , RestAmt = @RestAmt
                 , ThrowAmt = @ThrowAmt
                 , Operator = @Operator
                 , UpdateDate = @UpdateDate
                 , Remark = @Remark
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
               AND DoffNo = @DoffingNo
               AND TwistNo = @TwistNo
               AND RowType = @RowType
        END
        ELSE
        BEGIN
			INSERT INTO S8WetPickupItem
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , DoffNo
                , TwistNo
                , RowType
                , NipPressure
                , WPU
                , WPUErr
                , WPUValue
                , FirstAmt
                , UseAmt
                , RestAmt
                , ThrowAmt
                , Operator
                , UpdateDate
                , [Remark]
			)
			VALUES
			(
                  @ProductCode
                , @LotNo
                , @DoffingDate
                , @DoffingNo
                , @TwistNo
                , @RowType
                , @NipPressure
                , @WPU
                , @WPUErr
                , @WPUValue
                , @FirstAmt
                , @UseAmt
                , @RestAmt
                , @ThrowAmt
                , @Operator
                , @UpdateDate
                , @Remark
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2024-02-12  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8x2WetPickupItem]    Script Date: 1/20/2024 13:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8x2WetPickupItem] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @DoffingNo int
, @TwistNo int
, @RowType int
, @NipPressure nvarchar(50)
, @WPU decimal(18, 3) 
, @WPUErr decimal(18, 3) 
, @WPUValue decimal(18, 3) 
, @FirstAmt decimal(18, 3) 
, @UseAmt decimal(18, 3) 
, @RestAmt decimal(18, 3) 
, @ThrowAmt decimal(18, 3) 
, @Operator nvarchar (100) 
, @UpdateDate datetime 
, @Remark nvarchar (200) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2WetPickupItem 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
                      AND DoffNo = @DoffingNo
                      AND TwistNo = @TwistNo
                      AND RowType = @RowType
                  )
        BEGIN
            UPDATE S8x2WetPickupItem 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , DoffNo = @DoffingNo
                 , TwistNo = @TwistNo
                 , RowType = @RowType
                 , NipPressure = @NipPressure
                 , WPU = @WPU
                 , WPUErr = @WPUErr
                 , WPUValue = @WPUValue
                 , FirstAmt = @FirstAmt
                 , UseAmt = @UseAmt
                 , RestAmt = @RestAmt
                 , ThrowAmt = @ThrowAmt
                 , Operator = @Operator
                 , UpdateDate = @UpdateDate
                 , Remark = @Remark
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
               AND DoffNo = @DoffingNo
               AND TwistNo = @TwistNo
               AND RowType = @RowType
        END
        ELSE
        BEGIN
			INSERT INTO S8x2WetPickupItem
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , DoffNo
                , TwistNo
                , RowType
                , NipPressure
                , WPU
                , WPUErr
                , WPUValue
                , FirstAmt
                , UseAmt
                , RestAmt
                , ThrowAmt
                , Operator
                , UpdateDate
                , [Remark]
			)
			VALUES
			(
                  @ProductCode
                , @LotNo
                , @DoffingDate
                , @DoffingNo
                , @TwistNo
                , @RowType
                , @NipPressure
                , @WPU
                , @WPUErr
                , @WPUValue
                , @FirstAmt
                , @UseAmt
                , @RestAmt
                , @ThrowAmt
                , @Operator
                , @UpdateDate
                , @Remark
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO

