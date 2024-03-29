/****** Object:  StoredProcedure [dbo].[SaveDIPCondition]    Script Date: 3/7/2024 1:37:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPCondition] (
    @DIPPCId int,
    @ProductCode nvarchar (30) ,
	@S7YarnCordStructureSC bit  ,
	@S7YarnCordStructureSet nvarchar (50) ,
	@S7YarnCordStructureActual nvarchar (50) ,
	@S7YarnCordStructureSet2 nvarchar (50) ,
	@S7YarnCordStructureActual2 nvarchar (50) ,
	@S7YarnYarnTypeSC bit  ,
	@S7YarnYarnTypeSet nvarchar (50) ,
	@S7YarnYarnTypeActual nvarchar (50) ,
	@S7YarnYarnTypeSet2 nvarchar (50) ,
	@S7YarnYarnTypeActual2 nvarchar (50) ,
	@S7Yarn1stTwistSC bit  ,
	@S7Yarn1stTwistSet nvarchar (50) ,
	@S7Yarn1stTwistActual decimal (18, 3) ,
	@S7Yarn1stTwistSet2 nvarchar (50) ,
	@S7Yarn1stTwistActual2 decimal (18, 3) ,
	@S7Yarn2ndTwistSC bit ,
	@S7Yarn2ndTwistSet nvarchar (50) ,
	@S7Yarn2ndTwistActual decimal (18, 3) ,
	@S7Yarn2ndTwistSet2 nvarchar (50) ,
	@S7Yarn2ndTwistActual2 decimal (18, 3) ,
	@S7YarnLabelOfYarnSC bit  ,
	@S7YarnLabelOfYarnSet nvarchar (50) ,
	@S7YarnLabelOfYarnActual nvarchar (50) ,
	@S7YarnLabelOfYarnSet2 nvarchar (50) ,
	@S7YarnLabelOfYarnActual2 nvarchar (50) ,
	@S7YarnWeightSC bit  ,
	@S7YarnWeightSet decimal (18, 3) ,
	@S7YarnWeightSetErr decimal (18, 3) ,
	@S7YarnWeightActual decimal (18, 3) ,
	@S7YarnWeightSet2 decimal (18, 3) ,
	@S7YarnWeightSetErr2 decimal (18, 3) ,
	@S7YarnWeightActual2 decimal (18, 3) ,
	@S7CreelSettingUseTensorSC bit  ,
	@S7CreelSettingUseTensorSet nvarchar (50) ,
	@S7CreelSettingUseTensorActual nvarchar (50) ,
	@S7CreelSettingUseTensorSet2 nvarchar (50) ,
	@S7CreelSettingUseTensorActual2 nvarchar (50) ,
    -- 2024-03-07 : Change Type
	@S7CreelSettingKnotConditionSC bit  ,
	@S7CreelSettingKnotConditionSet nvarchar (50) ,
	@S7CreelSettingKnotConditionActual nvarchar (50) ,
	@S7CreelSettingKnotConditionSet2 nvarchar (50) ,
	@S7CreelSettingKnotConditionActual2 nvarchar (50) ,

	@S7CreelSettingSlubCatsweSC bit  ,
	@S7CreelSettingSlubCatsweSet decimal (18, 3) ,
	@S7CreelSettingSlubCatsweActual decimal (18, 3) ,
	@S7CreelSettingSlubCatsweSet2 decimal (18, 3) ,
	@S7CreelSettingSlubCatsweActual2 decimal (18, 3) ,

	@S8StretchDryerSC bit  ,
	@S8StretchDryerSet decimal (18, 3) ,
	@S8StretchDryerSetErr decimal (18, 3) ,
	@S8StretchDryerActual decimal (18, 3) ,
	@S8StretchDryerSet2 decimal (18, 3) ,
	@S8StretchDryerSetErr2 decimal (18, 3) ,
	@S8StretchDryerActual2 decimal (18, 3) ,
	@S8StretchStretchHotSC bit  ,
	@S8StretchStretchHotSet decimal (18, 3) ,
	@S8StretchStretchHotSetErr decimal (18, 3) ,
	@S8StretchHotActual decimal (18, 3) ,
	@S8StretchHotSet2 decimal (18, 3) ,
	@S8StretchHotSetErr2 decimal (18, 3) ,
	@S8StretchHotActual2 decimal (18, 3) ,
	@S8StretchNormalSC bit  ,
	@S8StretchNormalSet decimal (18, 3) ,
	@S8StretchNormalSetErr decimal (18, 3) ,
	@S8StretchNormalActual decimal (18, 3) ,
	@S8StretchNormalSet2 decimal (18, 3) ,
	@S8StretchNormalSetErr2 decimal (18, 3) ,
	@S8StretchNormalActual2 decimal (18, 3) ,
	@S8StretchTotalSC bit  ,
	@S8StretchTotalSet decimal (18, 3) ,
	@S8StretchTotalSetErr decimal (18, 3) ,
	@S8StretchTotalActual decimal (18, 3) ,
	@S8StretchTotalSet2 decimal (18, 3) ,
	@S8StretchTotalSetErr2 decimal (18, 3) ,
	@S8StretchTotalActual2 decimal (18, 3) ,
	@S8TempDryerSC bit  ,
	@S8TempDryerSet decimal (18, 3) ,
	@S8TempDryerSetErr decimal (18, 3) ,
	@S8TempDryerActual decimal (18, 3) ,
	@S8TempDryerSet2 decimal (18, 3) ,
	@S8TempDryerSetErr2 decimal (18, 3) ,
	@S8TempDryerActual2 decimal (18, 3) ,
	@S8TempHotSC bit  ,
	@S8TempHotSet decimal (18, 3) ,
	@S8TempHotSetErr decimal (18, 3) ,
	@S8TempHotActual decimal (18, 3) ,
	@S8TempHotSet2 decimal (18, 3) ,
	@S8TempHotSetErr2 decimal (18, 3) ,
	@S8TempHotActual2 decimal (18, 3) ,
	@S8TempNormalSC bit  ,
	@S8TempNormalSet decimal (18, 3) ,
	@S8TempNormalSetErr decimal (18, 3) ,
	@S8TempNormalActual decimal (18, 3) ,
	@S8TempNormalSet2 decimal (18, 3) ,
	@S8TempNormalSetErr2 decimal (18, 3) ,
	@S8TempNormalActual2 decimal (18, 3) ,
	@S8CounterSettingSC bit  ,
	@S8CounterSettingSet nvarchar (50) ,
	@S8CounterSettingActual decimal (18, 3) ,
	@S8CounterSettingSet2 nvarchar (50) ,
	@S8CounterSettingActual2 decimal (18, 3) ,
	@S8SpeedSC bit  ,
	@S8SpeedSet decimal (18, 3) ,
	@S8SpeedErr decimal (18, 3) ,
	@S8SpeedActual decimal (18, 3) ,
	@S8SpeedSet2 decimal (18, 3) ,
	@S8SpeedSetErr2 decimal (18, 3) ,
	@S8SpeedActual2 decimal (18, 3) ,
	@S8NoOfCordsSC bit  ,
	@S8NoOfCordsSet decimal (18, 3) ,
	@S8NoOfCordsActual decimal (18, 3) ,
	@S8NoOfCordsSet2 decimal (18, 3) ,
	@S8NoOfCordsActual2 decimal (18, 3) ,
	@S8SofnorSC bit  ,
	@S8SofnorSet nvarchar (50) ,
	@S8SofnorActual nvarchar (50) ,
	@S8SofnorSet2 nvarchar (50) ,
	@S8SofnorActual2 nvarchar (50) ,
	@S8DrawNipSC bit  ,
	@S8DrawNipSet decimal (18, 3) ,
	@S8DrawNipActual decimal (18, 3) ,
	@S8DrawNipSet2 decimal (18, 3) ,
	@S8DrawNipActual2 decimal (18, 3) ,
	@S8DippingNo1ConcentrationSC bit  ,
	@S8DippingNo1ConcentrationSet nvarchar (50) ,
	@S8DippingNo1ConcentrationActual nvarchar (50) ,
	@S8DippingNo1ConcentrationSet2 nvarchar (50) ,
	@S8DippingNo1ConcentrationActual2 nvarchar (50) ,
	@S8DippingNo1NipFrontSC bit  ,
	@S8DippingNo1NipFrontSet nvarchar (50) ,
	@S8DippingNo1NipFrontActual decimal (18, 3) ,
	@S8DippingNo1NipFrontSet2 nvarchar (50) ,
	@S8DippingNo1NipFrontActual2 decimal (18, 3) ,
	@S8DippingNo1NipBackSC bit  ,
	@S8DippingNo1NipBackSet nvarchar (50) ,
	@S8DippingNo1NipBackActual decimal (18, 3) ,
	@S8DippingNo1NipBackSet2 nvarchar (50) ,
	@S8DippingNo1NipBackActual2 decimal (18, 3) ,
	@S8DippingNo1WPUstdSC bit ,
	@S8DippingNo1WPUstdSet nvarchar (50) ,
	@S8DippingNo1WPUstdActual decimal (18, 3) ,
	@S8DippingNo1WPUstdSet2 nvarchar (50) ,
	@S8DippingNo1WPUstdActual2 decimal (18, 3) ,
	@S8DippingNo2ConcentrationSC bit  ,
	@S8DippingNo2ConcentrationSet nvarchar (50) ,
	@S8DippingNo2ConcentrationActual nvarchar (50) ,
	@S8DippingNo2ConcentrationSet2 nvarchar (50) ,
	@S8DippingNo2ConcentrationActual2 nvarchar (50) ,
	@S8DippingNo2NipFrontSC bit  ,
	@S8DippingNo2NipFrontSet nvarchar (50) ,
	@S8DippingNo2NipFrontActual decimal (18, 3) ,
	@S8DippingNo2NipFrontSet2 nvarchar (50) ,
	@S8DippingNo2NipFrontActual2 decimal (18, 3) ,
	@S8DippingNo2NipBackSC bit  ,
	@S8DippingNo2NipBackSet nvarchar (50) ,
	@S8DippingNo2NipBackActual decimal (18, 3) ,
	@S8DippingNo2NipBackSet2 nvarchar (50) ,
	@S8DippingNo2NipBackActual2 decimal (18, 3) ,
	@S8DippingNo2WPUstdSC bit ,
	@S8DippingNo2WPUstdSet nvarchar (50) ,
	@S8DippingNo2WPUstdActual decimal (18, 3) ,
	@S8DippingNo2WPUstdSet2 nvarchar (50) ,
	@S8DippingNo2WPUstdActual2 decimal (18, 3) ,
	@S9WinderAyameDaialSC bit  ,
	@S9WinderAyameDaialSet decimal (18, 6) ,
	@S9WinderAyameDaialActual decimal (18, 6) ,
	@S9WinderAyameDaialSet2 decimal (18, 6) ,
	@S9WinderAyameDaialActual2 decimal (18, 6) ,
	@S9WinderMpaSC bit  ,
	@S9WinderMpaSet decimal (18, 3) ,
	@S9WinderMpaActual decimal (18, 3) ,
	@S9WinderMpaSet2 decimal (18, 3) ,
	@S9WinderMpaActual2 decimal (18, 3) ,
	@S9WinderSpringSC bit  ,
	@S9WinderSpringSet decimal (18, 3) ,
	@S9WinderSpringActual decimal (18, 3) ,
	@S9WinderSpringSet2 decimal (18, 3) ,
	@S9WinderSpringActual2 decimal (18, 3) ,
	@S9WinderPeperTubeColorSC bit  ,
	@S9WinderPeperTubeColorSet nvarchar (50) ,
	@S9WinderPeperTubeColorActual nvarchar (50) ,
	@S9WinderPeperTubeColorSet2 nvarchar (50) ,
	@S9WinderPeperTubeColorActual2 nvarchar (50) ,
	@S9WinderCheeseWeightSC bit  ,
	@S9WinderCheeseWeightSet nvarchar (50) ,
	@S9WinderCheeseWeightActual decimal (18, 3) ,
	@S9WinderCheeseWeightSet2 nvarchar (50) ,
	@S9WinderCheeseWeightActual2 decimal (18, 3) ,
	@S9ExhaustFanOven1CirculatingFanSC bit  ,
	@S9ExhaustFanOven1CirculatingFanSet decimal (18, 3) ,
	@S9ExhaustFanOven1CirculatingFanActual decimal (18, 3) ,
	@S9ExhaustFanOven1CirculatingFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOven1CirculatingFanActual2 decimal (18, 3) ,
	@S9ExhaustFanOven2CirculatingFanSC bit  ,
	@S9ExhaustFanOven2CirculatingFanSet decimal (18, 3) ,
	@S9ExhaustFanOven2CirculatingFanActual decimal (18, 3) ,
	@S9ExhaustFanOven2CirculatingFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOven2CirculatingFanActual2 decimal (18, 3) ,
	@S9ExhaustFanOven1ExhaustFanSC bit  ,
	@S9ExhaustFanOven1ExhaustFanSet decimal (18, 3) ,
	@S9ExhaustFanOven1ExhaustFanActual decimal (18, 3) ,
	@S9ExhaustFanOven1ExhaustFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOven1ExhaustFanActual2 decimal (18, 3) ,
	@S9ExhaustFanOven2ExhaustFanSC bit  ,
	@S9ExhaustFanOven2ExhaustFanSet decimal (18, 3) ,
	@S9ExhaustFanOven2ExhaustFanActual decimal (18, 3) ,
	@S9ExhaustFanOven2ExhaustFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOven2ExhaustFanActual2 decimal (18, 3) ,
	@S9ExhaustFanOvenFrontExhaustFanSC bit  ,
	@S9ExhaustFanOvenFrontExhaustFanSet decimal (18, 3) ,
	@S9ExhaustFanOvenFrontExhaustFanActual decimal (18, 3) ,
	@S9ExhaustFanOvenFrontExhaustFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOvenFrontExhaustFanActual2 decimal (18, 3) ,
	@S9ExhaustFanOvenBackExhaustFanSC bit  ,
	@S9ExhaustFanOvenBackExhaustFanSet decimal (18, 3) ,
	@S9ExhaustFanOvenBackExhaustFanActual decimal (18, 3) ,
	@S9ExhaustFanOvenBackExhaustFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOvenBackExhaustFanActual2 decimal (18, 3) ,
	@S9SpongSC bit  ,
	@S9SpongSet nvarchar (50) ,
	@S9SpongActual nvarchar (50) ,
	@S9SpongSet2 nvarchar (50) ,
	@S9SpongActual2 nvarchar (50) ,
	@UpdateBy nvarchar(100) ,
	@UpdateDate datetime ,
	@UpdateBy2 nvarchar(100) ,
	@UpdateDate2 datetime ,
	@CheckedBy nvarchar(100) , 
	@CheckedDate datetime ,
	@ApproveBy nvarchar(100) ,
	@ApproveDate datetime ,
	@ShiftLeader nvarchar(100) ,
	@ProductionManager nvarchar(100),
    @DIPConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPCondition WHERE DIPConditionId = @DIPConditionId)
        BEGIN
            UPDATE DIPCondition 
             SET DIPPCId = @DIPPCId, 
                S7YarnCordStructureSC = @S7YarnCordStructureSC ,
				S7YarnCordStructureSet = @S7YarnCordStructureSet ,
				S7YarnCordStructureActual = @S7YarnCordStructureActual ,
				S7YarnCordStructureSet2 = @S7YarnCordStructureSet2 ,
				S7YarnCordStructureActual2 = @S7YarnCordStructureActual2 ,
				S7YarnYarnTypeSC = @S7YarnYarnTypeSC ,
				S7YarnYarnTypeSet = @S7YarnYarnTypeSet ,
				S7YarnYarnTypeActual = @S7YarnYarnTypeActual ,
				S7YarnYarnTypeSet2 = @S7YarnYarnTypeSet2 ,
				S7YarnYarnTypeActual2 = @S7YarnYarnTypeActual2 ,
				S7Yarn1stTwistSC = @S7Yarn1stTwistSC ,
				S7Yarn1stTwistSet = @S7Yarn1stTwistSet ,
				S7Yarn1stTwistActual = @S7Yarn1stTwistActual ,
				S7Yarn1stTwistSet2 = @S7Yarn1stTwistSet2 ,
				S7Yarn1stTwistActual2 = @S7Yarn1stTwistActual2 ,
				S7Yarn2ndTwistSC = @S7Yarn2ndTwistSC ,
				S7Yarn2ndTwistSet = @S7Yarn2ndTwistSet ,
				S7Yarn2ndTwistActual = @S7Yarn2ndTwistActual ,
				S7Yarn2ndTwistSet2 = @S7Yarn2ndTwistSet2 ,
				S7Yarn2ndTwistActual2 = @S7Yarn2ndTwistActual2 ,
				S7YarnLabelOfYarnSC = @S7YarnLabelOfYarnSC ,
				S7YarnLabelOfYarnSet = @S7YarnLabelOfYarnSet ,
				S7YarnLabelOfYarnActual = @S7YarnLabelOfYarnActual ,
				S7YarnLabelOfYarnSet2 = @S7YarnLabelOfYarnSet2 ,
				S7YarnLabelOfYarnActual2 = @S7YarnLabelOfYarnActual2 ,
				S7YarnWeightSC = @S7YarnWeightSC ,
				S7YarnWeightSet = @S7YarnWeightSet ,
				S7YarnWeightSetErr = @S7YarnWeightSetErr ,
				S7YarnWeightActual = @S7YarnWeightActual ,
				S7YarnWeightSet2 = @S7YarnWeightSet2 ,
				S7YarnWeightSetErr2 = @S7YarnWeightSetErr2 ,
				S7YarnWeightActual2 = @S7YarnWeightActual2 ,
				S7CreelSettingUseTensorSC = @S7CreelSettingUseTensorSC ,
				S7CreelSettingUseTensorSet = @S7CreelSettingUseTensorSet ,
				S7CreelSettingUseTensorActual = @S7CreelSettingUseTensorActual ,
				S7CreelSettingUseTensorSet2 = @S7CreelSettingUseTensorSet2 ,
				S7CreelSettingUseTensorActual2 = @S7CreelSettingUseTensorActual2 ,
				S7CreelSettingKnotConditionSC = @S7CreelSettingKnotConditionSC ,
				S7CreelSettingKnotConditionSet = @S7CreelSettingKnotConditionSet ,
				S7CreelSettingKnotConditionActual = @S7CreelSettingKnotConditionActual ,
				S7CreelSettingKnotConditionSet2 = @S7CreelSettingKnotConditionSet2 ,
				S7CreelSettingKnotConditionActual2 = @S7CreelSettingKnotConditionActual2 ,

				S7CreelSettingSlubCatsweSC = @S7CreelSettingSlubCatsweSC ,
				S7CreelSettingSlubCatsweSet = @S7CreelSettingSlubCatsweSet ,
				S7CreelSettingSlubCatsweActual = @S7CreelSettingSlubCatsweActual ,
				S7CreelSettingSlubCatsweSet2 = @S7CreelSettingSlubCatsweSet2 ,
				S7CreelSettingSlubCatsweActual2 = @S7CreelSettingSlubCatsweActual2 ,

				S8StretchDryerSC = @S8StretchDryerSC ,
				S8StretchDryerSet = @S8StretchDryerSet ,
				S8StretchDryerSetErr = @S8StretchDryerSetErr ,
				S8StretchDryerActual = @S8StretchDryerActual ,
				S8StretchDryerSet2 = @S8StretchDryerSet2 ,
				S8StretchDryerSetErr2 = @S8StretchDryerSetErr2 ,
				S8StretchDryerActual2 = @S8StretchDryerActual2 ,
				S8StretchStretchHotSC = @S8StretchStretchHotSC ,
				S8StretchStretchHotSet = @S8StretchStretchHotSet ,
				S8StretchStretchHotSetErr = @S8StretchStretchHotSetErr ,
				S8StretchHotActual = @S8StretchHotActual ,
				S8StretchHotSet2 = @S8StretchHotSet2 ,
				S8StretchHotSetErr2 = @S8StretchHotSetErr2 ,
				S8StretchHotActual2 = @S8StretchHotActual2 ,
				S8StretchNormalSC = @S8StretchNormalSC ,
				S8StretchNormalSet = @S8StretchNormalSet ,
				S8StretchNormalSetErr = @S8StretchNormalSetErr ,
				S8StretchNormalActual = @S8StretchNormalActual ,
				S8StretchNormalSet2 = @S8StretchNormalSet2 ,
				S8StretchNormalSetErr2 = @S8StretchNormalSetErr2 ,
				S8StretchNormalActual2 = @S8StretchNormalActual2 ,
				S8StretchTotalSC = @S8StretchTotalSC ,
				S8StretchTotalSet = @S8StretchTotalSet ,
				S8StretchTotalSetErr = @S8StretchTotalSetErr ,
				S8StretchTotalActual = @S8StretchTotalActual ,
				S8StretchTotalSet2 = @S8StretchTotalSet2 ,
				S8StretchTotalSetErr2 = @S8StretchTotalSetErr2 ,
				S8StretchTotalActual2 = @S8StretchTotalActual2 ,
				S8TempDryerSC = @S8TempDryerSC ,
				S8TempDryerSet = @S8TempDryerSet ,
				S8TempDryerSetErr = @S8TempDryerSetErr ,
				S8TempDryerActual = @S8TempDryerActual ,
				S8TempDryerSet2 = @S8TempDryerSet2 ,
				S8TempDryerSetErr2 = @S8TempDryerSetErr2 ,
				S8TempDryerActual2 = @S8TempDryerActual2 ,
				S8TempHotSC = @S8TempHotSC ,
				S8TempHotSet = @S8TempHotSet ,
				S8TempHotSetErr = @S8TempHotSetErr ,
				S8TempHotActual = @S8TempHotActual ,
				S8TempHotSet2 = @S8TempHotSet2 ,
				S8TempHotSetErr2 = @S8TempHotSetErr2 ,
				S8TempHotActual2 = @S8TempHotActual2 ,
				S8TempNormalSC = @S8TempNormalSC ,
				S8TempNormalSet = @S8TempNormalSet ,
				S8TempNormalSetErr = @S8TempNormalSetErr ,
				S8TempNormalActual = @S8TempNormalActual ,
				S8TempNormalSet2 = @S8TempNormalSet2 ,
				S8TempNormalSetErr2 = @S8TempNormalSetErr2 ,
				S8TempNormalActual2 = @S8TempNormalActual2 ,
				S8CounterSettingSC = @S8CounterSettingSC ,
				S8CounterSettingSet = @S8CounterSettingSet ,
				S8CounterSettingActual = @S8CounterSettingActual ,
				S8CounterSettingSet2 = @S8CounterSettingSet2 ,
				S8CounterSettingActual2 = @S8CounterSettingActual2 ,
				S8SpeedSC = @S8SpeedSC ,
				S8SpeedSet = @S8SpeedSet ,
				S8SpeedErr = @S8SpeedErr ,
				S8SpeedActual = @S8SpeedActual ,
				S8SpeedSet2 = @S8SpeedSet2 ,
				S8SpeedSetErr2 = @S8SpeedSetErr2 ,
				S8SpeedActual2 = @S8SpeedActual2 ,
				S8NoOfCordsSC = @S8NoOfCordsSC ,
				S8NoOfCordsSet = @S8NoOfCordsSet ,
				S8NoOfCordsActual = @S8NoOfCordsActual ,
				S8NoOfCordsSet2 = @S8NoOfCordsSet2 ,
				S8NoOfCordsActual2 = @S8NoOfCordsActual2 ,
				S8SofnorSC = @S8SofnorSC ,
				S8SofnorSet = @S8SofnorSet ,
				S8SofnorActual = @S8SofnorActual ,
				S8SofnorSet2 = @S8SofnorSet2 ,
				S8SofnorActual2 = @S8SofnorActual2 ,
				S8DrawNipSC = @S8DrawNipSC ,
				S8DrawNipSet = @S8DrawNipSet ,
				S8DrawNipActual = @S8DrawNipActual ,
				S8DrawNipSet2 = @S8DrawNipSet2 ,
				S8DrawNipActual2 = @S8DrawNipActual2 ,
				S8DippingNo1ConcentrationSC = @S8DippingNo1ConcentrationSC ,
				S8DippingNo1ConcentrationSet = @S8DippingNo1ConcentrationSet ,
				S8DippingNo1ConcentrationActual = @S8DippingNo1ConcentrationActual ,
				S8DippingNo1ConcentrationSet2 = @S8DippingNo1ConcentrationSet2 ,
				S8DippingNo1ConcentrationActual2 = @S8DippingNo1ConcentrationActual2 ,
				S8DippingNo1NipFrontSC = @S8DippingNo1NipFrontSC ,
				S8DippingNo1NipFrontSet = @S8DippingNo1NipFrontSet ,
				S8DippingNo1NipFrontActual = @S8DippingNo1NipFrontActual ,
				S8DippingNo1NipFrontSet2 = @S8DippingNo1NipFrontSet2 ,
				S8DippingNo1NipFrontActual2 = @S8DippingNo1NipFrontActual2 ,
				S8DippingNo1NipBackSC = @S8DippingNo1NipBackSC ,
				S8DippingNo1NipBackSet = @S8DippingNo1NipBackSet ,
				S8DippingNo1NipBackActual = @S8DippingNo1NipBackActual ,
				S8DippingNo1NipBackSet2 = @S8DippingNo1NipBackSet2 ,
				S8DippingNo1NipBackActual2 = @S8DippingNo1NipBackActual2 ,

				S8DippingNo1WPUstdSC = @S8DippingNo1WPUstdSC ,
				S8DippingNo1WPUstdSet = @S8DippingNo1WPUstdSet ,
				S8DippingNo1WPUstdActual = @S8DippingNo1WPUstdActual ,
				S8DippingNo1WPUstdSet2 = @S8DippingNo1WPUstdSet2 ,
				S8DippingNo1WPUstdActual2 = @S8DippingNo1WPUstdActual2 ,

				S8DippingNo2ConcentrationSC = @S8DippingNo2ConcentrationSC ,
				S8DippingNo2ConcentrationSet = @S8DippingNo2ConcentrationSet ,
				S8DippingNo2ConcentrationActual = @S8DippingNo2ConcentrationActual ,
				S8DippingNo2ConcentrationSet2 = @S8DippingNo2ConcentrationSet2 ,
				S8DippingNo2ConcentrationActual2 = @S8DippingNo2ConcentrationActual2 ,
				S8DippingNo2NipFrontSC = @S8DippingNo2NipFrontSC ,
				S8DippingNo2NipFrontSet = @S8DippingNo2NipFrontSet ,
				S8DippingNo2NipFrontActual = @S8DippingNo2NipFrontActual ,
				S8DippingNo2NipFrontSet2 = @S8DippingNo2NipFrontSet2 ,
				S8DippingNo2NipFrontActual2 = @S8DippingNo2NipFrontActual2 ,
				S8DippingNo2NipBackSC = @S8DippingNo2NipBackSC ,
				S8DippingNo2NipBackSet = @S8DippingNo2NipBackSet ,
				S8DippingNo2NipBackActual = @S8DippingNo2NipBackActual ,
				S8DippingNo2NipBackSet2 = @S8DippingNo2NipBackSet2 ,
				S8DippingNo2NipBackActual2 = @S8DippingNo2NipBackActual2 ,

				S8DippingNo2WPUstdSC = @S8DippingNo2WPUstdSC ,
				S8DippingNo2WPUstdSet = @S8DippingNo2WPUstdSet ,
				S8DippingNo2WPUstdActual = @S8DippingNo2WPUstdActual ,
				S8DippingNo2WPUstdSet2 = @S8DippingNo2WPUstdSet2 ,
				S8DippingNo2WPUstdActual2 = @S8DippingNo2WPUstdActual2 ,

				S9WinderAyameDaialSC = @S9WinderAyameDaialSC ,
				S9WinderAyameDaialSet = @S9WinderAyameDaialSet ,
				S9WinderAyameDaialActual = @S9WinderAyameDaialActual ,
				S9WinderAyameDaialSet2 = @S9WinderAyameDaialSet2 ,
				S9WinderAyameDaialActual2 = @S9WinderAyameDaialActual2 ,
				S9WinderMpaSC = @S9WinderMpaSC ,
				S9WinderMpaSet = @S9WinderMpaSet ,
				S9WinderMpaActual = @S9WinderMpaActual ,
				S9WinderMpaSet2 = @S9WinderMpaSet2 ,
				S9WinderMpaActual2 = @S9WinderMpaActual2 ,
				S9WinderSpringSC = @S9WinderSpringSC ,
				S9WinderSpringSet = @S9WinderSpringSet ,
				S9WinderSpringActual = @S9WinderSpringActual ,
				S9WinderSpringSet2 = @S9WinderSpringSet2 ,
				S9WinderSpringActual2 = @S9WinderSpringActual2 ,
				S9WinderPeperTubeColorSC = @S9WinderPeperTubeColorSC ,
				S9WinderPeperTubeColorSet = @S9WinderPeperTubeColorSet ,
				S9WinderPeperTubeColorActual = @S9WinderPeperTubeColorActual ,
				S9WinderPeperTubeColorSet2 = @S9WinderPeperTubeColorSet2 ,
				S9WinderPeperTubeColorActual2 = @S9WinderPeperTubeColorActual2 ,
				S9WinderCheeseWeightSC = @S9WinderCheeseWeightSC ,
				S9WinderCheeseWeightSet = @S9WinderCheeseWeightSet ,
				S9WinderCheeseWeightActual = @S9WinderCheeseWeightActual ,
				S9WinderCheeseWeightSet2 = @S9WinderCheeseWeightSet2 ,
				S9WinderCheeseWeightActual2 = @S9WinderCheeseWeightActual2 ,
				S9ExhaustFanOven1CirculatingFanSC = @S9ExhaustFanOven1CirculatingFanSC ,
				S9ExhaustFanOven1CirculatingFanSet = @S9ExhaustFanOven1CirculatingFanSet ,
				S9ExhaustFanOven1CirculatingFanActual = @S9ExhaustFanOven1CirculatingFanActual ,
				S9ExhaustFanOven1CirculatingFanSet2 = @S9ExhaustFanOven1CirculatingFanSet2 ,
				S9ExhaustFanOven1CirculatingFanActual2 = @S9ExhaustFanOven1CirculatingFanActual2 ,
				S9ExhaustFanOven2CirculatingFanSC = @S9ExhaustFanOven2CirculatingFanSC ,
				S9ExhaustFanOven2CirculatingFanSet = @S9ExhaustFanOven2CirculatingFanSet ,
				S9ExhaustFanOven2CirculatingFanActual = @S9ExhaustFanOven2CirculatingFanActual ,
				S9ExhaustFanOven2CirculatingFanSet2 = @S9ExhaustFanOven2CirculatingFanSet2 ,
				S9ExhaustFanOven2CirculatingFanActual2 = @S9ExhaustFanOven2CirculatingFanActual2 ,
				S9ExhaustFanOven1ExhaustFanSC = @S9ExhaustFanOven1ExhaustFanSC ,
				S9ExhaustFanOven1ExhaustFanSet = @S9ExhaustFanOven1ExhaustFanSet ,
				S9ExhaustFanOven1ExhaustFanActual = @S9ExhaustFanOven1ExhaustFanActual ,
				S9ExhaustFanOven1ExhaustFanSet2 = @S9ExhaustFanOven1ExhaustFanSet2 ,
				S9ExhaustFanOven1ExhaustFanActual2 = @S9ExhaustFanOven1ExhaustFanActual2 ,
				S9ExhaustFanOven2ExhaustFanSC = @S9ExhaustFanOven2ExhaustFanSC ,
				S9ExhaustFanOven2ExhaustFanSet = @S9ExhaustFanOven2ExhaustFanSet ,
				S9ExhaustFanOven2ExhaustFanActual = @S9ExhaustFanOven2ExhaustFanActual ,
				S9ExhaustFanOven2ExhaustFanSet2 = @S9ExhaustFanOven2ExhaustFanSet2 ,
				S9ExhaustFanOven2ExhaustFanActual2 = @S9ExhaustFanOven2ExhaustFanActual2 ,
				S9ExhaustFanOvenFrontExhaustFanSC = @S9ExhaustFanOvenFrontExhaustFanSC ,
				S9ExhaustFanOvenFrontExhaustFanSet = @S9ExhaustFanOvenFrontExhaustFanSet ,
				S9ExhaustFanOvenFrontExhaustFanActual = @S9ExhaustFanOvenFrontExhaustFanActual ,
				S9ExhaustFanOvenFrontExhaustFanSet2 = @S9ExhaustFanOvenFrontExhaustFanSet2 ,
				S9ExhaustFanOvenFrontExhaustFanActual2 = @S9ExhaustFanOvenFrontExhaustFanActual2 ,
				S9ExhaustFanOvenBackExhaustFanSC = @S9ExhaustFanOvenBackExhaustFanSC ,
				S9ExhaustFanOvenBackExhaustFanSet = @S9ExhaustFanOvenBackExhaustFanSet ,
				S9ExhaustFanOvenBackExhaustFanActual = @S9ExhaustFanOvenBackExhaustFanActual ,
				S9ExhaustFanOvenBackExhaustFanSet2 = @S9ExhaustFanOvenBackExhaustFanSet2 ,
				S9ExhaustFanOvenBackExhaustFanActual2 = @S9ExhaustFanOvenBackExhaustFanActual2 ,
				S9SpongSC = @S9SpongSC ,
				S9SpongSet = @S9SpongSet ,
				S9SpongActual = @S9SpongActual ,
				S9SpongSet2 = @S9SpongSet2 ,
				S9SpongActual2 = @S9SpongActual2 ,

				UpdateBy = @UpdateBy ,
				UpdateDate = @UpdateDate ,
				UpdateBy2 = @UpdateBy2 ,
				UpdateDate2 = @UpdateDate2 ,
				CheckedBy = @CheckedBy , 
				CheckedDate = @CheckedDate ,
				ApproveBy = @ApproveBy ,
				ApproveDate = @ApproveDate ,
				ShiftLeader = @ShiftLeader ,
				ProductionManager = @ProductionManager
             WHERE DIPConditionId = @DIPConditionId
        END
        ELSE
        BEGIN
			INSERT INTO DIPCondition
		    (
                DIPPCId,
				ProductCode,
				S7YarnCordStructureSC,
				S7YarnCordStructureSet,
				S7YarnCordStructureActual,
				S7YarnCordStructureSet2,
				S7YarnCordStructureActual2,
				S7YarnYarnTypeSC,
				S7YarnYarnTypeSet,
				S7YarnYarnTypeActual,
				S7YarnYarnTypeSet2,
				S7YarnYarnTypeActual2,
				S7Yarn1stTwistSC,
				S7Yarn1stTwistSet,
				S7Yarn1stTwistActual,
				S7Yarn1stTwistSet2,
				S7Yarn1stTwistActual2,
				S7Yarn2ndTwistSC,
				S7Yarn2ndTwistSet,
				S7Yarn2ndTwistActual,
				S7Yarn2ndTwistSet2,
				S7Yarn2ndTwistActual2,
				S7YarnLabelOfYarnSC,
				S7YarnLabelOfYarnSet,
				S7YarnLabelOfYarnActual,
				S7YarnLabelOfYarnSet2,
				S7YarnLabelOfYarnActual2,
				S7YarnWeightSC,
				S7YarnWeightSet,
				S7YarnWeightSetErr,
				S7YarnWeightActual,
				S7YarnWeightSet2,
				S7YarnWeightSetErr2,
				S7YarnWeightActual2,
				S7CreelSettingUseTensorSC,
				S7CreelSettingUseTensorSet,
				S7CreelSettingUseTensorActual,
				S7CreelSettingUseTensorSet2,
				S7CreelSettingUseTensorActual2,
				S7CreelSettingKnotConditionSC,
				S7CreelSettingKnotConditionSet,
				S7CreelSettingKnotConditionActual,
				S7CreelSettingKnotConditionSet2,
				S7CreelSettingKnotConditionActual2,

				S7CreelSettingSlubCatsweSC ,
				S7CreelSettingSlubCatsweSet ,
				S7CreelSettingSlubCatsweActual ,
				S7CreelSettingSlubCatsweSet2 ,
				S7CreelSettingSlubCatsweActual2 ,

				S8StretchDryerSC,
				S8StretchDryerSet,
				S8StretchDryerSetErr,
				S8StretchDryerActual,
				S8StretchDryerSet2,
				S8StretchDryerSetErr2,
				S8StretchDryerActual2,
				S8StretchStretchHotSC,
				S8StretchStretchHotSet,
				S8StretchStretchHotSetErr,
				S8StretchHotActual,
				S8StretchHotSet2,
				S8StretchHotSetErr2,
				S8StretchHotActual2,
				S8StretchNormalSC,
				S8StretchNormalSet,
				S8StretchNormalSetErr,
				S8StretchNormalActual,
				S8StretchNormalSet2,
				S8StretchNormalSetErr2,
				S8StretchNormalActual2,
				S8StretchTotalSC,
				S8StretchTotalSet,
				S8StretchTotalSetErr,
				S8StretchTotalActual,
				S8StretchTotalSet2,
				S8StretchTotalSetErr2,
				S8StretchTotalActual2,
				S8TempDryerSC,
				S8TempDryerSet,
				S8TempDryerSetErr,
				S8TempDryerActual,
				S8TempDryerSet2,
				S8TempDryerSetErr2,
				S8TempDryerActual2,
				S8TempHotSC,
				S8TempHotSet,
				S8TempHotSetErr,
				S8TempHotActual,
				S8TempHotSet2,
				S8TempHotSetErr2,
				S8TempHotActual2,
				S8TempNormalSC,
				S8TempNormalSet,
				S8TempNormalSetErr,
				S8TempNormalActual,
				S8TempNormalSet2,
				S8TempNormalSetErr2,
				S8TempNormalActual2,
				S8CounterSettingSC,
				S8CounterSettingSet,
				S8CounterSettingActual,
				S8CounterSettingSet2,
				S8CounterSettingActual2,
				S8SpeedSC,
				S8SpeedSet,
				S8SpeedErr,
				S8SpeedActual,
				S8SpeedSet2,
				S8SpeedSetErr2,
				S8SpeedActual2,
				S8NoOfCordsSC,
				S8NoOfCordsSet,
				S8NoOfCordsActual,
				S8NoOfCordsSet2,
				S8NoOfCordsActual2,
				S8SofnorSC,
				S8SofnorSet,
				S8SofnorActual,
				S8SofnorSet2,
				S8SofnorActual2,
				S8DrawNipSC,
				S8DrawNipSet,
				S8DrawNipActual,
				S8DrawNipSet2,
				S8DrawNipActual2,
				S8DippingNo1ConcentrationSC,
				S8DippingNo1ConcentrationSet,
				S8DippingNo1ConcentrationActual,
				S8DippingNo1ConcentrationSet2,
				S8DippingNo1ConcentrationActual2,
				S8DippingNo1NipFrontSC,
				S8DippingNo1NipFrontSet,
				S8DippingNo1NipFrontActual,
				S8DippingNo1NipFrontSet2,
				S8DippingNo1NipFrontActual2,
				S8DippingNo1NipBackSC,
				S8DippingNo1NipBackSet,
				S8DippingNo1NipBackActual,
				S8DippingNo1NipBackSet2,
				S8DippingNo1NipBackActual2,

				S8DippingNo1WPUstdSC,
				S8DippingNo1WPUstdSet,
				S8DippingNo1WPUstdActual,
				S8DippingNo1WPUstdSet2,
				S8DippingNo1WPUstdActual2,

				S8DippingNo2ConcentrationSC,
				S8DippingNo2ConcentrationSet,
				S8DippingNo2ConcentrationActual,
				S8DippingNo2ConcentrationSet2,
				S8DippingNo2ConcentrationActual2,
				S8DippingNo2NipFrontSC,
				S8DippingNo2NipFrontSet,
				S8DippingNo2NipFrontActual,
				S8DippingNo2NipFrontSet2,
				S8DippingNo2NipFrontActual2,
				S8DippingNo2NipBackSC,
				S8DippingNo2NipBackSet,
				S8DippingNo2NipBackActual,
				S8DippingNo2NipBackSet2,
				S8DippingNo2NipBackActual2,

				S8DippingNo2WPUstdSC,
				S8DippingNo2WPUstdSet,
				S8DippingNo2WPUstdActual,
				S8DippingNo2WPUstdSet2,
				S8DippingNo2WPUstdActual2,

				S9WinderAyameDaialSC,
				S9WinderAyameDaialSet,
				S9WinderAyameDaialActual,
				S9WinderAyameDaialSet2,
				S9WinderAyameDaialActual2,
				S9WinderMpaSC,
				S9WinderMpaSet,
				S9WinderMpaActual,
				S9WinderMpaSet2,
				S9WinderMpaActual2,
				S9WinderSpringSC,
				S9WinderSpringSet,
				S9WinderSpringActual,
				S9WinderSpringSet2,
				S9WinderSpringActual2,
				S9WinderPeperTubeColorSC,
				S9WinderPeperTubeColorSet,
				S9WinderPeperTubeColorActual,
				S9WinderPeperTubeColorSet2,
				S9WinderPeperTubeColorActual2,
				S9WinderCheeseWeightSC,
				S9WinderCheeseWeightSet,
				S9WinderCheeseWeightActual,
				S9WinderCheeseWeightSet2,
				S9WinderCheeseWeightActual2,
				S9ExhaustFanOven1CirculatingFanSC,
				S9ExhaustFanOven1CirculatingFanSet,
				S9ExhaustFanOven1CirculatingFanActual,
				S9ExhaustFanOven1CirculatingFanSet2,
				S9ExhaustFanOven1CirculatingFanActual2,
				S9ExhaustFanOven2CirculatingFanSC,
				S9ExhaustFanOven2CirculatingFanSet,
				S9ExhaustFanOven2CirculatingFanActual,
				S9ExhaustFanOven2CirculatingFanSet2,
				S9ExhaustFanOven2CirculatingFanActual2,
				S9ExhaustFanOven1ExhaustFanSC,
				S9ExhaustFanOven1ExhaustFanSet,
				S9ExhaustFanOven1ExhaustFanActual,
				S9ExhaustFanOven1ExhaustFanSet2,
				S9ExhaustFanOven1ExhaustFanActual2,
				S9ExhaustFanOven2ExhaustFanSC,
				S9ExhaustFanOven2ExhaustFanSet,
				S9ExhaustFanOven2ExhaustFanActual,
				S9ExhaustFanOven2ExhaustFanSet2,
				S9ExhaustFanOven2ExhaustFanActual2,
				S9ExhaustFanOvenFrontExhaustFanSC,
				S9ExhaustFanOvenFrontExhaustFanSet,
				S9ExhaustFanOvenFrontExhaustFanActual,
				S9ExhaustFanOvenFrontExhaustFanSet2,
				S9ExhaustFanOvenFrontExhaustFanActual2,
				S9ExhaustFanOvenBackExhaustFanSC,
				S9ExhaustFanOvenBackExhaustFanSet,
				S9ExhaustFanOvenBackExhaustFanActual,
				S9ExhaustFanOvenBackExhaustFanSet2,
				S9ExhaustFanOvenBackExhaustFanActual2,
				S9SpongSC,
				S9SpongSet,
				S9SpongActual,
				S9SpongSet2,
				S9SpongActual2,

				UpdateBy ,
				UpdateDate ,
				UpdateBy2 ,
				UpdateDate2 ,
				CheckedBy , 
				CheckedDate ,
				ApproveBy ,
				ApproveDate ,
				ShiftLeader ,
				ProductionManager
			)
			VALUES
			(
                @DIPPCId,
                @ProductCode,
				@S7YarnCordStructureSC,
				@S7YarnCordStructureSet,
				@S7YarnCordStructureActual,
				@S7YarnCordStructureSet2,
				@S7YarnCordStructureActual2,
				@S7YarnYarnTypeSC,
				@S7YarnYarnTypeSet,
				@S7YarnYarnTypeActual,
				@S7YarnYarnTypeSet2,
				@S7YarnYarnTypeActual2,
				@S7Yarn1stTwistSC,
				@S7Yarn1stTwistSet,
				@S7Yarn1stTwistActual,
				@S7Yarn1stTwistSet2,
				@S7Yarn1stTwistActual2,
				@S7Yarn2ndTwistSC,
				@S7Yarn2ndTwistSet,
				@S7Yarn2ndTwistActual,
				@S7Yarn2ndTwistSet2,
				@S7Yarn2ndTwistActual2,
				@S7YarnLabelOfYarnSC,
				@S7YarnLabelOfYarnSet,
				@S7YarnLabelOfYarnActual,
				@S7YarnLabelOfYarnSet2,
				@S7YarnLabelOfYarnActual2,
				@S7YarnWeightSC,
				@S7YarnWeightSet,
				@S7YarnWeightSetErr,
				@S7YarnWeightActual,
				@S7YarnWeightSet2,
				@S7YarnWeightSetErr2,
				@S7YarnWeightActual2,
				@S7CreelSettingUseTensorSC,
				@S7CreelSettingUseTensorSet,
				@S7CreelSettingUseTensorActual,
				@S7CreelSettingUseTensorSet2,
				@S7CreelSettingUseTensorActual2,
				@S7CreelSettingKnotConditionSC,
				@S7CreelSettingKnotConditionSet,
				@S7CreelSettingKnotConditionActual,
				@S7CreelSettingKnotConditionSet2,
				@S7CreelSettingKnotConditionActual2,

				@S7CreelSettingSlubCatsweSC ,
				@S7CreelSettingSlubCatsweSet ,
				@S7CreelSettingSlubCatsweActual ,
				@S7CreelSettingSlubCatsweSet2 ,
				@S7CreelSettingSlubCatsweActual2 ,

				@S8StretchDryerSC,
				@S8StretchDryerSet,
				@S8StretchDryerSetErr,
				@S8StretchDryerActual,
				@S8StretchDryerSet2,
				@S8StretchDryerSetErr2,
				@S8StretchDryerActual2,
				@S8StretchStretchHotSC,
				@S8StretchStretchHotSet,
				@S8StretchStretchHotSetErr,
				@S8StretchHotActual,
				@S8StretchHotSet2,
				@S8StretchHotSetErr2,
				@S8StretchHotActual2,
				@S8StretchNormalSC,
				@S8StretchNormalSet,
				@S8StretchNormalSetErr,
				@S8StretchNormalActual,
				@S8StretchNormalSet2,
				@S8StretchNormalSetErr2,
				@S8StretchNormalActual2,
				@S8StretchTotalSC,
				@S8StretchTotalSet,
				@S8StretchTotalSetErr,
				@S8StretchTotalActual,
				@S8StretchTotalSet2,
				@S8StretchTotalSetErr2,
				@S8StretchTotalActual2,
				@S8TempDryerSC,
				@S8TempDryerSet,
				@S8TempDryerSetErr,
				@S8TempDryerActual,
				@S8TempDryerSet2,
				@S8TempDryerSetErr2,
				@S8TempDryerActual2,
				@S8TempHotSC,
				@S8TempHotSet,
				@S8TempHotSetErr,
				@S8TempHotActual,
				@S8TempHotSet2,
				@S8TempHotSetErr2,
				@S8TempHotActual2,
				@S8TempNormalSC,
				@S8TempNormalSet,
				@S8TempNormalSetErr,
				@S8TempNormalActual,
				@S8TempNormalSet2,
				@S8TempNormalSetErr2,
				@S8TempNormalActual2,
				@S8CounterSettingSC,
				@S8CounterSettingSet,
				@S8CounterSettingActual,
				@S8CounterSettingSet2,
				@S8CounterSettingActual2,
				@S8SpeedSC,
				@S8SpeedSet,
				@S8SpeedErr,
				@S8SpeedActual,
				@S8SpeedSet2,
				@S8SpeedSetErr2,
				@S8SpeedActual2,
				@S8NoOfCordsSC,
				@S8NoOfCordsSet,
				@S8NoOfCordsActual,
				@S8NoOfCordsSet2,
				@S8NoOfCordsActual2,
				@S8SofnorSC,
				@S8SofnorSet,
				@S8SofnorActual,
				@S8SofnorSet2,
				@S8SofnorActual2,
				@S8DrawNipSC,
				@S8DrawNipSet,
				@S8DrawNipActual,
				@S8DrawNipSet2,
				@S8DrawNipActual2,
				@S8DippingNo1ConcentrationSC,
				@S8DippingNo1ConcentrationSet,
				@S8DippingNo1ConcentrationActual,
				@S8DippingNo1ConcentrationSet2,
				@S8DippingNo1ConcentrationActual2,
				@S8DippingNo1NipFrontSC,
				@S8DippingNo1NipFrontSet,
				@S8DippingNo1NipFrontActual,
				@S8DippingNo1NipFrontSet2,
				@S8DippingNo1NipFrontActual2,
				@S8DippingNo1NipBackSC,
				@S8DippingNo1NipBackSet,
				@S8DippingNo1NipBackActual,
				@S8DippingNo1NipBackSet2,
				@S8DippingNo1NipBackActual2,

				@S8DippingNo1WPUstdSC,
				@S8DippingNo1WPUstdSet,
				@S8DippingNo1WPUstdActual,
				@S8DippingNo1WPUstdSet2,
				@S8DippingNo1WPUstdActual2,

				@S8DippingNo2ConcentrationSC,
				@S8DippingNo2ConcentrationSet,
				@S8DippingNo2ConcentrationActual,
				@S8DippingNo2ConcentrationSet2,
				@S8DippingNo2ConcentrationActual2,
				@S8DippingNo2NipFrontSC,
				@S8DippingNo2NipFrontSet,
				@S8DippingNo2NipFrontActual,
				@S8DippingNo2NipFrontSet2,
				@S8DippingNo2NipFrontActual2,
				@S8DippingNo2NipBackSC,
				@S8DippingNo2NipBackSet,
				@S8DippingNo2NipBackActual,
				@S8DippingNo2NipBackSet2,
				@S8DippingNo2NipBackActual2,

				@S8DippingNo2WPUstdSC,
				@S8DippingNo2WPUstdSet,
				@S8DippingNo2WPUstdActual,
				@S8DippingNo2WPUstdSet2,
				@S8DippingNo2WPUstdActual2,

				@S9WinderAyameDaialSC,
				@S9WinderAyameDaialSet,
				@S9WinderAyameDaialActual,
				@S9WinderAyameDaialSet2,
				@S9WinderAyameDaialActual2,
				@S9WinderMpaSC,
				@S9WinderMpaSet,
				@S9WinderMpaActual,
				@S9WinderMpaSet2,
				@S9WinderMpaActual2,
				@S9WinderSpringSC,
				@S9WinderSpringSet,
				@S9WinderSpringActual,
				@S9WinderSpringSet2,
				@S9WinderSpringActual2,
				@S9WinderPeperTubeColorSC,
				@S9WinderPeperTubeColorSet,
				@S9WinderPeperTubeColorActual,
				@S9WinderPeperTubeColorSet2,
				@S9WinderPeperTubeColorActual2,
				@S9WinderCheeseWeightSC,
				@S9WinderCheeseWeightSet,
				@S9WinderCheeseWeightActual,
				@S9WinderCheeseWeightSet2,
				@S9WinderCheeseWeightActual2,
				@S9ExhaustFanOven1CirculatingFanSC,
				@S9ExhaustFanOven1CirculatingFanSet,
				@S9ExhaustFanOven1CirculatingFanActual,
				@S9ExhaustFanOven1CirculatingFanSet2,
				@S9ExhaustFanOven1CirculatingFanActual2,
				@S9ExhaustFanOven2CirculatingFanSC,
				@S9ExhaustFanOven2CirculatingFanSet,
				@S9ExhaustFanOven2CirculatingFanActual,
				@S9ExhaustFanOven2CirculatingFanSet2,
				@S9ExhaustFanOven2CirculatingFanActual2,
				@S9ExhaustFanOven1ExhaustFanSC,
				@S9ExhaustFanOven1ExhaustFanSet,
				@S9ExhaustFanOven1ExhaustFanActual,
				@S9ExhaustFanOven1ExhaustFanSet2,
				@S9ExhaustFanOven1ExhaustFanActual2,
				@S9ExhaustFanOven2ExhaustFanSC,
				@S9ExhaustFanOven2ExhaustFanSet,
				@S9ExhaustFanOven2ExhaustFanActual,
				@S9ExhaustFanOven2ExhaustFanSet2,
				@S9ExhaustFanOven2ExhaustFanActual2,
				@S9ExhaustFanOvenFrontExhaustFanSC,
				@S9ExhaustFanOvenFrontExhaustFanSet,
				@S9ExhaustFanOvenFrontExhaustFanActual,
				@S9ExhaustFanOvenFrontExhaustFanSet2,
				@S9ExhaustFanOvenFrontExhaustFanActual2,
				@S9ExhaustFanOvenBackExhaustFanSC,
				@S9ExhaustFanOvenBackExhaustFanSet,
				@S9ExhaustFanOvenBackExhaustFanActual,
				@S9ExhaustFanOvenBackExhaustFanSet2,
				@S9ExhaustFanOvenBackExhaustFanActual2,
				@S9SpongSC,
				@S9SpongSet,
				@S9SpongActual,
				@S9SpongSet2,
				@S9SpongActual2 ,
				@UpdateBy ,
				@UpdateDate ,
				@UpdateBy2 ,
				@UpdateDate2 ,
				@CheckedBy , 
				@CheckedDate ,
				@ApproveBy ,
				@ApproveDate ,
				@ShiftLeader ,
				@ProductionManager
			);

            SET @DIPConditionId = @@IDENTITY;
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
