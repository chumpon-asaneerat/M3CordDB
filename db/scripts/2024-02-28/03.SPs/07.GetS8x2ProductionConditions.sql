/****** Object:  StoredProcedure [dbo].[GetS8x2ProductionConditions]    Script Date: 2/29/2024 5:16:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetS8x2ProductionConditions]
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
      FROM S8x2ProductionConditionView
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
	   AND LotNo IS NOT NULL
     ORDER BY RecordDate;

END;

GO
