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
