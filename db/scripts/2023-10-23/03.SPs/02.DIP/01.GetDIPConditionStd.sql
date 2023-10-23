/****** Object:  StoredProcedure [dbo].[GetDIPConditionStd]    Script Date: 23/10/2566 1:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetDIPConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode
      ,S7YarnCordStructureSC
      ,S7YarnCordStructureSet
      ,S7YarnCordStructureSet2
      ,S7YarnYarnTypeSC
      ,S7YarnYarnTypeSet
      ,S7YarnYarnTypeSet2
      ,S7Yarn1stTwistSC
      ,S7Yarn1stTwistSet
      ,S7Yarn1stTwistSet2
      ,S7Yarn2ndTwistSC
      ,S7Yarn2ndTwistSet
      ,S7Yarn2ndTwistSet2
      ,S7YarnLabelOfYarnSC
      ,S7YarnLabelOfYarnSet
      ,S7YarnLabelOfYarnSet2
      ,S7YarnWeightSC
      ,S7YarnWeightSet
      ,S7YarnWeightSetErr
      ,S7YarnWeightSet2
      ,S7YarnWeightSetErr2
      ,S7CreelSettingUseTensorSC
      ,S7CreelSettingUseTensorSet
      ,S7CreelSettingUseTensorSet2
      ,S7CreelSettingKnotConditionSC
      ,S7CreelSettingKnotConditionSet
      ,S7CreelSettingKnotConditionSet2
      ,S7CreelSettingSlubCatsweSC
      ,S7CreelSettingSlubCatsweSet
      ,S7CreelSettingSlubCatsweSet2
      ,S8StretchDryerSC
      ,S8StretchDryerSet
      ,S8StretchDryerSetErr
      ,S8StretchDryerSet2
      ,S8StretchDryerSetErr2
      ,S8StretchStretchHotSC
      ,S8StretchStretchHotSet
      ,S8StretchStretchHotSetErr
      ,S8StretchHotSet2
      ,S8StretchHotSetErr2
      ,S8StretchNormalSC
      ,S8StretchNormalSet
      ,S8StretchNormalSetErr
      ,S8StretchNormalSet2
      ,S8StretchNormalSetErr2
      ,S8StretchTotalSC
      ,S8StretchTotalSet
      ,S8StretchTotalSetErr
      ,S8StretchTotalSet2
      ,S8StretchTotalSetErr2
      ,S8TempDryerSC
      ,S8TempDryerSet
      ,S8TempDryerSetErr
      ,S8TempDryerSet2
      ,S8TempDryerSetErr2
      ,S8TempHotSC
      ,S8TempHotSet
      ,S8TempHotSetErr
      ,S8TempHotSet2
      ,S8TempHotSetErr2
      ,S8TempNormalSC
      ,S8TempNormalSet
      ,S8TempNormalSetErr
      ,S8TempNormalSet2
      ,S8TempNormalSetErr2
      ,S8CounterSettingSC
      ,S8CounterSettingSet
      ,S8CounterSettingSet2
      ,S8SpeedSC
      ,S8SpeedSet
      ,S8SpeedErr
      ,S8SpeedSet2
      ,S8SpeedSetErr2
      ,S8NoOfCordsSC
      ,S8NoOfCordsSet
      ,S8NoOfCordsSet2
      ,S8SofnorSC
      ,S8SofnorSet
      ,S8SofnorSet2
      ,S8DrawNipSC
      ,S8DrawNipSet
      ,S8DrawNipSet2
      ,S8DippingNo1ConcentrationSC
      ,S8DippingNo1ConcentrationSet
      ,S8DippingNo1ConcentrationSet2
      ,S8DippingNo1NipFrontSC
      ,S8DippingNo1NipFrontSet
      ,S8DippingNo1NipFrontSet2
      ,S8DippingNo1NipBackSC
      ,S8DippingNo1NipBackSet
      ,S8DippingNo1NipBackSet2
      ,S8DippingNo1WPUstdSC
      ,S8DippingNo1WPUstdSet
      ,S8DippingNo1WPUstdSet2
      ,S8DippingNo2ConcentrationSC
      ,S8DippingNo2ConcentrationSet
      ,S8DippingNo2ConcentrationSet2
      ,S8DippingNo2NipFrontSC
      ,S8DippingNo2NipFrontSet
      ,S8DippingNo2NipFrontSet2
      ,S8DippingNo2NipBackSC
      ,S8DippingNo2NipBackSet
      ,S8DippingNo2NipBackSet2
      ,S8DippingNo2WPUstdSC
      ,S8DippingNo2WPUstdSet
      ,S8DippingNo2WPUstdSet2
      ,S9WinderAyameDaialSC
      ,S9WinderAyameDaialSet
      ,S9WinderAyameDaialSet2
      ,S9WinderMpaSC
      ,S9WinderMpaSet
      ,S9WinderMpaSet2
      ,S9WinderSpringSC
      ,S9WinderSpringSet
      ,S9WinderSpringSet2
      ,S9WinderPeperTubeColorSC
      ,S9WinderPeperTubeColorSet
      ,S9WinderPeperTubeColorSet2
      ,S9WinderCheeseWeightSC
      ,S9WinderCheeseWeightSet
      ,S9WinderCheeseWeightSet2
      ,S9ExhaustFanOven1CirculatingFanSC
      ,S9ExhaustFanOven1CirculatingFanSet
      ,S9ExhaustFanOven1CirculatingFanSet2
      ,S9ExhaustFanOven2CirculatingFanSC
      ,S9ExhaustFanOven2CirculatingFanSet
      ,S9ExhaustFanOven2CirculatingFanSet2
      ,S9ExhaustFanOven1ExhaustFanSC
      ,S9ExhaustFanOven1ExhaustFanSet
      ,S9ExhaustFanOven1ExhaustFanSet2
      ,S9ExhaustFanOven2ExhaustFanSC
      ,S9ExhaustFanOven2ExhaustFanSet
      ,S9ExhaustFanOven2ExhaustFanSet2
      ,S9ExhaustFanOvenFrontExhaustFanSC
      ,S9ExhaustFanOvenFrontExhaustFanSet
      ,S9ExhaustFanOvenFrontExhaustFanSet2
      ,S9ExhaustFanOvenBackExhaustFanSC
      ,S9ExhaustFanOvenBackExhaustFanSet
      ,S9ExhaustFanOvenBackExhaustFanSet2
      ,S9SpongSC
      ,S9SpongSet
      ,S9SpongSet2
     FROM DIPConditionStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO