/****** Object:  StoredProcedure [dbo].[GetDIPConditions]    Script Date: 1/8/2024 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetDIPConditions]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPConditionId
      ,DIPPCId
      ,ProductCode
      ,S7YarnCordStructureSC
      ,S7YarnCordStructureSet
      ,S7YarnCordStructureActual
      ,S7YarnCordStructureSet2
      ,S7YarnCordStructureActual2
      ,S7YarnYarnTypeSC
      ,S7YarnYarnTypeSet
      ,S7YarnYarnTypeActual
      ,S7YarnYarnTypeSet2
      ,S7YarnYarnTypeActual2
      ,S7Yarn1stTwistSC
      ,S7Yarn1stTwistSet
      ,S7Yarn1stTwistActual
      ,S7Yarn1stTwistSet2
      ,S7Yarn1stTwistActual2
      ,S7Yarn2ndTwistSC
      ,S7Yarn2ndTwistSet
      ,S7Yarn2ndTwistActual
      ,S7Yarn2ndTwistSet2
      ,S7Yarn2ndTwistActual2
      ,S7YarnLabelOfYarnSC
      ,S7YarnLabelOfYarnSet
      ,S7YarnLabelOfYarnActual
      ,S7YarnLabelOfYarnSet2
      ,S7YarnLabelOfYarnActual2
      ,S7YarnWeightSC
      ,S7YarnWeightSet
      ,S7YarnWeightSetErr
      ,S7YarnWeightActual
      ,S7YarnWeightSet2
      ,S7YarnWeightSetErr2
      ,S7YarnWeightActual2
      ,S7CreelSettingUseTensorSC
      ,S7CreelSettingUseTensorSet
      ,S7CreelSettingUseTensorActual
      ,S7CreelSettingUseTensorSet2
      ,S7CreelSettingUseTensorActual2
      ,S7CreelSettingKnotConditionSC
      ,S7CreelSettingKnotConditionSet
      ,S7CreelSettingKnotConditionActual
      ,S7CreelSettingKnotConditionSet2
      ,S7CreelSettingKnotConditionActual2
      ,S7CreelSettingSlubCatsweSC
      ,S7CreelSettingSlubCatsweSet
      ,S7CreelSettingSlubCatsweActual
      ,S7CreelSettingSlubCatsweSet2
      ,S7CreelSettingSlubCatsweActual2
      ,S8StretchDryerSC
      ,S8StretchDryerSet
      ,S8StretchDryerSetErr
      ,S8StretchDryerActual
      ,S8StretchDryerSet2
      ,S8StretchDryerSetErr2
      ,S8StretchDryerActual2
      ,S8StretchStretchHotSC
      ,S8StretchStretchHotSet
      ,S8StretchStretchHotSetErr
      ,S8StretchHotActual
      ,S8StretchHotSet2
      ,S8StretchHotSetErr2
      ,S8StretchHotActual2
      ,S8StretchNormalSC
      ,S8StretchNormalSet
      ,S8StretchNormalSetErr
      ,S8StretchNormalActual
      ,S8StretchNormalSet2
      ,S8StretchNormalSetErr2
      ,S8StretchNormalActual2
      ,S8StretchTotalSC
      ,S8StretchTotalSet
      ,S8StretchTotalSetErr
      ,S8StretchTotalActual
      ,S8StretchTotalSet2
      ,S8StretchTotalSetErr2
      ,S8StretchTotalActual2
      ,S8TempDryerSC
      ,S8TempDryerSet
      ,S8TempDryerSetErr
      ,S8TempDryerActual
      ,S8TempDryerSet2
      ,S8TempDryerSetErr2
      ,S8TempDryerActual2
      ,S8TempHotSC
      ,S8TempHotSet
      ,S8TempHotSetErr
      ,S8TempHotActual
      ,S8TempHotSet2
      ,S8TempHotSetErr2
      ,S8TempHotActual2
      ,S8TempNormalSC
      ,S8TempNormalSet
      ,S8TempNormalSetErr
      ,S8TempNormalActual
      ,S8TempNormalSet2
      ,S8TempNormalSetErr2
      ,S8TempNormalActual2
      ,S8CounterSettingSC
      ,S8CounterSettingSet
      ,S8CounterSettingActual
      ,S8CounterSettingSet2
      ,S8CounterSettingActual2
      ,S8SpeedSC
      ,S8SpeedSet
      ,S8SpeedErr
      ,S8SpeedActual
      ,S8SpeedSet2
      ,S8SpeedSetErr2
      ,S8SpeedActual2
      ,S8NoOfCordsSC
      ,S8NoOfCordsSet
      ,S8NoOfCordsActual
      ,S8NoOfCordsSet2
      ,S8NoOfCordsActual2
      ,S8SofnorSC
      ,S8SofnorSet
      ,S8SofnorActual
      ,S8SofnorSet2
      ,S8SofnorActual2
      ,S8DrawNipSC
      ,S8DrawNipSet
      ,S8DrawNipActual
      ,S8DrawNipSet2
      ,S8DrawNipActual2
      ,S8DippingNo1ConcentrationSC
      ,S8DippingNo1ConcentrationSet
      ,S8DippingNo1ConcentrationActual
      ,S8DippingNo1ConcentrationSet2
      ,S8DippingNo1ConcentrationActual2
      ,S8DippingNo1NipFrontSC
      ,S8DippingNo1NipFrontSet
      ,S8DippingNo1NipFrontActual
      ,S8DippingNo1NipFrontSet2
      ,S8DippingNo1NipFrontActual2
      ,S8DippingNo1NipBackSC
      ,S8DippingNo1NipBackSet
      ,S8DippingNo1NipBackActual
      ,S8DippingNo1NipBackSet2
      ,S8DippingNo1NipBackActual2
      ,S8DippingNo1WPUstdSC
      ,S8DippingNo1WPUstdSet
      ,S8DippingNo1WPUstdActual
      ,S8DippingNo1WPUstdSet2
      ,S8DippingNo1WPUstdActual2
      ,S8DippingNo2ConcentrationSC
      ,S8DippingNo2ConcentrationSet
      ,S8DippingNo2ConcentrationActual
      ,S8DippingNo2ConcentrationSet2
      ,S8DippingNo2ConcentrationActual2
      ,S8DippingNo2NipFrontSC
      ,S8DippingNo2NipFrontSet
      ,S8DippingNo2NipFrontActual
      ,S8DippingNo2NipFrontSet2
      ,S8DippingNo2NipFrontActual2
      ,S8DippingNo2NipBackSC
      ,S8DippingNo2NipBackSet
      ,S8DippingNo2NipBackActual
      ,S8DippingNo2NipBackSet2
      ,S8DippingNo2NipBackActual2
      ,S8DippingNo2WPUstdSC
      ,S8DippingNo2WPUstdSet
      ,S8DippingNo2WPUstdActual
      ,S8DippingNo2WPUstdSet2
      ,S8DippingNo2WPUstdActual2
      ,S9WinderAyameDaialSC
      ,S9WinderAyameDaialSet
      ,S9WinderAyameDaialActual
      ,S9WinderAyameDaialSet2
      ,S9WinderAyameDaialActual2
      ,S9WinderMpaSC
      ,S9WinderMpaSet
      ,S9WinderMpaActual
      ,S9WinderMpaSet2
      ,S9WinderMpaActual2
      ,S9WinderSpringSC
      ,S9WinderSpringSet
      ,S9WinderSpringActual
      ,S9WinderSpringSet2
      ,S9WinderSpringActual2
      ,S9WinderPeperTubeColorSC
      ,S9WinderPeperTubeColorSet
      ,S9WinderPeperTubeColorActual
      ,S9WinderPeperTubeColorSet2
      ,S9WinderPeperTubeColorActual2
      ,S9WinderCheeseWeightSC
      ,S9WinderCheeseWeightSet
      ,S9WinderCheeseWeightActual
      ,S9WinderCheeseWeightSet2
      ,S9WinderCheeseWeightActual2
      ,S9ExhaustFanOven1CirculatingFanSC
      ,S9ExhaustFanOven1CirculatingFanSet
      ,S9ExhaustFanOven1CirculatingFanActual
      ,S9ExhaustFanOven1CirculatingFanSet2
      ,S9ExhaustFanOven1CirculatingFanActual2
      ,S9ExhaustFanOven2CirculatingFanSC
      ,S9ExhaustFanOven2CirculatingFanSet
      ,S9ExhaustFanOven2CirculatingFanActual
      ,S9ExhaustFanOven2CirculatingFanSet2
      ,S9ExhaustFanOven2CirculatingFanActual2
      ,S9ExhaustFanOven1ExhaustFanSC
      ,S9ExhaustFanOven1ExhaustFanSet
      ,S9ExhaustFanOven1ExhaustFanActual
      ,S9ExhaustFanOven1ExhaustFanSet2
      ,S9ExhaustFanOven1ExhaustFanActual2
      ,S9ExhaustFanOven2ExhaustFanSC
      ,S9ExhaustFanOven2ExhaustFanSet
      ,S9ExhaustFanOven2ExhaustFanActual
      ,S9ExhaustFanOven2ExhaustFanSet2
      ,S9ExhaustFanOven2ExhaustFanActual2
      ,S9ExhaustFanOvenFrontExhaustFanSC
      ,S9ExhaustFanOvenFrontExhaustFanSet
      ,S9ExhaustFanOvenFrontExhaustFanActual
      ,S9ExhaustFanOvenFrontExhaustFanSet2
      ,S9ExhaustFanOvenFrontExhaustFanActual2
      ,S9ExhaustFanOvenBackExhaustFanSC
      ,S9ExhaustFanOvenBackExhaustFanSet
      ,S9ExhaustFanOvenBackExhaustFanActual
      ,S9ExhaustFanOvenBackExhaustFanSet2
      ,S9ExhaustFanOvenBackExhaustFanActual2
      ,S9SpongSC
      ,S9SpongSet
      ,S9SpongActual
      ,S9SpongSet2
      ,S9SpongActual2
      ,UpdateBy
      ,UpdateDate
      ,UpdateBy2
      ,UpdateDate2
      ,CheckedBy
      ,CheckedDate
      ,ApproveBy
      ,ApproveDate
      ,ShiftLeader
      ,ProductionManager
     FROM DIPCondition
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
     ORDER BY ProductCode;

END;

GO
