/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditions]    Script Date: 1/20/2024 12:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8ProductionConditions]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT S8ConditionId
         , DIPPCId
         , RecordDate
         , ProcessHS 
         , ProcessDIP 
         , CustomerName
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
		 , TempHNZone1
		 , TempHNZone2
		 , TempHNZone3
		 , TempHNZone4
		 , TempHNZone5
		 , TempHNZone6
		 , SectionHead
		 , SectionManager 
      FROM S8ProductionConditionView
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
	   AND LotNo IS NOT NULL
     ORDER BY RecordDate;

END;

GO
