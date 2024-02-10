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
