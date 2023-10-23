/****** Object:  StoredProcedure [dbo].[GetDIPProductionConditions]    Script Date: 20/10/2566 2:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPProductionConditions
-- == History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- == Example ==]
--
-- EXEC GetS4x1Conditions NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPProductionConditions]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT  ProductCode,
            S7CordStructure,
            S7YarnType,
            S71stTwist,
            S72ndTwist,
            S7ShapeOfYarn,
            S7Weight,
            S7ProcessSettingTension,
            S7UseTensor,
            S7KnotCondition,
            S7SuperNylonKnot,
            S8DryeStretchSC,
            S8DryeStretch,
            S8DryeStretchErr,
            S8DryeTempSC,
            S8DryeTemp,
            S8DryeTempErr,
            S8DryePass,
            S8DryeTension,
            S8HotStretchSC,
            S8HotStretch,
            S8HotStretchErr,
            S8HotTempSC,
            S8HotTemp,
            S8HotTempErr,
            S8HotPass,
            S8HotTension,
            S8NormalStretchSC,
            S8NormalStretch,
            S8NormalStretchErr,
            S8NormalTempSC,
            S8NormalTemp,
            S8NormalTempErr,
            S8NormalPass,
            S8NormalTension,
            S8TotalStretchSC,
            S8TotalStretch,
            S8TotalStretchErr,
            S8TotalTempSC,
            S8TotalTemp,
            S8TotalTempErr,
            S8TotalPass,
            S8TotalTension,
            S8SpeedSC,
            S8Speed,
            S8SpeedErr,
            S8NoOfCordsOfProcessing,
            S8NoOfCordsOfProcessingErr,
            S8Sofnor,
            S8DrawNip,
            S8Concentration,
            S8NipRollerPressureNo1Front,
            S8NipRollerPressureNo1FrontErr,
            S8NipRollerPressureNo2Front,
            S8NipRollerPressureNo2FrontErr,
            S8NipRollerPressureNo1Back,
            S8NipRollerPressureNo1BackErr,
            S8NipRollerPressureNo2Back,
            S8NipRollerPressureNo2BackErr,
            S8WPUStandardNo1,
            S8WPUStandardNo1Err,
            S8WPUStandardNo2,
            S8WPUStandardNo2Err,
            S9ContactPressureUp,
            S9ContactPressureDown,
            S9ContactPressure,
            S9BaseWindGear,
            S9TraverseGuideSizeLrage,
            S9TraverseGuideSizeSmall,
            S9TraverseGuideSize,
            S9WindVoltageSet,
            S9WindVoltageSetErr,
            S9AyameDaial,
            S9AyameDaialErr,
            S9TensionSpringLrage,
            S9TensionSpringSmall,
            S9TensionSpring,
            S9TensionWind,
            S9PackingStandard,
            S9PackingStandardErr,
            S9TubeColor,
            S9Tail,
            S9CounterSetting,
            S9CounterSettingErr,
            S9CheeseWeight,
            S9CheeseWeightErr,
            S9HowToStartProductionEng,
            S9HowToStartProductionTh,
            S9Rewind,
            S9Package,
            S9Sampling
     FROM DIPProductionCondition
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO
