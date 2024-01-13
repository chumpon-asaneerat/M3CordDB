SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetProductionRecord]
(
  @ProductCode nvarchar(30) = NULL
  ,@LotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT RecordDate ,
		ProcessHS ,
		ProcessDIP ,
		Customer ,
		[Counter] ,
		CounterErr ,
		CordStructure ,
		ProductCode ,
		LotNo ,
		Bath1SolutionName ,
		Bath1NipFront ,
		Bath1NipBack ,
		Bath1NipBackErr ,
		Bath2SolutionName ,
		Bath2NipFront ,
		Bath2NipBack ,
		Bath2NipBackErr ,
		Sofner ,
		DarwNip ,
		PaperTubeColorUse ,
		TensionD ,
		TensionH ,
		TensionN ,
		TensionWinder ,
		GasBefore ,
		GasAfter ,
		GasTotal ,
		CoolingWarterBefore ,
		CoolingWarterAfter ,
		CoolingWarterTotal ,
		AirPressureBefore ,
		AirPressureAfter ,
		AirPressureTotal ,
		Bath1Before ,
		Bath1After ,
		Bath1WPU ,
		Bath2Before ,
		Bath2After ,
		Bath2WPU ,
		TempDZone1 ,
		TempDZone2 ,
		TempDZone3 ,
		TempHNZone1 ,
		TempHNZone2 ,
		TempHNZone3 ,
		TempHNZone4 ,
		TempHNZone5 ,
		TempHNZone6 ,
		SectionHead ,
		SectionManager 
     FROM ProductionRecord
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
	 And  LotNo = COALESCE(@LotNo, LotNo)
     ORDER BY ProductCode;

END;

GO
