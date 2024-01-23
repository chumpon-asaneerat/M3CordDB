/****** Object:  View [dbo].[S8ProductionConditionView]    Script Date: 1/24/2024 1:32:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[S8ProductionConditionView]
AS
    SELECT A.S8ConditionId
	     , A.DIPPCId
	     , A.RecordDate
         , A.ProcessHS 
         , A.ProcessDIP 
         , B.CustomerName
		 , A.[Counter]
		 , A.CounterErr
		 , B.CordStructure
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
		 , A.TempHNZone1
		 , A.TempHNZone2
		 , A.TempHNZone3
		 , A.TempHNZone4
		 , A.TempHNZone5
		 , A.TempHNZone6
		 , A.SectionHead
		 , A.SectionManager 
      FROM S8ProductionCondition A, DIPPCCardView B
	 WHERE A.DIPPCId = B.DIPPCId


GO
