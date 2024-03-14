/****** Object:  StoredProcedure [dbo].[SaveS8x2ProductionCondition]    Script Date: 2/29/2024 5:23:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8x2ProductionCondition] (
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
, @SofnerValue nvarchar (100) 
, @DarwNip bit 
, @DarwNipValue nvarchar (100) 
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
				 , SofnerValue = @SofnerValue 
				 , DarwNip = @DarwNip 
				 , DarwNipValue = @DarwNipValue 
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
				, SofnerValue 
				, DarwNip 
				, DarwNipValue 
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
				, @SofnerValue 
				, @DarwNip 
				, @DarwNipValue 
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