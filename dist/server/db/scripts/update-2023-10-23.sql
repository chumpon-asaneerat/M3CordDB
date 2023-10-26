/*********** Script Update Date: 2023-10-23  ***********/


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPConditionStd]    Script Date: 23/10/2566 1:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIPConditionStd](
	[ProductCode] [nvarchar](30) NULL,
	[S7YarnCordStructureSC] [bit] NULL,
	[S7YarnCordStructureSet] [nvarchar](50) NULL,
	[S7YarnCordStructureSet2] [nvarchar](50) NULL,
	[S7YarnYarnTypeSC] [bit] NULL,
	[S7YarnYarnTypeSet] [nvarchar](50) NULL,
	[S7YarnYarnTypeSet2] [nvarchar](50) NULL,
	[S7Yarn1stTwistSC] [bit] NULL,
	[S7Yarn1stTwistSet] [nvarchar](50) NULL,
	[S7Yarn1stTwistSet2] [nvarchar](50) NULL,
	[S7Yarn2ndTwistSC] [bit] NULL,
	[S7Yarn2ndTwistSet] [nvarchar](50) NULL,
	[S7Yarn2ndTwistSet2] [nvarchar](50) NULL,
	[S7YarnLabelOfYarnSC] [bit] NULL,
	[S7YarnLabelOfYarnSet] [nvarchar](50) NULL,
	[S7YarnLabelOfYarnSet2] [nvarchar](50) NULL,
	[S7YarnWeightSC] [bit] NULL,
	[S7YarnWeightSet] [decimal](18, 3) NULL,
	[S7YarnWeightSetErr] [decimal](18, 3) NULL,
	[S7YarnWeightSet2] [decimal](18, 3) NULL,
	[S7YarnWeightSetErr2] [decimal](18, 3) NULL,
	[S7CreelSettingUseTensorSC] [bit] NULL,
	[S7CreelSettingUseTensorSet] [nvarchar](50) NULL,
	[S7CreelSettingUseTensorSet2] [nvarchar](50) NULL,
	[S7CreelSettingKnotConditionSC] [bit] NULL,
	[S7CreelSettingKnotConditionSet] [decimal](18, 3) NULL,
	[S7CreelSettingKnotConditionSet2] [decimal](18, 3) NULL,
	[S7CreelSettingSlubCatsweSC] [bit] NULL,
	[S7CreelSettingSlubCatsweSet] [decimal](18, 3) NULL,
	[S7CreelSettingSlubCatsweSet2] [decimal](18, 3) NULL,
	[S8StretchDryerSC] [bit] NULL,
	[S8StretchDryerSet] [decimal](18, 3) NULL,
	[S8StretchDryerSetErr] [decimal](18, 3) NULL,
	[S8StretchDryerSet2] [decimal](18, 3) NULL,
	[S8StretchDryerSetErr2] [decimal](18, 3) NULL,
	[S8StretchStretchHotSC] [bit] NULL,
	[S8StretchStretchHotSet] [decimal](18, 3) NULL,
	[S8StretchStretchHotSetErr] [decimal](18, 3) NULL,
	[S8StretchHotSet2] [decimal](18, 3) NULL,
	[S8StretchHotSetErr2] [decimal](18, 3) NULL,
	[S8StretchNormalSC] [bit] NULL,
	[S8StretchNormalSet] [decimal](18, 3) NULL,
	[S8StretchNormalSetErr] [decimal](18, 3) NULL,
	[S8StretchNormalSet2] [decimal](18, 3) NULL,
	[S8StretchNormalSetErr2] [decimal](18, 3) NULL,
	[S8StretchTotalSC] [bit] NULL,
	[S8StretchTotalSet] [decimal](18, 3) NULL,
	[S8StretchTotalSetErr] [decimal](18, 3) NULL,
	[S8StretchTotalSet2] [decimal](18, 3) NULL,
	[S8StretchTotalSetErr2] [decimal](18, 3) NULL,
	[S8TempDryerSC] [bit] NULL,
	[S8TempDryerSet] [decimal](18, 3) NULL,
	[S8TempDryerSetErr] [decimal](18, 3) NULL,
	[S8TempDryerSet2] [decimal](18, 3) NULL,
	[S8TempDryerSetErr2] [decimal](18, 3) NULL,
	[S8TempHotSC] [bit] NULL,
	[S8TempHotSet] [decimal](18, 3) NULL,
	[S8TempHotSetErr] [decimal](18, 3) NULL,
	[S8TempHotSet2] [decimal](18, 3) NULL,
	[S8TempHotSetErr2] [decimal](18, 3) NULL,
	[S8TempNormalSC] [bit] NULL,
	[S8TempNormalSet] [decimal](18, 3) NULL,
	[S8TempNormalSetErr] [decimal](18, 3) NULL,
	[S8TempNormalSet2] [decimal](18, 3) NULL,
	[S8TempNormalSetErr2] [decimal](18, 3) NULL,
	[S8CounterSettingSC] [bit] NULL,
	[S8CounterSettingSet] [nvarchar](50) NULL,
	[S8CounterSettingSet2] [nvarchar](50) NULL,
	[S8SpeedSC] [bit] NULL,
	[S8SpeedSet] [decimal](18, 3) NULL,
	[S8SpeedErr] [decimal](18, 3) NULL,
	[S8SpeedSet2] [decimal](18, 3) NULL,
	[S8SpeedSetErr2] [decimal](18, 3) NULL,
	[S8NoOfCordsSC] [bit] NULL,
	[S8NoOfCordsSet] [decimal](18, 3) NULL,
	[S8NoOfCordsSet2] [decimal](18, 3) NULL,
	[S8SofnorSC] [bit] NULL,
	[S8SofnorSet] [nvarchar](50) NULL,
	[S8SofnorSet2] [nvarchar](50) NULL,
	[S8DrawNipSC] [bit] NULL,
	[S8DrawNipSet] [decimal](18, 3) NULL,
	[S8DrawNipSet2] [decimal](18, 3) NULL,
	[S8DippingNo1ConcentrationSC] [bit] NULL,
	[S8DippingNo1ConcentrationSet] [nvarchar](50) NULL,
	[S8DippingNo1ConcentrationSet2] [nvarchar](50) NULL,
	[S8DippingNo1NipFrontSC] [bit] NULL,
	[S8DippingNo1NipFrontSet] [nvarchar](50) NULL,
	[S8DippingNo1NipFrontSet2] [nvarchar](50) NULL,
	[S8DippingNo1NipBackSC] [bit] NULL,
	[S8DippingNo1NipBackSet] [nvarchar](50) NULL,
	[S8DippingNo1NipBackSet2] [nvarchar](50) NULL,
	[S8DippingNo1WPUstdSC] [bit] NULL,
	[S8DippingNo1WPUstdSet] [nvarchar](50) NULL,
	[S8DippingNo1WPUstdSet2] [nvarchar](50) NULL,
	[S8DippingNo2ConcentrationSC] [bit] NULL,
	[S8DippingNo2ConcentrationSet] [nvarchar](50) NULL,
	[S8DippingNo2ConcentrationSet2] [nvarchar](50) NULL,
	[S8DippingNo2NipFrontSC] [bit] NULL,
	[S8DippingNo2NipFrontSet] [nvarchar](50) NULL,
	[S8DippingNo2NipFrontSet2] [nvarchar](50) NULL,
	[S8DippingNo2NipBackSC] [bit] NULL,
	[S8DippingNo2NipBackSet] [nvarchar](50) NULL,
	[S8DippingNo2NipBackSet2] [nvarchar](50) NULL,
	[S8DippingNo2WPUstdSC] [bit] NULL,
	[S8DippingNo2WPUstdSet] [nvarchar](50) NULL,
	[S8DippingNo2WPUstdSet2] [nvarchar](50) NULL,
	[S9WinderAyameDaialSC] [bit] NULL,
	[S9WinderAyameDaialSet] [decimal](18, 6) NULL,
	[S9WinderAyameDaialSet2] [decimal](18, 6) NULL,
	[S9WinderMpaSC] [bit] NULL,
	[S9WinderMpaSet] [decimal](18, 3) NULL,
	[S9WinderMpaSet2] [decimal](18, 3) NULL,
	[S9WinderSpringSC] [bit] NULL,
	[S9WinderSpringSet] [decimal](18, 3) NULL,
	[S9WinderSpringSet2] [decimal](18, 3) NULL,
	[S9WinderPeperTubeColorSC] [bit] NULL,
	[S9WinderPeperTubeColorSet] [nvarchar](50) NULL,
	[S9WinderPeperTubeColorSet2] [nvarchar](50) NULL,
	[S9WinderCheeseWeightSC] [bit] NULL,
	[S9WinderCheeseWeightSet] [nvarchar](50) NULL,
	[S9WinderCheeseWeightSet2] [nvarchar](50) NULL,
	[S9ExhaustFanOven1CirculatingFanSC] [bit] NULL,
	[S9ExhaustFanOven1CirculatingFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1CirculatingFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2CirculatingFanSC] [bit] NULL,
	[S9ExhaustFanOven2CirculatingFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2CirculatingFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1ExhaustFanSC] [bit] NULL,
	[S9ExhaustFanOven1ExhaustFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1ExhaustFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2ExhaustFanSC] [bit] NULL,
	[S9ExhaustFanOven2ExhaustFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2ExhaustFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenFrontExhaustFanSC] [bit] NULL,
	[S9ExhaustFanOvenFrontExhaustFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenFrontExhaustFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenBackExhaustFanSC] [bit] NULL,
	[S9ExhaustFanOvenBackExhaustFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenBackExhaustFanSet2] [decimal](18, 3) NULL,
	[S9SpongSC] [bit] NULL,
	[S9SpongSet] [nvarchar](50) NULL,
	[S9SpongSet2] [nvarchar](50) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPCondition]    Script Date: 23/10/2566 1:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIPCondition](
	[ProductCode] [nvarchar](30) NULL,
	[S7YarnCordStructureSC] [bit] NULL,
	[S7YarnCordStructureSet] [nvarchar](50) NULL,
	[S7YarnCordStructureActual] [nvarchar](50) NULL,
	[S7YarnCordStructureSet2] [nvarchar](50) NULL,
	[S7YarnCordStructureActual2] [nvarchar](50) NULL,
	[S7YarnYarnTypeSC] [bit] NULL,
	[S7YarnYarnTypeSet] [nvarchar](50) NULL,
	[S7YarnYarnTypeActual] [nvarchar](50) NULL,
	[S7YarnYarnTypeSet2] [nvarchar](50) NULL,
	[S7YarnYarnTypeActual2] [nvarchar](50) NULL,
	[S7Yarn1stTwistSC] [bit] NULL,
	[S7Yarn1stTwistSet] [nvarchar](50) NULL,
	[S7Yarn1stTwistActual] [decimal](18, 3) NULL,
	[S7Yarn1stTwistSet2] [nvarchar](50) NULL,
	[S7Yarn1stTwistActual2] [decimal](18, 3) NULL,
	[S7Yarn2ndTwistSC] [bit] NULL,
	[S7Yarn2ndTwistSet] [nvarchar](50) NULL,
	[S7Yarn2ndTwistActual] [decimal](18, 3) NULL,
	[S7Yarn2ndTwistSet2] [nvarchar](50) NULL,
	[S7Yarn2ndTwistActual2] [decimal](18, 3) NULL,
	[S7YarnLabelOfYarnSC] [bit] NULL,
	[S7YarnLabelOfYarnSet] [nvarchar](50) NULL,
	[S7YarnLabelOfYarnActual] [nvarchar](50) NULL,
	[S7YarnLabelOfYarnSet2] [nvarchar](50) NULL,
	[S7YarnLabelOfYarnActual2] [nvarchar](50) NULL,
	[S7YarnWeightSC] [bit] NULL,
	[S7YarnWeightSet] [decimal](18, 3) NULL,
	[S7YarnWeightSetErr] [decimal](18, 3) NULL,
	[S7YarnWeightActual] [decimal](18, 3) NULL,
	[S7YarnWeightSet2] [decimal](18, 3) NULL,
	[S7YarnWeightSetErr2] [decimal](18, 3) NULL,
	[S7YarnWeightActual2] [decimal](18, 3) NULL,
	[S7CreelSettingUseTensorSC] [bit] NULL,
	[S7CreelSettingUseTensorSet] [nvarchar](50) NULL,
	[S7CreelSettingUseTensorActual] [nvarchar](50) NULL,
	[S7CreelSettingUseTensorSet2] [nvarchar](50) NULL,
	[S7CreelSettingUseTensorActual2] [nvarchar](50) NULL,
	[S7CreelSettingKnotConditionSC] [bit] NULL,
	[S7CreelSettingKnotConditionSet] [decimal](18, 3) NULL,
	[S7CreelSettingKnotConditionActual] [decimal](18, 3) NULL,
	[S7CreelSettingKnotConditionSet2] [decimal](18, 3) NULL,
	[S7CreelSettingKnotConditionActual2] [decimal](18, 3) NULL,
	[S7CreelSettingSlubCatsweSC] [bit] NULL,
	[S7CreelSettingSlubCatsweSet] [decimal](18, 3) NULL,
	[S7CreelSettingSlubCatsweActual] [decimal](18, 3) NULL,
	[S7CreelSettingSlubCatsweSet2] [decimal](18, 3) NULL,
	[S7CreelSettingSlubCatsweActual2] [decimal](18, 3) NULL,
	[S8StretchDryerSC] [bit] NULL,
	[S8StretchDryerSet] [decimal](18, 3) NULL,
	[S8StretchDryerSetErr] [decimal](18, 3) NULL,
	[S8StretchDryerActual] [decimal](18, 3) NULL,
	[S8StretchDryerSet2] [decimal](18, 3) NULL,
	[S8StretchDryerSetErr2] [decimal](18, 3) NULL,
	[S8StretchDryerActual2] [decimal](18, 3) NULL,
	[S8StretchStretchHotSC] [bit] NULL,
	[S8StretchStretchHotSet] [decimal](18, 3) NULL,
	[S8StretchStretchHotSetErr] [decimal](18, 3) NULL,
	[S8StretchHotActual] [decimal](18, 3) NULL,
	[S8StretchHotSet2] [decimal](18, 3) NULL,
	[S8StretchHotSetErr2] [decimal](18, 3) NULL,
	[S8StretchHotActual2] [decimal](18, 3) NULL,
	[S8StretchNormalSC] [bit] NULL,
	[S8StretchNormalSet] [decimal](18, 3) NULL,
	[S8StretchNormalSetErr] [decimal](18, 3) NULL,
	[S8StretchNormalActual] [decimal](18, 3) NULL,
	[S8StretchNormalSet2] [decimal](18, 3) NULL,
	[S8StretchNormalSetErr2] [decimal](18, 3) NULL,
	[S8StretchNormalActual2] [decimal](18, 3) NULL,
	[S8StretchTotalSC] [bit] NULL,
	[S8StretchTotalSet] [decimal](18, 3) NULL,
	[S8StretchTotalSetErr] [decimal](18, 3) NULL,
	[S8StretchTotalActual] [decimal](18, 3) NULL,
	[S8StretchTotalSet2] [decimal](18, 3) NULL,
	[S8StretchTotalSetErr2] [decimal](18, 3) NULL,
	[S8StretchTotalActual2] [decimal](18, 3) NULL,
	[S8TempDryerSC] [bit] NULL,
	[S8TempDryerSet] [decimal](18, 3) NULL,
	[S8TempDryerSetErr] [decimal](18, 3) NULL,
	[S8TempDryerActual] [decimal](18, 3) NULL,
	[S8TempDryerSet2] [decimal](18, 3) NULL,
	[S8TempDryerSetErr2] [decimal](18, 3) NULL,
	[S8TempDryerActual2] [decimal](18, 3) NULL,
	[S8TempHotSC] [bit] NULL,
	[S8TempHotSet] [decimal](18, 3) NULL,
	[S8TempHotSetErr] [decimal](18, 3) NULL,
	[S8TempHotActual] [decimal](18, 3) NULL,
	[S8TempHotSet2] [decimal](18, 3) NULL,
	[S8TempHotSetErr2] [decimal](18, 3) NULL,
	[S8TempHotActual2] [decimal](18, 3) NULL,
	[S8TempNormalSC] [bit] NULL,
	[S8TempNormalSet] [decimal](18, 3) NULL,
	[S8TempNormalSetErr] [decimal](18, 3) NULL,
	[S8TempNormalActual] [decimal](18, 3) NULL,
	[S8TempNormalSet2] [decimal](18, 3) NULL,
	[S8TempNormalSetErr2] [decimal](18, 3) NULL,
	[S8TempNormalActual2] [decimal](18, 3) NULL,
	[S8CounterSettingSC] [bit] NULL,
	[S8CounterSettingSet] [nvarchar](50) NULL,
	[S8CounterSettingActual] [decimal](18, 3) NULL,
	[S8CounterSettingSet2] [nvarchar](50) NULL,
	[S8CounterSettingActual2] [decimal](18, 3) NULL,
	[S8SpeedSC] [bit] NULL,
	[S8SpeedSet] [decimal](18, 3) NULL,
	[S8SpeedErr] [decimal](18, 3) NULL,
	[S8SpeedActual] [decimal](18, 3) NULL,
	[S8SpeedSet2] [decimal](18, 3) NULL,
	[S8SpeedSetErr2] [decimal](18, 3) NULL,
	[S8SpeedActual2] [decimal](18, 3) NULL,
	[S8NoOfCordsSC] [bit] NULL,
	[S8NoOfCordsSet] [decimal](18, 3) NULL,
	[S8NoOfCordsActual] [decimal](18, 3) NULL,
	[S8NoOfCordsSet2] [decimal](18, 3) NULL,
	[S8NoOfCordsActual2] [decimal](18, 3) NULL,
	[S8SofnorSC] [bit] NULL,
	[S8SofnorSet] [nvarchar](50) NULL,
	[S8SofnorActual] [nvarchar](50) NULL,
	[S8SofnorSet2] [nvarchar](50) NULL,
	[S8SofnorActual2] [nvarchar](50) NULL,
	[S8DrawNipSC] [bit] NULL,
	[S8DrawNipSet] [decimal](18, 3) NULL,
	[S8DrawNipActual] [decimal](18, 3) NULL,
	[S8DrawNipSet2] [decimal](18, 3) NULL,
	[S8DrawNipActual2] [decimal](18, 3) NULL,
	[S8DippingNo1ConcentrationSC] [bit] NULL,
	[S8DippingNo1ConcentrationSet] [nvarchar](50) NULL,
	[S8DippingNo1ConcentrationActual] [nvarchar](50) NULL,
	[S8DippingNo1ConcentrationSet2] [nvarchar](50) NULL,
	[S8DippingNo1ConcentrationActual2] [nvarchar](50) NULL,
	[S8DippingNo1NipFrontSC] [bit] NULL,
	[S8DippingNo1NipFrontSet] [nvarchar](50) NULL,
	[S8DippingNo1NipFrontActual] [decimal](18, 3) NULL,
	[S8DippingNo1NipFrontSet2] [nvarchar](50) NULL,
	[S8DippingNo1NipFrontActual2] [decimal](18, 3) NULL,
	[S8DippingNo1NipBackSC] [bit] NULL,
	[S8DippingNo1NipBackSet] [nvarchar](50) NULL,
	[S8DippingNo1NipBackActual] [decimal](18, 3) NULL,
	[S8DippingNo1NipBackSet2] [nvarchar](50) NULL,
	[S8DippingNo1NipBackActual2] [decimal](18, 3) NULL,
	[S8DippingNo1WPUstdSC] [bit] NULL,
	[S8DippingNo1WPUstdSet] [nvarchar](50) NULL,
	[S8DippingNo1WPUstdActual] [decimal](18, 3) NULL,
	[S8DippingNo1WPUstdSet2] [nvarchar](50) NULL,
	[S8DippingNo1WPUstdActual2] [decimal](18, 3) NULL,
	[S8DippingNo2ConcentrationSC] [bit] NULL,
	[S8DippingNo2ConcentrationSet] [nvarchar](50) NULL,
	[S8DippingNo2ConcentrationActual] [nvarchar](50) NULL,
	[S8DippingNo2ConcentrationSet2] [nvarchar](50) NULL,
	[S8DippingNo2ConcentrationActual2] [nvarchar](50) NULL,
	[S8DippingNo2NipFrontSC] [bit] NULL,
	[S8DippingNo2NipFrontSet] [nvarchar](50) NULL,
	[S8DippingNo2NipFrontActual] [decimal](18, 3) NULL,
	[S8DippingNo2NipFrontSet2] [nvarchar](50) NULL,
	[S8DippingNo2NipFrontActual2] [decimal](18, 3) NULL,
	[S8DippingNo2NipBackSC] [bit] NULL,
	[S8DippingNo2NipBackSet] [nvarchar](50) NULL,
	[S8DippingNo2NipBackActual] [decimal](18, 3) NULL,
	[S8DippingNo2NipBackSet2] [nvarchar](50) NULL,
	[S8DippingNo2NipBackActual2] [decimal](18, 3) NULL,
	[S8DippingNo2WPUstdSC] [bit] NULL,
	[S8DippingNo2WPUstdSet] [nvarchar](50) NULL,
	[S8DippingNo2WPUstdActual] [decimal](18, 3) NULL,
	[S8DippingNo2WPUstdSet2] [nvarchar](50) NULL,
	[S8DippingNo2WPUstdActual2] [decimal](18, 3) NULL,
	[S9WinderAyameDaialSC] [bit] NULL,
	[S9WinderAyameDaialSet] [decimal](18, 6) NULL,
	[S9WinderAyameDaialActual] [decimal](18, 6) NULL,
	[S9WinderAyameDaialSet2] [decimal](18, 6) NULL,
	[S9WinderAyameDaialActual2] [decimal](18, 6) NULL,
	[S9WinderMpaSC] [bit] NULL,
	[S9WinderMpaSet] [decimal](18, 3) NULL,
	[S9WinderMpaActual] [decimal](18, 3) NULL,
	[S9WinderMpaSet2] [decimal](18, 3) NULL,
	[S9WinderMpaActual2] [decimal](18, 3) NULL,
	[S9WinderSpringSC] [bit] NULL,
	[S9WinderSpringSet] [decimal](18, 3) NULL,
	[S9WinderSpringActual] [decimal](18, 3) NULL,
	[S9WinderSpringSet2] [decimal](18, 3) NULL,
	[S9WinderSpringActual2] [decimal](18, 3) NULL,
	[S9WinderPeperTubeColorSC] [bit] NULL,
	[S9WinderPeperTubeColorSet] [nvarchar](50) NULL,
	[S9WinderPeperTubeColorActual] [nvarchar](50) NULL,
	[S9WinderPeperTubeColorSet2] [nvarchar](50) NULL,
	[S9WinderPeperTubeColorActual2] [nvarchar](50) NULL,
	[S9WinderCheeseWeightSC] [bit] NULL,
	[S9WinderCheeseWeightSet] [nvarchar](50) NULL,
	[S9WinderCheeseWeightActual] [decimal](18, 3) NULL,
	[S9WinderCheeseWeightSet2] [nvarchar](50) NULL,
	[S9WinderCheeseWeightActual2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1CirculatingFanSC] [bit] NULL,
	[S9ExhaustFanOven1CirculatingFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1CirculatingFanActual] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1CirculatingFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1CirculatingFanActual2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2CirculatingFanSC] [bit] NULL,
	[S9ExhaustFanOven2CirculatingFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2CirculatingFanActual] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2CirculatingFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2CirculatingFanActual2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1ExhaustFanSC] [bit] NULL,
	[S9ExhaustFanOven1ExhaustFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1ExhaustFanActual] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1ExhaustFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven1ExhaustFanActual2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2ExhaustFanSC] [bit] NULL,
	[S9ExhaustFanOven2ExhaustFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2ExhaustFanActual] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2ExhaustFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOven2ExhaustFanActual2] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenFrontExhaustFanSC] [bit] NULL,
	[S9ExhaustFanOvenFrontExhaustFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenFrontExhaustFanActual] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenFrontExhaustFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenFrontExhaustFanActual2] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenBackExhaustFanSC] [bit] NULL,
	[S9ExhaustFanOvenBackExhaustFanSet] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenBackExhaustFanActual] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenBackExhaustFanSet2] [decimal](18, 3) NULL,
	[S9ExhaustFanOvenBackExhaustFanActual2] [decimal](18, 3) NULL,
	[S9SpongSC] [bit] NULL,
	[S9SpongSet] [nvarchar](50) NULL,
	[S9SpongActual] [nvarchar](50) NULL,
	[S9SpongSet2] [nvarchar](50) NULL,
	[S9SpongActual2] [nvarchar](50) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPProductionCondition]    Script Date: 20/10/2566 2:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIPProductionCondition](
	[ProductCode] [nvarchar](30) NULL,
	[S7CordStructure] [nvarchar](50) NULL,
	[S7YarnType] [nvarchar](50) NULL,
	[S71stTwist] [nvarchar](50) NULL,
	[S72ndTwist] [nvarchar](50) NULL,
	[S7ShapeOfYarn] [nvarchar](50) NULL,
	[S7Weight] [decimal](18, 3) NULL,
	[S7ProcessSettingTension] [nvarchar](50) NULL,
	[S7UseTensor] [nvarchar](50) NULL,
	[S7KnotCondition] [nvarchar](50) NULL,
	[S7SuperNylonKnot] [nvarchar](50) NULL,
	[S8DryeStretchSC] [bit] NULL,
	[S8DryeStretch] [decimal](18, 3) NULL,
	[S8DryeStretchErr] [decimal](18, 3) NULL,
	[S8DryeTempSC] [bit] NULL,
	[S8DryeTemp] [decimal](18, 3) NULL,
	[S8DryeTempErr] [decimal](18, 3) NULL,
	[S8DryePass] [decimal](18, 3) NULL,
	[S8DryeTension] [nvarchar](50) NULL,
	[S8HotStretchSC] [bit] NULL,
	[S8HotStretch] [decimal](18, 3) NULL,
	[S8HotStretchErr] [decimal](18, 3) NULL,
	[S8HotTempSC] [bit] NULL,
	[S8HotTemp] [decimal](18, 3) NULL,
	[S8HotTempErr] [decimal](18, 3) NULL,
	[S8HotPass] [decimal](18, 3) NULL,
	[S8HotTension] [nvarchar](50) NULL,
	[S8NormalStretchSC] [bit] NULL,
	[S8NormalStretch] [decimal](18, 3) NULL,
	[S8NormalStretchErr] [decimal](18, 3) NULL,
	[S8NormalTempSC] [bit] NULL,
	[S8NormalTemp] [decimal](18, 3) NULL,
	[S8NormalTempErr] [decimal](18, 3) NULL,
	[S8NormalPass] [decimal](18, 3) NULL,
	[S8NormalTension] [nvarchar](50) NULL,
	[S8TotalStretchSC] [bit] NULL,
	[S8TotalStretch] [decimal](18, 3) NULL,
	[S8TotalStretchErr] [decimal](18, 3) NULL,
	[S8TotalTempSC] [bit] NULL,
	[S8TotalTemp] [decimal](18, 3) NULL,
	[S8TotalTempErr] [decimal](18, 3) NULL,
	[S8TotalPass] [decimal](18, 3) NULL,
	[S8TotalTension] [nvarchar](50) NULL,
	[S8SpeedSC] [bit] NULL,
	[S8Speed] [decimal](18, 3) NULL,
	[S8SpeedErr] [decimal](18, 3) NULL,
	[S8NoOfCordsOfProcessing] [decimal](18, 3) NULL,
	[S8NoOfCordsOfProcessingErr] [decimal](18, 3) NULL,
	[S8Sofnor] [nvarchar](50) NULL,
	[S8DrawNip] [nvarchar](50) NULL,
	[S8Concentration] [nvarchar](50) NULL,
	[S8NipRollerPressureNo1Front] [decimal](18, 3) NULL,
	[S8NipRollerPressureNo1FrontErr] [decimal](18, 3) NULL,
	[S8NipRollerPressureNo2Front] [decimal](18, 3) NULL,
	[S8NipRollerPressureNo2FrontErr] [decimal](18, 3) NULL,
	[S8NipRollerPressureNo1Back] [decimal](18, 3) NULL,
	[S8NipRollerPressureNo1BackErr] [decimal](18, 3) NULL,
	[S8NipRollerPressureNo2Back] [decimal](18, 3) NULL,
	[S8NipRollerPressureNo2BackErr] [decimal](18, 3) NULL,
	[S8WPUStandardNo1] [decimal](18, 3) NULL,
	[S8WPUStandardNo1Err] [decimal](18, 3) NULL,
	[S8WPUStandardNo2] [decimal](18, 3) NULL,
	[S8WPUStandardNo2Err] [decimal](18, 3) NULL,
	[S9ContactPressureUp] [bit] NULL,
	[S9ContactPressureDown] [bit] NULL,
	[S9ContactPressure] [nvarchar](50) NULL,
	[S9BaseWindGear] [decimal](18, 3) NULL,
	[S9TraverseGuideSizeLrage] [bit] NULL,
	[S9TraverseGuideSizeSmall] [bit] NULL,
	[S9TraverseGuideSize] [nvarchar](50) NULL,
	[S9WindVoltageSet] [decimal](18, 3) NULL,
	[S9WindVoltageSetErr] [decimal](18, 3) NULL,
	[S9AyameDaial] [decimal](18, 6) NULL,
	[S9AyameDaialErr] [decimal](18, 6) NULL,
	[S9TensionSpringLrage] [bit] NULL,
	[S9TensionSpringSmall] [bit] NULL,
	[S9TensionSpring] [nvarchar](50) NULL,
	[S9TensionWind] [nvarchar](50) NULL,
	[S9PackingStandard] [decimal](18, 3) NULL,
	[S9PackingStandardErr] [decimal](18, 3) NULL,
	[S9TubeColor] [nvarchar](50) NULL,
	[S9Tail] [nvarchar](50) NULL,
	[S9CounterSetting] [decimal](18, 3) NULL,
	[S9CounterSettingErr] [decimal](18, 3) NULL,
	[S9CheeseWeight] [decimal](18, 3) NULL,
	[S9CheeseWeightErr] [decimal](18, 3) NULL,
	[S9HowToStartProductionEng] [nvarchar](100) NULL,
	[S9HowToStartProductionTh] [nvarchar](100) NULL,
	[S9Rewind] [nvarchar](100) NULL,
	[S9Package] [nvarchar](100) NULL,
	[S9Sampling] [nvarchar](100) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPTimeTableStd]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIPTimeTableStd](
	[ProductCode] [nvarchar](30) NULL,
	[S7Bobbin] [bit] NULL,
	[S8CoolingWaterSystemBath1SC] [bit] NULL,
	[S8CoolingWaterSystemBath1] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Err] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2SC] [bit] NULL,
	[S8CoolingWaterSystemBath2] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Err] [decimal](18, 3) NULL,
	[S8ChemicalWork] [nvarchar](30) NULL,
	[S8ChemicalFilter] [nvarchar](30) NULL,
	[S8SpeedSC] [bit] NULL,
	[S8Speed] [decimal](18, 3) NULL,
	[S8SpeedErr] [decimal](18, 3) NULL,
	[S8StretchDSC] [bit] NULL,
	[S8StretchD] [decimal](18, 3) NULL,
	[S8StretchDErr] [decimal](18, 3) NULL,
	[S8StretchHSC] [bit] NULL,
	[S8StretchH] [decimal](18, 3) NULL,
	[S8StretchHErr] [decimal](18, 3) NULL,
	[S8StretchNSC] [bit] NULL,
	[S8StretchN] [decimal](18, 3) NULL,
	[S8StretchNErr] [decimal](18, 3) NULL,
	[S8TempDSC] [bit] NULL,
	[S8TempD] [decimal](18, 3) NULL,
	[S8TempDErr] [decimal](18, 3) NULL,
	[S8TempHNSC] [bit] NULL,
	[S8TempHN] [decimal](18, 3) NULL,
	[S8TempHNErr] [decimal](18, 3) NULL,
	[S9GlideStatus] [bit] NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPTimeTable]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIPTimeTable](
	[ProductCode] [nvarchar](30) NULL,
	[PeriodTime] [nvarchar](30) NULL,
	[S7Bobbin] [bit] NULL,
	[S8CoolingWaterSystemBath1] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2] [decimal](18, 3) NULL,
	[S8ChemicalWork] [nvarchar](30) NULL,
	[S8ChemicalFilter] [nvarchar](30) NULL,
	[S8Speed] [decimal](18, 3) NULL,
	[S8StretchD] [decimal](18, 3) NULL,
	[S8StretchH] [decimal](18, 3) NULL,
	[S8StretchN] [decimal](18, 3) NULL,
	[S8TempD] [decimal](18, 3) NULL,
	[S8TempHN] [decimal](18, 3) NULL,
	[S9GlideStatus] [bit] NULL,
	[Remark] [nvarchar](50) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[S8BeforeConditionStd]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S8BeforeConditionStd](
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](50) NULL,
	[SolutionNameBath1] [nvarchar](50) NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
	[TempJacketDrumBath1SC] [bit] NULL,
	[TempJacketDrumBath1] [decimal](18, 3) NULL,
	[TempJacketDrumBath1Err] [decimal](18, 3) NULL,
	[TempJacketDrumBath2SC] [bit] NULL,
	[TempJacketDrumBath2] [decimal](18, 3) NULL,
	[TempJacketDrumBath2Err] [decimal](18, 3) NULL,
	[TempChemicalBath1SC] [bit] NULL,
	[TempChemicalBath1] [decimal](18, 3) NULL,
	[TempChemicalBath1Err] [decimal](18, 3) NULL,
	[TempChemicalBath2SC] [bit] NULL,
	[TempChemicalBath2] [decimal](18, 3) NULL,
	[TempChemicalBath2Err] [decimal](18, 3) NULL,
	[StretchDSC] [bit] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchDErr] [decimal](18, 3) NULL,
	[StretchHSC] [bit] NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchHErr] [decimal](18, 3) NULL,
	[StretchNSC] [bit] NULL,
	[StretchN] [decimal](18, 3) NULL,
	[StretchNErr] [decimal](18, 3) NULL,
	[TempDSC] [bit] NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempDErr] [decimal](18, 3) NULL,
	[TempHNSC] [bit] NULL,
	[TempHN] [decimal](18, 3) NULL,
	[TempHNErr] [decimal](18, 3) NULL,
	[SpeedSC] [bit] NULL,
	[Speed] [decimal](18, 3) NULL,
	[SpeedErr] [decimal](18, 3) NULL,
	[ExhaustFanDryerSC] [bit] NULL,
	[ExhaustFanDryer] [decimal](18, 3) NULL,
	[ExhaustFanHNSC] [bit] NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
	[CleanBath1] [bit] NULL,
	[CleanBath2] [bit] NULL,
	[CleanFront] [bit] NULL,
	[Cambox] [bit] NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[S8BeforeConditionCF]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S8BeforeConditionCF](
	[S8ConditionId] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[SolutionNameBath1] [nvarchar](50) NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
	[TempJacketDrumBath1SC] [bit] NULL,
	[TempJacketDrumBath1] [decimal](18, 3) NULL,
	[TempJacketDrumBath2SC] [bit] NULL,
	[TempJacketDrumBath2] [decimal](18, 3) NULL,
	[TempChemicalBath1SC] [bit] NULL,
	[TempChemicalBath1] [decimal](18, 3) NULL,
	[TempChemicalBath2SC] [bit] NULL,
	[TempChemicalBath2] [decimal](18, 3) NULL,
	[StretchDSC] [bit] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchHSC] [bit] NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchNSC] [bit] NULL,
	[StretchN] [decimal](18, 3) NULL,
	[TempDSC] [bit] NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempHNSC] [bit] NULL,
	[TempHN] [decimal](18, 3) NULL,
	[SpeedSC] [bit] NULL,
	[Speed] [decimal](18, 3) NULL,
	[ExhaustFanDryerSC] [bit] NULL,
	[ExhaustFanDryer] [decimal](18, 3) NULL,
	[ExhaustFanHNSC] [bit] NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
	[CleanBath1] [bit] NULL,
	[CleanBath2] [bit] NULL,
	[CleanFront] [bit] NULL,
	[Cambox] [bit] NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[S8BeforeConditionItem]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S8BeforeConditionItem](
	[S8ConditionId] [int] NULL,
	[Seq] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](50) NULL,
	[SolutionNameBath1] [nvarchar](50) NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
	[TempJacketDrumBath1] [decimal](18, 3) NULL,
	[TempJacketDrumBath2] [decimal](18, 3) NULL,
	[TempChemicalBath1] [decimal](18, 3) NULL,
	[TempChemicalBath2] [decimal](18, 3) NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchN] [decimal](18, 3) NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempHN] [decimal](18, 3) NULL,
	[Speed] [decimal](18, 3) NULL,
	[ExhaustFanDryer] [decimal](18, 3) NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
	[CleanBath1] [bit] NULL,
	[CleanBath2] [bit] NULL,
	[CleanFront] [bit] NULL,
	[Cambox] [bit] NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPMC]    Script Date: 10/24/2023 16:14:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPMC](
	[MCCode] [nvarchar](10) NOT NULL,
	[ProcessName] [nvarchar](30) NULL,
	[StartCore] [int] NULL,
	[EndCore] [int] NULL,
 CONSTRAINT [PK_DIPMC] PRIMARY KEY CLUSTERED 
(
	[MCCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPPCCard]    Script Date: 10/25/2023 15:06:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPPCCard](
	[DIPPCId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[DIPLotNo] [nvarchar](30) NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[FinishTime] [datetime] NULL,
	[FinishFlag] [bit] NULL,
	[DeleteFlag] [bit] NULL,
 CONSTRAINT [PK_DIPPCCard] PRIMARY KEY CLUSTERED 
(
	[DIPPCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DIPPCCard] ADD  CONSTRAINT [DF_DIPPCCard_FinishFlag]  DEFAULT ((0)) FOR [FinishFlag]
GO

ALTER TABLE [dbo].[DIPPCCard] ADD  CONSTRAINT [DF_DIPPCCard_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO




/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPMaterialCheckSheet]    Script Date: 10/24/2023 16:12:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPMaterialCheckSheet](
	[MaterialCheckId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[CheckDate] [datetime] NULL,
    [MCCode] [nvarchar](10) NULL,
	[DoffNo] [int] NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_DIPMaterialCheckSheet] PRIMARY KEY CLUSTERED 
(
	[MaterialCheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPMaterialCheckSheetItem]    Script Date: 10/24/2023 17:23:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPMaterialCheckSheetItem](
	[MaterialCheckId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[LotNo] [nvarchar](30) NULL,
	[CHNo] [int] NULL,
	[CheckYarnNo] [bit] NULL,
	[CheckYanScrap] [bit] NULL,
	[CheckYarnBall] [bit] NULL,
	[CheckCover] [bit] NULL,
	[CheckSensor] [bit] NULL,
	[CheckDustFilter] [bit] NULL,
 CONSTRAINT [PK_DIPMaterialCheckSheetItem] PRIMARY KEY CLUSTERED 
(
	[MaterialCheckId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[S7CreelCheckSheet]    Script Date: 10/26/2023 9:11:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S7CreelCheckSheet](
	[CreelId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[CheckDate] [datetime] NULL,
	[MCCode] [nvarchar](10) NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_S7CreelCheckSheet] PRIMARY KEY CLUSTERED 
(
	[CreelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[S7CreelCheckSheetItem]    Script Date: 10/26/2023 9:12:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S7CreelCheckSheetItem](
	[CreelId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[CheckUnstable] [bit] NULL,
	[CheckNotReachEnd] [bit] NULL,
	[CheckNotStraight] [bit] NULL,
	[CheckHasSound] [bit] NULL,
 CONSTRAINT [PK_S7CreelCheckItem_1] PRIMARY KEY CLUSTERED 
(
	[CreelId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[DIPChemicalReqisition]    Script Date: 10/26/2023 9:23:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPChemicalReqisition](
	[ReqId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[ReqDate] [datetime] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[DIPLotNo] [nvarchar](30) NULL,
	[SolutionName] [nvarchar](30) NULL,
	[TankNo] [nvarchar](30) NULL,
	[Quantity] [decimal](18, 3) NULL,
	[S8LotNo] [nvarchar](30) NULL,
	[UserName] [nvarchar](100) NULL,
	[Chief] [nvarchar](100) NULL,
 CONSTRAINT [PK_DIPChemicalReqisition] PRIMARY KEY CLUSTERED 
(
	[ReqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[S9CleanCheckSheet]    Script Date: 10/26/2023 9:36:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S9CleanCheckSheet](
	[CleanId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[CheckDate] [datetime] NULL,
	[MCCode] [nvarchar](10) NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_S9CleanCheckSheet] PRIMARY KEY CLUSTERED 
(
	[CleanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[S9CleanCheckSheetItem]    Script Date: 10/26/2023 9:43:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S9CleanCheckSheetItem](
	[CleanId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[CheckSplitter] [bit] NULL,
	[CheckRollerCeramic] [bit] NULL,
	[CheckSlidebar] [bit] NULL,
	[CheckRollerCambox] [bit] NULL,
	[CheckTopGuide] [bit] NULL,
	[CheckBottomGuide] [bit] NULL,
	[CheckRollerFrontS9] [bit] NULL,
 CONSTRAINT [PK_S9CleanCheckSheetItem] PRIMARY KEY CLUSTERED 
(
	[CleanId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[S9AppearanceCheckSheet]    Script Date: 10/26/2023 9:56:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S9AppearanceCheckSheet](
	[AppearId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[CheckDate] [datetime] NULL,
	[MCCode] [nvarchar](10) NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_S9AppearanceCheckSheet] PRIMARY KEY CLUSTERED 
(
	[AppearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  Table [dbo].[S9AppearanceCheckSheetItem]    Script Date: 10/26/2023 9:56:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S9AppearanceCheckSheetItem](
	[AppearId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[CheckGood] [bit] NULL,
	[CheckBad] [bit] NULL,
	[Check2Color] [bit] NULL,
	[CheckKeiba] [bit] NULL,
	[CheckWeight] [bit] NULL,
	[CheckFrontTwist] [bit] NULL,
	[CheckBackTwist] [bit] NULL,
	[CheckSnarl] [bit] NULL,
	[CheckTube] [bit] NULL,
 CONSTRAINT [PK_S9AppearanceCheckSheetItem] PRIMARY KEY CLUSTERED 
(
	[AppearId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  View [dbo].[PCCardView]    Script Date: 10/25/2023 14:35:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW DIPPCCardView
AS
    SELECT PC.DIPPCId
         , PC.CustomerId
         , CM.CustomerName
         , PC.ProductCode
         , PD.ProductName
         , PD.ItemYarn
         , PD.CordStructure
         , PD.TreatRoute
         , PD.TwistSpec
         , PC.DIPLotNo
         , PC.StartTime
         , PC.EndTime
         , PC.FinishTime
         , PC.FinishFlag
         , PC.DeleteFlag
      FROM DIPPCCard PC 
           LEFT OUTER JOIN Customer CM ON PC.CustomerId = CM.CustomerId
           LEFT OUTER JOIN Product PD ON LTRIM(RTRIM(PC.ProductCode)) = LTRIM(RTRIM(PD.ProductCode))

GO


/*********** Script Update Date: 2023-10-23  ***********/
USE [M3Cord]
GO
/****** Object:  StoredProcedure [dbo].[GetDIPMCs]    Script Date: 10/24/2023 16:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPMCs
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPMCs NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPMCs]
(
  @ProcessName nvarchar(30) = NULL
, @MCCode nvarchar(30) = NULL  
)
AS
BEGIN
    SELECT MCCode
         , ProcessName
         , StartCore
         , EndCore
      FROM DIPMC
     WHERE UPPER(LOWER(ProcessName)) = UPPER(LOWER(COALESCE(@ProcessName, ProcessName)))
       AND UPPER(LOWER(MCCode)) = UPPER(LOWER(COALESCE(@MCCode, MCCode)))
     ORDER BY ProcessName, MCCode;
END

GO


/*********** Script Update Date: 2023-10-23  ***********/
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPCondition]    Script Date: 23/10/2566 1:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetDIPConditions]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode
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
     FROM DIPCondition
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPConditionStd]    Script Date: 23/10/2566 1:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPConditionStd] (
    @ProductCode nvarchar (30) ,
	@S7YarnCordStructureSC bit  ,
	@S7YarnCordStructureSet nvarchar (50) ,
	@S7YarnCordStructureSet2 nvarchar (50) ,
	@S7YarnYarnTypeSC bit  ,
	@S7YarnYarnTypeSet nvarchar (50) ,
	@S7YarnYarnTypeSet2 nvarchar (50) ,
	@S7Yarn1stTwistSC bit  ,
	@S7Yarn1stTwistSet nvarchar (50) ,
	@S7Yarn1stTwistSet2 nvarchar (50) ,
	@S7Yarn2ndTwistSC bit  ,
	@S7Yarn2ndTwistSet nvarchar (50) ,
	@S7Yarn2ndTwistSet2 nvarchar (50) ,
	@S7YarnLabelOfYarnSC bit  ,
	@S7YarnLabelOfYarnSet nvarchar (50) ,
	@S7YarnLabelOfYarnSet2 nvarchar (50) ,
	@S7YarnWeightSC bit  ,
	@S7YarnWeightSet decimal (18, 3) ,
	@S7YarnWeightSetErr decimal (18, 3) ,
	@S7YarnWeightSet2 decimal (18, 3) ,
	@S7YarnWeightSetErr2 decimal (18, 3) ,
	@S7CreelSettingUseTensorSC bit  ,
	@S7CreelSettingUseTensorSet nvarchar (50) ,
	@S7CreelSettingUseTensorSet2 nvarchar (50) ,
	@S7CreelSettingKnotConditionSC bit  ,
	@S7CreelSettingKnotConditionSet decimal (18, 3) ,
	@S7CreelSettingKnotConditionSet2 decimal (18, 3) ,

	@S7CreelSettingSlubCatsweSC bit  ,
	@S7CreelSettingSlubCatsweSet decimal (18, 3) ,
	@S7CreelSettingSlubCatsweSet2 decimal (18, 3) ,

	@S8StretchDryerSC bit  ,
	@S8StretchDryerSet decimal (18, 3) ,
	@S8StretchDryerSetErr decimal (18, 3) ,
	@S8StretchDryerSet2 decimal (18, 3) ,
	@S8StretchDryerSetErr2 decimal (18, 3) ,
	@S8StretchStretchHotSC bit  ,
	@S8StretchStretchHotSet decimal (18, 3) ,
	@S8StretchStretchHotSetErr decimal (18, 3) ,
	@S8StretchHotSet2 decimal (18, 3) ,
	@S8StretchHotSetErr2 decimal (18, 3) ,
	@S8StretchNormalSC bit  ,
	@S8StretchNormalSet decimal (18, 3) ,
	@S8StretchNormalSetErr decimal (18, 3) ,
	@S8StretchNormalSet2 decimal (18, 3) ,
	@S8StretchNormalSetErr2 decimal (18, 3) ,
	@S8StretchTotalSC bit  ,
	@S8StretchTotalSet decimal (18, 3) ,
	@S8StretchTotalSetErr decimal (18, 3) ,
	@S8StretchTotalSet2 decimal (18, 3) ,
	@S8StretchTotalSetErr2 decimal (18, 3) ,
	@S8TempDryerSC bit  ,
	@S8TempDryerSet decimal (18, 3) ,
	@S8TempDryerSetErr decimal (18, 3) ,
	@S8TempDryerSet2 decimal (18, 3) ,
	@S8TempDryerSetErr2 decimal (18, 3) ,
	@S8TempHotSC bit  ,
	@S8TempHotSet decimal (18, 3) ,
	@S8TempHotSetErr decimal (18, 3) ,
	@S8TempHotSet2 decimal (18, 3) ,
	@S8TempHotSetErr2 decimal (18, 3) ,
	@S8TempNormalSC bit  ,
	@S8TempNormalSet decimal (18, 3) ,
	@S8TempNormalSetErr decimal (18, 3) ,
	@S8TempNormalSet2 decimal (18, 3) ,
	@S8TempNormalSetErr2 decimal (18, 3) ,
	@S8CounterSettingSC bit  ,
	@S8CounterSettingSet nvarchar (50) ,
	@S8CounterSettingSet2 nvarchar (50) ,
	@S8SpeedSC bit  ,
	@S8SpeedSet decimal (18, 3) ,
	@S8SpeedErr decimal (18, 3) ,
	@S8SpeedSet2 decimal (18, 3) ,
	@S8SpeedSetErr2 decimal (18, 3) ,
	@S8NoOfCordsSC bit  ,
	@S8NoOfCordsSet decimal (18, 3) ,
	@S8NoOfCordsSet2 decimal (18, 3) ,
	@S8SofnorSC bit  ,
	@S8SofnorSet nvarchar (50) ,
	@S8SofnorSet2 nvarchar (50) ,
	@S8DrawNipSC bit  ,
	@S8DrawNipSet decimal (18, 3) ,
	@S8DrawNipSet2 decimal (18, 3) ,
	@S8DippingNo1ConcentrationSC bit  ,
	@S8DippingNo1ConcentrationSet nvarchar (50) ,
	@S8DippingNo1ConcentrationSet2 nvarchar (50) ,
	@S8DippingNo1NipFrontSC bit  ,
	@S8DippingNo1NipFrontSet nvarchar (50) ,
	@S8DippingNo1NipFrontSet2 nvarchar (50) ,
	@S8DippingNo1NipBackSC bit  ,
	@S8DippingNo1NipBackSet nvarchar (50) ,
	@S8DippingNo1NipBackSet2 nvarchar (50) ,

	@S8DippingNo1WPUstdSC bit ,
	@S8DippingNo1WPUstdSet nvarchar (50) ,
	@S8DippingNo1WPUstdSet2 nvarchar (50) ,

	@S8DippingNo2ConcentrationSC bit  ,
	@S8DippingNo2ConcentrationSet nvarchar (50) ,
	@S8DippingNo2ConcentrationSet2 nvarchar (50) ,
	@S8DippingNo2NipFrontSC bit  ,
	@S8DippingNo2NipFrontSet nvarchar (50) ,
	@S8DippingNo2NipFrontSet2 nvarchar (50) ,
	@S8DippingNo2NipBackSC bit  ,
	@S8DippingNo2NipBackSet nvarchar (50) ,
	@S8DippingNo2NipBackSet2 nvarchar (50) ,

	@S8DippingNo2WPUstdSC bit ,
	@S8DippingNo2WPUstdSet nvarchar (50) ,
	@S8DippingNo2WPUstdSet2 nvarchar (50) ,

	@S9WinderAyameDaialSC bit  ,
	@S9WinderAyameDaialSet decimal (18, 6) ,
	@S9WinderAyameDaialSet2 decimal (18, 6) ,
	@S9WinderMpaSC bit  ,
	@S9WinderMpaSet decimal (18, 3) ,
	@S9WinderMpaSet2 decimal (18, 3) ,
	@S9WinderSpringSC bit  ,
	@S9WinderSpringSet decimal (18, 3) ,
	@S9WinderSpringSet2 decimal (18, 3) ,
	@S9WinderPeperTubeColorSC bit  ,
	@S9WinderPeperTubeColorSet nvarchar (50) ,
	@S9WinderPeperTubeColorSet2 nvarchar (50) ,
	@S9WinderCheeseWeightSC bit  ,
	@S9WinderCheeseWeightSet nvarchar (50) ,
	@S9WinderCheeseWeightSet2 nvarchar (50) ,
	@S9ExhaustFanOven1CirculatingFanSC bit  ,
	@S9ExhaustFanOven1CirculatingFanSet decimal (18, 3) ,
	@S9ExhaustFanOven1CirculatingFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOven2CirculatingFanSC bit  ,
	@S9ExhaustFanOven2CirculatingFanSet decimal (18, 3) ,
	@S9ExhaustFanOven2CirculatingFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOven1ExhaustFanSC bit  ,
	@S9ExhaustFanOven1ExhaustFanSet decimal (18, 3) ,
	@S9ExhaustFanOven1ExhaustFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOven2ExhaustFanSC bit  ,
	@S9ExhaustFanOven2ExhaustFanSet decimal (18, 3) ,
	@S9ExhaustFanOven2ExhaustFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOvenFrontExhaustFanSC bit  ,
	@S9ExhaustFanOvenFrontExhaustFanSet decimal (18, 3) ,
	@S9ExhaustFanOvenFrontExhaustFanSet2 decimal (18, 3) ,
	@S9ExhaustFanOvenBackExhaustFanSC bit  ,
	@S9ExhaustFanOvenBackExhaustFanSet decimal (18, 3) ,
	@S9ExhaustFanOvenBackExhaustFanSet2 decimal (18, 3) ,
	@S9SpongSC bit  ,
	@S9SpongSet nvarchar (50) ,
	@S9SpongSet2 nvarchar (50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE DIPConditionStd 
               SET  S7YarnCordStructureSC = @S7YarnCordStructureSC ,
				S7YarnCordStructureSet = @S7YarnCordStructureSet ,
				S7YarnCordStructureSet2 = @S7YarnCordStructureSet2 ,
				S7YarnYarnTypeSC = @S7YarnYarnTypeSC ,
				S7YarnYarnTypeSet = @S7YarnYarnTypeSet ,
				S7YarnYarnTypeSet2 = @S7YarnYarnTypeSet2 ,
				S7Yarn1stTwistSC = @S7Yarn1stTwistSC ,
				S7Yarn1stTwistSet = @S7Yarn1stTwistSet ,
				S7Yarn1stTwistSet2 = @S7Yarn1stTwistSet2 ,
				S7Yarn2ndTwistSC = @S7Yarn2ndTwistSC ,
				S7Yarn2ndTwistSet = @S7Yarn2ndTwistSet ,
				S7Yarn2ndTwistSet2 = @S7Yarn2ndTwistSet2 ,
				S7YarnLabelOfYarnSC = @S7YarnLabelOfYarnSC ,
				S7YarnLabelOfYarnSet = @S7YarnLabelOfYarnSet ,
				S7YarnLabelOfYarnSet2 = @S7YarnLabelOfYarnSet2 ,
				S7YarnWeightSC = @S7YarnWeightSC ,
				S7YarnWeightSet = @S7YarnWeightSet ,
				S7YarnWeightSetErr = @S7YarnWeightSetErr ,
				S7YarnWeightSet2 = @S7YarnWeightSet2 ,
				S7YarnWeightSetErr2 = @S7YarnWeightSetErr2 ,
				S7CreelSettingUseTensorSC = @S7CreelSettingUseTensorSC ,
				S7CreelSettingUseTensorSet = @S7CreelSettingUseTensorSet ,
				S7CreelSettingUseTensorSet2 = @S7CreelSettingUseTensorSet2 ,
				S7CreelSettingKnotConditionSC = @S7CreelSettingKnotConditionSC ,
				S7CreelSettingKnotConditionSet = @S7CreelSettingKnotConditionSet ,
				S7CreelSettingKnotConditionSet2 = @S7CreelSettingKnotConditionSet2 ,

				S7CreelSettingSlubCatsweSC = @S7CreelSettingSlubCatsweSC ,
				S7CreelSettingSlubCatsweSet = @S7CreelSettingSlubCatsweSet ,
				S7CreelSettingSlubCatsweSet2 = @S7CreelSettingSlubCatsweSet2 ,

				S8StretchDryerSC = @S8StretchDryerSC ,
				S8StretchDryerSet = @S8StretchDryerSet ,
				S8StretchDryerSetErr = @S8StretchDryerSetErr ,
				S8StretchDryerSet2 = @S8StretchDryerSet2 ,
				S8StretchDryerSetErr2 = @S8StretchDryerSetErr2 ,
				S8StretchStretchHotSC = @S8StretchStretchHotSC ,
				S8StretchStretchHotSet = @S8StretchStretchHotSet ,
				S8StretchStretchHotSetErr = @S8StretchStretchHotSetErr ,
				S8StretchHotSet2 = @S8StretchHotSet2 ,
				S8StretchHotSetErr2 = @S8StretchHotSetErr2 ,
				S8StretchNormalSC = @S8StretchNormalSC ,
				S8StretchNormalSet = @S8StretchNormalSet ,
				S8StretchNormalSetErr = @S8StretchNormalSetErr ,
				S8StretchNormalSet2 = @S8StretchNormalSet2 ,
				S8StretchNormalSetErr2 = @S8StretchNormalSetErr2 ,
				S8StretchTotalSC = @S8StretchTotalSC ,
				S8StretchTotalSet = @S8StretchTotalSet ,
				S8StretchTotalSetErr = @S8StretchTotalSetErr ,
				S8StretchTotalSet2 = @S8StretchTotalSet2 ,
				S8StretchTotalSetErr2 = @S8StretchTotalSetErr2 ,
				S8TempDryerSC = @S8TempDryerSC ,
				S8TempDryerSet = @S8TempDryerSet ,
				S8TempDryerSetErr = @S8TempDryerSetErr ,
				S8TempDryerSet2 = @S8TempDryerSet2 ,
				S8TempDryerSetErr2 = @S8TempDryerSetErr2 ,
				S8TempHotSC = @S8TempHotSC ,
				S8TempHotSet = @S8TempHotSet ,
				S8TempHotSetErr = @S8TempHotSetErr ,
				S8TempHotSet2 = @S8TempHotSet2 ,
				S8TempHotSetErr2 = @S8TempHotSetErr2 ,
				S8TempNormalSC = @S8TempNormalSC ,
				S8TempNormalSet = @S8TempNormalSet ,
				S8TempNormalSetErr = @S8TempNormalSetErr ,
				S8TempNormalSet2 = @S8TempNormalSet2 ,
				S8TempNormalSetErr2 = @S8TempNormalSetErr2 ,
				S8CounterSettingSC = @S8CounterSettingSC ,
				S8CounterSettingSet = @S8CounterSettingSet ,
				S8CounterSettingSet2 = @S8CounterSettingSet2 ,
				S8SpeedSC = @S8SpeedSC ,
				S8SpeedSet = @S8SpeedSet ,
				S8SpeedErr = @S8SpeedErr ,
				S8SpeedSet2 = @S8SpeedSet2 ,
				S8SpeedSetErr2 = @S8SpeedSetErr2 ,
				S8NoOfCordsSC = @S8NoOfCordsSC ,
				S8NoOfCordsSet = @S8NoOfCordsSet ,
				S8NoOfCordsSet2 = @S8NoOfCordsSet2 ,
				S8SofnorSC = @S8SofnorSC ,
				S8SofnorSet = @S8SofnorSet ,
				S8SofnorSet2 = @S8SofnorSet2 ,
				S8DrawNipSC = @S8DrawNipSC ,
				S8DrawNipSet = @S8DrawNipSet ,
				S8DrawNipSet2 = @S8DrawNipSet2 ,
				S8DippingNo1ConcentrationSC = @S8DippingNo1ConcentrationSC ,
				S8DippingNo1ConcentrationSet = @S8DippingNo1ConcentrationSet ,
				S8DippingNo1ConcentrationSet2 = @S8DippingNo1ConcentrationSet2 ,
				S8DippingNo1NipFrontSC = @S8DippingNo1NipFrontSC ,
				S8DippingNo1NipFrontSet = @S8DippingNo1NipFrontSet ,
				S8DippingNo1NipFrontSet2 = @S8DippingNo1NipFrontSet2 ,
				S8DippingNo1NipBackSC = @S8DippingNo1NipBackSC ,
				S8DippingNo1NipBackSet = @S8DippingNo1NipBackSet ,
				S8DippingNo1NipBackSet2 = @S8DippingNo1NipBackSet2 ,

				S8DippingNo1WPUstdSC = @S8DippingNo1WPUstdSC ,
				S8DippingNo1WPUstdSet = @S8DippingNo1WPUstdSet ,
				S8DippingNo1WPUstdSet2 = @S8DippingNo1WPUstdSet2 ,

				S8DippingNo2ConcentrationSC = @S8DippingNo2ConcentrationSC ,
				S8DippingNo2ConcentrationSet = @S8DippingNo2ConcentrationSet ,
				S8DippingNo2ConcentrationSet2 = @S8DippingNo2ConcentrationSet2 ,
				S8DippingNo2NipFrontSC = @S8DippingNo2NipFrontSC ,
				S8DippingNo2NipFrontSet = @S8DippingNo2NipFrontSet ,
				S8DippingNo2NipFrontSet2 = @S8DippingNo2NipFrontSet2 ,
				S8DippingNo2NipBackSC = @S8DippingNo2NipBackSC ,
				S8DippingNo2NipBackSet = @S8DippingNo2NipBackSet ,
				S8DippingNo2NipBackSet2 = @S8DippingNo2NipBackSet2 ,

				S8DippingNo2WPUstdSC = @S8DippingNo2WPUstdSC ,
				S8DippingNo2WPUstdSet = @S8DippingNo2WPUstdSet ,
				S8DippingNo2WPUstdSet2 = @S8DippingNo2WPUstdSet2 ,

				S9WinderAyameDaialSC = @S9WinderAyameDaialSC ,
				S9WinderAyameDaialSet = @S9WinderAyameDaialSet ,
				S9WinderAyameDaialSet2 = @S9WinderAyameDaialSet2 ,
				S9WinderMpaSC = @S9WinderMpaSC ,
				S9WinderMpaSet = @S9WinderMpaSet ,
				S9WinderMpaSet2 = @S9WinderMpaSet2 ,
				S9WinderSpringSC = @S9WinderSpringSC ,
				S9WinderSpringSet = @S9WinderSpringSet ,
				S9WinderSpringSet2 = @S9WinderSpringSet2 ,
				S9WinderPeperTubeColorSC = @S9WinderPeperTubeColorSC ,
				S9WinderPeperTubeColorSet = @S9WinderPeperTubeColorSet ,
				S9WinderPeperTubeColorSet2 = @S9WinderPeperTubeColorSet2 ,
				S9WinderCheeseWeightSC = @S9WinderCheeseWeightSC ,
				S9WinderCheeseWeightSet = @S9WinderCheeseWeightSet ,
				S9WinderCheeseWeightSet2 = @S9WinderCheeseWeightSet2 ,
				S9ExhaustFanOven1CirculatingFanSC = @S9ExhaustFanOven1CirculatingFanSC ,
				S9ExhaustFanOven1CirculatingFanSet = @S9ExhaustFanOven1CirculatingFanSet ,
				S9ExhaustFanOven1CirculatingFanSet2 = @S9ExhaustFanOven1CirculatingFanSet2 ,
				S9ExhaustFanOven2CirculatingFanSC = @S9ExhaustFanOven2CirculatingFanSC ,
				S9ExhaustFanOven2CirculatingFanSet = @S9ExhaustFanOven2CirculatingFanSet ,
				S9ExhaustFanOven2CirculatingFanSet2 = @S9ExhaustFanOven2CirculatingFanSet2 ,
				S9ExhaustFanOven1ExhaustFanSC = @S9ExhaustFanOven1ExhaustFanSC ,
				S9ExhaustFanOven1ExhaustFanSet = @S9ExhaustFanOven1ExhaustFanSet ,
				S9ExhaustFanOven1ExhaustFanSet2 = @S9ExhaustFanOven1ExhaustFanSet2 ,
				S9ExhaustFanOven2ExhaustFanSC = @S9ExhaustFanOven2ExhaustFanSC ,
				S9ExhaustFanOven2ExhaustFanSet = @S9ExhaustFanOven2ExhaustFanSet ,
				S9ExhaustFanOven2ExhaustFanSet2 = @S9ExhaustFanOven2ExhaustFanSet2 ,
				S9ExhaustFanOvenFrontExhaustFanSC = @S9ExhaustFanOvenFrontExhaustFanSC ,
				S9ExhaustFanOvenFrontExhaustFanSet = @S9ExhaustFanOvenFrontExhaustFanSet ,
				S9ExhaustFanOvenFrontExhaustFanSet2 = @S9ExhaustFanOvenFrontExhaustFanSet2 ,
				S9ExhaustFanOvenBackExhaustFanSC = @S9ExhaustFanOvenBackExhaustFanSC ,
				S9ExhaustFanOvenBackExhaustFanSet = @S9ExhaustFanOvenBackExhaustFanSet ,
				S9ExhaustFanOvenBackExhaustFanSet2 = @S9ExhaustFanOvenBackExhaustFanSet2 ,
				S9SpongSC = @S9SpongSC ,
				S9SpongSet = @S9SpongSet ,
				S9SpongSet2 = @S9SpongSet2 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO DIPConditionStd
		    (
				ProductCode,
				S7YarnCordStructureSC,
				S7YarnCordStructureSet,
				S7YarnCordStructureSet2,
				S7YarnYarnTypeSC,
				S7YarnYarnTypeSet,
				S7YarnYarnTypeSet2,
				S7Yarn1stTwistSC,
				S7Yarn1stTwistSet,
				S7Yarn1stTwistSet2,
				S7Yarn2ndTwistSC,
				S7Yarn2ndTwistSet,
				S7Yarn2ndTwistSet2,
				S7YarnLabelOfYarnSC,
				S7YarnLabelOfYarnSet,
				S7YarnLabelOfYarnSet2,
				S7YarnWeightSC,
				S7YarnWeightSet,
				S7YarnWeightSetErr,
				S7YarnWeightSet2,
				S7YarnWeightSetErr2,
				S7CreelSettingUseTensorSC,
				S7CreelSettingUseTensorSet,
				S7CreelSettingUseTensorSet2,
				S7CreelSettingKnotConditionSC,
				S7CreelSettingKnotConditionSet,
				S7CreelSettingKnotConditionSet2,

				S7CreelSettingSlubCatsweSC ,
				S7CreelSettingSlubCatsweSet ,
				S7CreelSettingSlubCatsweSet2 ,

				S8StretchDryerSC,
				S8StretchDryerSet,
				S8StretchDryerSetErr,
				S8StretchDryerSet2,
				S8StretchDryerSetErr2,
				S8StretchStretchHotSC,
				S8StretchStretchHotSet,
				S8StretchStretchHotSetErr,
				S8StretchHotSet2,
				S8StretchHotSetErr2,
				S8StretchNormalSC,
				S8StretchNormalSet,
				S8StretchNormalSetErr,
				S8StretchNormalSet2,
				S8StretchNormalSetErr2,
				S8StretchTotalSC,
				S8StretchTotalSet,
				S8StretchTotalSetErr,
				S8StretchTotalSet2,
				S8StretchTotalSetErr2,
				S8TempDryerSC,
				S8TempDryerSet,
				S8TempDryerSetErr,
				S8TempDryerSet2,
				S8TempDryerSetErr2,
				S8TempHotSC,
				S8TempHotSet,
				S8TempHotSetErr,
				S8TempHotSet2,
				S8TempHotSetErr2,
				S8TempNormalSC,
				S8TempNormalSet,
				S8TempNormalSetErr,
				S8TempNormalSet2,
				S8TempNormalSetErr2,
				S8CounterSettingSC,
				S8CounterSettingSet,
				S8CounterSettingSet2,
				S8SpeedSC,
				S8SpeedSet,
				S8SpeedErr,
				S8SpeedSet2,
				S8SpeedSetErr2,
				S8NoOfCordsSC,
				S8NoOfCordsSet,
				S8NoOfCordsSet2,
				S8SofnorSC,
				S8SofnorSet,
				S8SofnorSet2,
				S8DrawNipSC,
				S8DrawNipSet,
				S8DrawNipSet2,
				S8DippingNo1ConcentrationSC,
				S8DippingNo1ConcentrationSet,
				S8DippingNo1ConcentrationSet2,
				S8DippingNo1NipFrontSC,
				S8DippingNo1NipFrontSet,
				S8DippingNo1NipFrontSet2,
				S8DippingNo1NipBackSC,
				S8DippingNo1NipBackSet,
				S8DippingNo1NipBackSet2,

				S8DippingNo1WPUstdSC,
				S8DippingNo1WPUstdSet,
				S8DippingNo1WPUstdSet2,

				S8DippingNo2ConcentrationSC,
				S8DippingNo2ConcentrationSet,
				S8DippingNo2ConcentrationSet2,
				S8DippingNo2NipFrontSC,
				S8DippingNo2NipFrontSet,
				S8DippingNo2NipFrontSet2,
				S8DippingNo2NipBackSC,
				S8DippingNo2NipBackSet,
				S8DippingNo2NipBackSet2,

				S8DippingNo2WPUstdSC,
				S8DippingNo2WPUstdSet,
				S8DippingNo2WPUstdSet2,

				S9WinderAyameDaialSC,
				S9WinderAyameDaialSet,
				S9WinderAyameDaialSet2,
				S9WinderMpaSC,
				S9WinderMpaSet,
				S9WinderMpaSet2,
				S9WinderSpringSC,
				S9WinderSpringSet,
				S9WinderSpringSet2,
				S9WinderPeperTubeColorSC,
				S9WinderPeperTubeColorSet,
				S9WinderPeperTubeColorSet2,
				S9WinderCheeseWeightSC,
				S9WinderCheeseWeightSet,
				S9WinderCheeseWeightSet2,
				S9ExhaustFanOven1CirculatingFanSC,
				S9ExhaustFanOven1CirculatingFanSet,
				S9ExhaustFanOven1CirculatingFanSet2,
				S9ExhaustFanOven2CirculatingFanSC,
				S9ExhaustFanOven2CirculatingFanSet,
				S9ExhaustFanOven2CirculatingFanSet2,
				S9ExhaustFanOven1ExhaustFanSC,
				S9ExhaustFanOven1ExhaustFanSet,
				S9ExhaustFanOven1ExhaustFanSet2,
				S9ExhaustFanOven2ExhaustFanSC,
				S9ExhaustFanOven2ExhaustFanSet,
				S9ExhaustFanOven2ExhaustFanSet2,
				S9ExhaustFanOvenFrontExhaustFanSC,
				S9ExhaustFanOvenFrontExhaustFanSet,
				S9ExhaustFanOvenFrontExhaustFanSet2,
				S9ExhaustFanOvenBackExhaustFanSC,
				S9ExhaustFanOvenBackExhaustFanSet,
				S9ExhaustFanOvenBackExhaustFanSet2,
				S9SpongSC,
				S9SpongSet,
				S9SpongSet2
			)
			VALUES
			(
                @ProductCode,
				@S7YarnCordStructureSC,
				@S7YarnCordStructureSet,
				@S7YarnCordStructureSet2,
				@S7YarnYarnTypeSC,
				@S7YarnYarnTypeSet,
				@S7YarnYarnTypeSet2,
				@S7Yarn1stTwistSC,
				@S7Yarn1stTwistSet,
				@S7Yarn1stTwistSet2,
				@S7Yarn2ndTwistSC,
				@S7Yarn2ndTwistSet,
				@S7Yarn2ndTwistSet2,
				@S7YarnLabelOfYarnSC,
				@S7YarnLabelOfYarnSet,
				@S7YarnLabelOfYarnSet2,
				@S7YarnWeightSC,
				@S7YarnWeightSet,
				@S7YarnWeightSetErr,
				@S7YarnWeightSet2,
				@S7YarnWeightSetErr2,
				@S7CreelSettingUseTensorSC,
				@S7CreelSettingUseTensorSet,
				@S7CreelSettingUseTensorSet2,
				@S7CreelSettingKnotConditionSC,
				@S7CreelSettingKnotConditionSet,
				@S7CreelSettingKnotConditionSet2,
				@S7CreelSettingSlubCatsweSC ,
				@S7CreelSettingSlubCatsweSet ,
				@S7CreelSettingSlubCatsweSet2 ,
				@S8StretchDryerSC,
				@S8StretchDryerSet,
				@S8StretchDryerSetErr,
				@S8StretchDryerSet2,
				@S8StretchDryerSetErr2,
				@S8StretchStretchHotSC,
				@S8StretchStretchHotSet,
				@S8StretchStretchHotSetErr,
				@S8StretchHotSet2,
				@S8StretchHotSetErr2,
				@S8StretchNormalSC,
				@S8StretchNormalSet,
				@S8StretchNormalSetErr,
				@S8StretchNormalSet2,
				@S8StretchNormalSetErr2,
				@S8StretchTotalSC,
				@S8StretchTotalSet,
				@S8StretchTotalSetErr,
				@S8StretchTotalSet2,
				@S8StretchTotalSetErr2,
				@S8TempDryerSC,
				@S8TempDryerSet,
				@S8TempDryerSetErr,
				@S8TempDryerSet2,
				@S8TempDryerSetErr2,
				@S8TempHotSC,
				@S8TempHotSet,
				@S8TempHotSetErr,
				@S8TempHotSet2,
				@S8TempHotSetErr2,
				@S8TempNormalSC,
				@S8TempNormalSet,
				@S8TempNormalSetErr,
				@S8TempNormalSet2,
				@S8TempNormalSetErr2,
				@S8CounterSettingSC,
				@S8CounterSettingSet,
				@S8CounterSettingSet2,
				@S8SpeedSC,
				@S8SpeedSet,
				@S8SpeedErr,
				@S8SpeedSet2,
				@S8SpeedSetErr2,
				@S8NoOfCordsSC,
				@S8NoOfCordsSet,
				@S8NoOfCordsSet2,
				@S8SofnorSC,
				@S8SofnorSet,
				@S8SofnorSet2,
				@S8DrawNipSC,
				@S8DrawNipSet,
				@S8DrawNipSet2,
				@S8DippingNo1ConcentrationSC,
				@S8DippingNo1ConcentrationSet,
				@S8DippingNo1ConcentrationSet2,
				@S8DippingNo1NipFrontSC,
				@S8DippingNo1NipFrontSet,
				@S8DippingNo1NipFrontSet2,
				@S8DippingNo1NipBackSC,
				@S8DippingNo1NipBackSet,
				@S8DippingNo1NipBackSet2,

				@S8DippingNo1WPUstdSC,
				@S8DippingNo1WPUstdSet,
				@S8DippingNo1WPUstdSet2,

				@S8DippingNo2ConcentrationSC,
				@S8DippingNo2ConcentrationSet,
				@S8DippingNo2ConcentrationSet2,
				@S8DippingNo2NipFrontSC,
				@S8DippingNo2NipFrontSet,
				@S8DippingNo2NipFrontSet2,
				@S8DippingNo2NipBackSC,
				@S8DippingNo2NipBackSet,
				@S8DippingNo2NipBackSet2,

				@S8DippingNo2WPUstdSC,
				@S8DippingNo2WPUstdSet,
				@S8DippingNo2WPUstdSet2,

				@S9WinderAyameDaialSC,
				@S9WinderAyameDaialSet,
				@S9WinderAyameDaialSet2,
				@S9WinderMpaSC,
				@S9WinderMpaSet,
				@S9WinderMpaSet2,
				@S9WinderSpringSC,
				@S9WinderSpringSet,
				@S9WinderSpringSet2,
				@S9WinderPeperTubeColorSC,
				@S9WinderPeperTubeColorSet,
				@S9WinderPeperTubeColorSet2,
				@S9WinderCheeseWeightSC,
				@S9WinderCheeseWeightSet,
				@S9WinderCheeseWeightSet2,
				@S9ExhaustFanOven1CirculatingFanSC,
				@S9ExhaustFanOven1CirculatingFanSet,
				@S9ExhaustFanOven1CirculatingFanSet2,
				@S9ExhaustFanOven2CirculatingFanSC,
				@S9ExhaustFanOven2CirculatingFanSet,
				@S9ExhaustFanOven2CirculatingFanSet2,
				@S9ExhaustFanOven1ExhaustFanSC,
				@S9ExhaustFanOven1ExhaustFanSet,
				@S9ExhaustFanOven1ExhaustFanSet2,
				@S9ExhaustFanOven2ExhaustFanSC,
				@S9ExhaustFanOven2ExhaustFanSet,
				@S9ExhaustFanOven2ExhaustFanSet2,
				@S9ExhaustFanOvenFrontExhaustFanSC,
				@S9ExhaustFanOvenFrontExhaustFanSet,
				@S9ExhaustFanOvenFrontExhaustFanSet2,
				@S9ExhaustFanOvenBackExhaustFanSC,
				@S9ExhaustFanOvenBackExhaustFanSet,
				@S9ExhaustFanOvenBackExhaustFanSet2,
				@S9SpongSC,
				@S9SpongSet,
				@S9SpongSet2
			);
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPCondition]    Script Date: 23/10/2566 1:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPCondition] (
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
	@S7CreelSettingKnotConditionSC bit  ,
	@S7CreelSettingKnotConditionSet decimal (18, 3) ,
	@S7CreelSettingKnotConditionActual decimal (18, 3) ,
	@S7CreelSettingKnotConditionSet2 decimal (18, 3) ,
	@S7CreelSettingKnotConditionActual2 decimal (18, 3) ,

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
	@S9SpongActual2 nvarchar (50) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPCondition WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE DIPCondition 
               SET  S7YarnCordStructureSC = @S7YarnCordStructureSC ,
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
				S9SpongActual2 = @S9SpongActual2
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO DIPCondition
		    (
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
				S9SpongActual2
			)
			VALUES
			(
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
				@S9SpongActual2
			);
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


/*********** Script Update Date: 2023-10-23  ***********/
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPProductionCondition]    Script Date: 20/10/2566 2:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPProductionCondition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPProductionCondition] (
    @ProductCode nvarchar (30)  ,
	@S7CordStructure nvarchar (50)  ,
	@S7YarnType nvarchar (50)  ,
	@S71stTwist nvarchar (50)  ,
	@S72ndTwist nvarchar (50)  ,
	@S7ShapeOfYarn nvarchar (50)  ,
	@S7Weight decimal (18, 3)  ,
	@S7ProcessSettingTension nvarchar (50)  ,
	@S7UseTensor nvarchar (50)  ,
	@S7KnotCondition nvarchar (50)  ,
	@S7SuperNylonKnot nvarchar (50)  ,
	@S8DryeStretchSC bit   ,
	@S8DryeStretch decimal (18, 3)  ,
	@S8DryeStretchErr decimal (18, 3)  ,
	@S8DryeTempSC bit   ,
	@S8DryeTemp decimal (18, 3)  ,
	@S8DryeTempErr decimal (18, 3)  ,
	@S8DryePass decimal (18, 3)  ,
	@S8DryeTension nvarchar (50)  ,
	@S8HotStretchSC bit   ,
	@S8HotStretch decimal (18, 3)  ,
	@S8HotStretchErr decimal (18, 3)  ,
	@S8HotTempSC bit   ,
	@S8HotTemp decimal (18, 3)  ,
	@S8HotTempErr decimal (18, 3)  ,
	@S8HotPass decimal (18, 3)  ,
	@S8HotTension nvarchar (50)  ,
	@S8NormalStretchSC bit   ,
	@S8NormalStretch decimal (18, 3)  ,
	@S8NormalStretchErr decimal (18, 3)  ,
	@S8NormalTempSC bit   ,
	@S8NormalTemp decimal (18, 3)  ,
	@S8NormalTempErr decimal (18, 3)  ,
	@S8NormalPass decimal (18, 3)  ,
	@S8NormalTension nvarchar (50)  ,
	@S8TotalStretchSC bit   ,
	@S8TotalStretch decimal (18, 3)  ,
	@S8TotalStretchErr decimal (18, 3)  ,
	@S8TotalTempSC bit   ,
	@S8TotalTemp decimal (18, 3)  ,
	@S8TotalTempErr decimal (18, 3)  ,
	@S8TotalPass decimal (18, 3)  ,
	@S8TotalTension nvarchar (50)  ,
	@S8SpeedSC bit   ,
	@S8Speed decimal (18, 3)  ,
	@S8SpeedErr decimal (18, 3)  ,
	@S8NoOfCordsOfProcessing decimal (18, 3)  ,
	@S8NoOfCordsOfProcessingErr decimal (18, 3)  ,
	@S8Sofnor nvarchar (50)  ,
	@S8DrawNip nvarchar (50)  ,
	@S8Concentration nvarchar (50)  ,
	@S8NipRollerPressureNo1Front decimal (18, 3)  ,
	@S8NipRollerPressureNo1FrontErr decimal (18, 3)  ,
	@S8NipRollerPressureNo2Front decimal (18, 3)  ,
	@S8NipRollerPressureNo2FrontErr decimal (18, 3)  ,
	@S8NipRollerPressureNo1Back decimal (18, 3)  ,
	@S8NipRollerPressureNo1BackErr decimal (18, 3)  ,
	@S8NipRollerPressureNo2Back decimal (18, 3)  ,
	@S8NipRollerPressureNo2BackErr decimal (18, 3)  ,
	@S8WPUStandardNo1 decimal (18, 3)  ,
	@S8WPUStandardNo1Err decimal (18, 3)  ,
	@S8WPUStandardNo2 decimal (18, 3)  ,
	@S8WPUStandardNo2Err decimal (18, 3)  ,
	@S9ContactPressureUp bit   ,
	@S9ContactPressureDown bit   ,
	@S9ContactPressure nvarchar (50)  ,
	@S9BaseWindGear decimal (18, 3)  ,
	@S9TraverseGuideSizeLrage bit   ,
	@S9TraverseGuideSizeSmall bit   ,
	@S9TraverseGuideSize nvarchar (50)  ,
	@S9WindVoltageSet decimal (18, 3)  ,
	@S9WindVoltageSetErr decimal (18, 3)  ,
	@S9AyameDaial decimal (18, 6)  ,
	@S9AyameDaialErr decimal (18, 6)  ,
	@S9TensionSpringLrage bit   ,
	@S9TensionSpringSmall bit   ,
	@S9TensionSpring nvarchar (50)  ,
	@S9TensionWind nvarchar (50)  ,
	@S9PackingStandard decimal (18, 3)  ,
	@S9PackingStandardErr decimal (18, 3)  ,
	@S9TubeColor nvarchar (50)  ,
	@S9Tail nvarchar (50)  ,
	@S9CounterSetting decimal (18, 3)  ,
	@S9CounterSettingErr decimal (18, 3)  ,
	@S9CheeseWeight decimal (18, 3)  ,
	@S9CheeseWeightErr decimal (18, 3)  ,
	@S9HowToStartProductionEng nvarchar (100)  ,
	@S9HowToStartProductionTh nvarchar (100)  ,
	@S9Rewind nvarchar (100)  ,
	@S9Package nvarchar (100)  ,
	@S9Sampling nvarchar (100)  
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPProductionCondition WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE DIPProductionCondition 
               SET  S7CordStructure = @S7CordStructure ,
				S7YarnType = @S7YarnType ,
				S71stTwist = @S71stTwist ,
				S72ndTwist = @S72ndTwist ,
				S7ShapeOfYarn = @S7ShapeOfYarn ,
				S7Weight  = @S7Weight ,
				S7ProcessSettingTension = @S7ProcessSettingTension ,
				S7UseTensor = @S7UseTensor ,
				S7KnotCondition = @S7KnotCondition ,
				S7SuperNylonKnot = @S7SuperNylonKnot ,
				S8DryeStretchSC = @S8DryeStretchSC ,
				S8DryeStretch  = @S8DryeStretch ,
				S8DryeStretchErr  = @S8DryeStretchErr ,
				S8DryeTempSC = @S8DryeTempSC ,
				S8DryeTemp  = @S8DryeTemp ,
				S8DryeTempErr  = @S8DryeTempErr ,
				S8DryePass  = @S8DryePass ,
				S8DryeTension = @S8DryeTension ,
				S8HotStretchSC = @S8HotStretchSC ,
				S8HotStretch  = @S8HotStretch ,
				S8HotStretchErr  = @S8HotStretchErr ,
				S8HotTempSC = @S8HotTempSC ,
				S8HotTemp  = @S8HotTemp ,
				S8HotTempErr  = @S8HotTempErr ,
				S8HotPass  = @S8HotPass ,
				S8HotTension = @S8HotTension ,
				S8NormalStretchSC = @S8NormalStretchSC ,
				S8NormalStretch  = @S8NormalStretch ,
				S8NormalStretchErr  = @S8NormalStretchErr ,
				S8NormalTempSC = @S8NormalTempSC ,
				S8NormalTemp  = @S8NormalTemp ,
				S8NormalTempErr  = @S8NormalTempErr ,
				S8NormalPass  = @S8NormalPass ,
				S8NormalTension = @S8NormalTension ,
				S8TotalStretchSC = @S8TotalStretchSC ,
				S8TotalStretch  = @S8TotalStretch ,
				S8TotalStretchErr  = @S8TotalStretchErr ,
				S8TotalTempSC = @S8TotalTempSC ,
				S8TotalTemp  = @S8TotalTemp ,
				S8TotalTempErr  = @S8TotalTempErr ,
				S8TotalPass  = @S8TotalPass ,
				S8TotalTension = @S8TotalTension ,
				S8SpeedSC = @S8SpeedSC ,
				S8Speed  = @S8Speed ,
				S8SpeedErr  = @S8SpeedErr ,
				S8NoOfCordsOfProcessing  = @S8NoOfCordsOfProcessing ,
				S8NoOfCordsOfProcessingErr  = @S8NoOfCordsOfProcessingErr ,
				S8Sofnor = @S8Sofnor ,
				S8DrawNip = @S8DrawNip ,
				S8Concentration = @S8Concentration ,
				S8NipRollerPressureNo1Front  = @S8NipRollerPressureNo1Front ,
				S8NipRollerPressureNo1FrontErr  = @S8NipRollerPressureNo1FrontErr ,
				S8NipRollerPressureNo2Front  = @S8NipRollerPressureNo2Front ,
				S8NipRollerPressureNo2FrontErr  = @S8NipRollerPressureNo2FrontErr ,
				S8NipRollerPressureNo1Back  = @S8NipRollerPressureNo1Back ,
				S8NipRollerPressureNo1BackErr  = @S8NipRollerPressureNo1BackErr ,
				S8NipRollerPressureNo2Back  = @S8NipRollerPressureNo2Back ,
				S8NipRollerPressureNo2BackErr  = @S8NipRollerPressureNo2BackErr ,
				S8WPUStandardNo1  = @S8WPUStandardNo1 ,
				S8WPUStandardNo1Err  = @S8WPUStandardNo1Err ,
				S8WPUStandardNo2  = @S8WPUStandardNo2 ,
				S8WPUStandardNo2Err  = @S8WPUStandardNo2Err ,
				S9ContactPressureUp = @S9ContactPressureUp ,
				S9ContactPressureDown = @S9ContactPressureDown ,
				S9ContactPressure = @S9ContactPressure ,
				S9BaseWindGear  = @S9BaseWindGear ,
				S9TraverseGuideSizeLrage = @S9TraverseGuideSizeLrage ,
				S9TraverseGuideSizeSmall = @S9TraverseGuideSizeSmall ,
				S9TraverseGuideSize = @S9TraverseGuideSize ,
				S9WindVoltageSet  = @S9WindVoltageSet ,
				S9WindVoltageSetErr  = @S9WindVoltageSetErr ,
				S9AyameDaial  = @S9AyameDaial ,
				S9AyameDaialErr  = @S9AyameDaialErr ,
				S9TensionSpringLrage = @S9TensionSpringLrage ,
				S9TensionSpringSmall = @S9TensionSpringSmall ,
				S9TensionSpring = @S9TensionSpring ,
				S9TensionWind = @S9TensionWind ,
				S9PackingStandard  = @S9PackingStandard ,
				S9PackingStandardErr  = @S9PackingStandardErr ,
				S9TubeColor = @S9TubeColor ,
				S9Tail = @S9Tail ,
				S9CounterSetting  = @S9CounterSetting ,
				S9CounterSettingErr  = @S9CounterSettingErr ,
				S9CheeseWeight  = @S9CheeseWeight ,
				S9CheeseWeightErr  = @S9CheeseWeightErr ,
				S9HowToStartProductionEng = @S9HowToStartProductionEng ,
				S9HowToStartProductionTh = @S9HowToStartProductionTh ,
				S9Rewind = @S9Rewind ,
				S9Package = @S9Package ,
				S9Sampling = @S9Sampling 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO DIPProductionCondition
		    (
				ProductCode  ,
				S7CordStructure ,
				S7YarnType ,
				S71stTwist ,
				S72ndTwist ,
				S7ShapeOfYarn ,
				S7Weight  ,
				S7ProcessSettingTension ,
				S7UseTensor ,
				S7KnotCondition ,
				S7SuperNylonKnot ,
				S8DryeStretchSC ,
				S8DryeStretch  ,
				S8DryeStretchErr  ,
				S8DryeTempSC ,
				S8DryeTemp  ,
				S8DryeTempErr  ,
				S8DryePass  ,
				S8DryeTension ,
				S8HotStretchSC ,
				S8HotStretch  ,
				S8HotStretchErr  ,
				S8HotTempSC ,
				S8HotTemp  ,
				S8HotTempErr  ,
				S8HotPass  ,
				S8HotTension ,
				S8NormalStretchSC ,
				S8NormalStretch  ,
				S8NormalStretchErr  ,
				S8NormalTempSC ,
				S8NormalTemp  ,
				S8NormalTempErr  ,
				S8NormalPass  ,
				S8NormalTension ,
				S8TotalStretchSC ,
				S8TotalStretch  ,
				S8TotalStretchErr  ,
				S8TotalTempSC ,
				S8TotalTemp  ,
				S8TotalTempErr  ,
				S8TotalPass  ,
				S8TotalTension ,
				S8SpeedSC ,
				S8Speed  ,
				S8SpeedErr  ,
				S8NoOfCordsOfProcessing  ,
				S8NoOfCordsOfProcessingErr  ,
				S8Sofnor ,
				S8DrawNip ,
				S8Concentration ,
				S8NipRollerPressureNo1Front  ,
				S8NipRollerPressureNo1FrontErr  ,
				S8NipRollerPressureNo2Front  ,
				S8NipRollerPressureNo2FrontErr  ,
				S8NipRollerPressureNo1Back  ,
				S8NipRollerPressureNo1BackErr  ,
				S8NipRollerPressureNo2Back  ,
				S8NipRollerPressureNo2BackErr  ,
				S8WPUStandardNo1  ,
				S8WPUStandardNo1Err  ,
				S8WPUStandardNo2  ,
				S8WPUStandardNo2Err  ,
				S9ContactPressureUp ,
				S9ContactPressureDown ,
				S9ContactPressure ,
				S9BaseWindGear  ,
				S9TraverseGuideSizeLrage ,
				S9TraverseGuideSizeSmall ,
				S9TraverseGuideSize ,
				S9WindVoltageSet  ,
				S9WindVoltageSetErr  ,
				S9AyameDaial  ,
				S9AyameDaialErr  ,
				S9TensionSpringLrage ,
				S9TensionSpringSmall ,
				S9TensionSpring ,
				S9TensionWind ,
				S9PackingStandard  ,
				S9PackingStandardErr  ,
				S9TubeColor ,
				S9Tail ,
				S9CounterSetting  ,
				S9CounterSettingErr  ,
				S9CheeseWeight  ,
				S9CheeseWeightErr  ,
				S9HowToStartProductionEng ,
				S9HowToStartProductionTh ,
				S9Rewind ,
				S9Package ,
				S9Sampling 
			)
			VALUES
			(
                @ProductCode  ,
				@S7CordStructure ,
				@S7YarnType ,
				@S71stTwist ,
				@S72ndTwist ,
				@S7ShapeOfYarn ,
				@S7Weight  ,
				@S7ProcessSettingTension ,
				@S7UseTensor ,
				@S7KnotCondition ,
				@S7SuperNylonKnot ,
				@S8DryeStretchSC ,
				@S8DryeStretch  ,
				@S8DryeStretchErr  ,
				@S8DryeTempSC ,
				@S8DryeTemp  ,
				@S8DryeTempErr  ,
				@S8DryePass  ,
				@S8DryeTension ,
				@S8HotStretchSC ,
				@S8HotStretch  ,
				@S8HotStretchErr  ,
				@S8HotTempSC ,
				@S8HotTemp  ,
				@S8HotTempErr  ,
				@S8HotPass  ,
				@S8HotTension ,
				@S8NormalStretchSC ,
				@S8NormalStretch  ,
				@S8NormalStretchErr  ,
				@S8NormalTempSC ,
				@S8NormalTemp  ,
				@S8NormalTempErr  ,
				@S8NormalPass  ,
				@S8NormalTension ,
				@S8TotalStretchSC ,
				@S8TotalStretch  ,
				@S8TotalStretchErr  ,
				@S8TotalTempSC ,
				@S8TotalTemp  ,
				@S8TotalTempErr  ,
				@S8TotalPass  ,
				@S8TotalTension ,
				@S8SpeedSC ,
				@S8Speed  ,
				@S8SpeedErr  ,
				@S8NoOfCordsOfProcessing  ,
				@S8NoOfCordsOfProcessingErr  ,
				@S8Sofnor ,
				@S8DrawNip ,
				@S8Concentration ,
				@S8NipRollerPressureNo1Front  ,
				@S8NipRollerPressureNo1FrontErr  ,
				@S8NipRollerPressureNo2Front  ,
				@S8NipRollerPressureNo2FrontErr  ,
				@S8NipRollerPressureNo1Back  ,
				@S8NipRollerPressureNo1BackErr  ,
				@S8NipRollerPressureNo2Back  ,
				@S8NipRollerPressureNo2BackErr  ,
				@S8WPUStandardNo1  ,
				@S8WPUStandardNo1Err  ,
				@S8WPUStandardNo2  ,
				@S8WPUStandardNo2Err  ,
				@S9ContactPressureUp ,
				@S9ContactPressureDown ,
				@S9ContactPressure ,
				@S9BaseWindGear  ,
				@S9TraverseGuideSizeLrage ,
				@S9TraverseGuideSizeSmall ,
				@S9TraverseGuideSize ,
				@S9WindVoltageSet  ,
				@S9WindVoltageSetErr  ,
				@S9AyameDaial  ,
				@S9AyameDaialErr  ,
				@S9TensionSpringLrage ,
				@S9TensionSpringSmall ,
				@S9TensionSpring ,
				@S9TensionWind ,
				@S9PackingStandard  ,
				@S9PackingStandardErr  ,
				@S9TubeColor ,
				@S9Tail ,
				@S9CounterSetting  ,
				@S9CounterSettingErr  ,
				@S9CheeseWeight  ,
				@S9CheeseWeightErr  ,
				@S9HowToStartProductionEng ,
				@S9HowToStartProductionTh ,
				@S9Rewind ,
				@S9Package ,
				@S9Sampling 
			);
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditionStd]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetS8BeforeConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
	LotNo,
	SolutionNameBath1,
	SolutionNameBath2,
	TempJacketDrumBath1SC,
	TempJacketDrumBath1,
	TempJacketDrumBath1Err,
	TempJacketDrumBath2SC,
	TempJacketDrumBath2,
	TempJacketDrumBath2Err,
	TempChemicalBath1SC,
	TempChemicalBath1,
	TempChemicalBath1Err,
	TempChemicalBath2SC,
	TempChemicalBath2,
	TempChemicalBath2Err,
	StretchDSC,
	StretchD,
	StretchDErr,
	StretchHSC,
	StretchH,
	StretchHErr,
	StretchNSC,
	StretchN,
	StretchNErr,
	TempDSC,
	TempD,
	TempDErr,
	TempHNSC,
	TempHN,
	TempHNErr,
	SpeedSC,
	Speed,
	SpeedErr,
	ExhaustFanDryerSC,
	ExhaustFanDryer,
	ExhaustFanHNSC,
	ExhaustFanHN,
	CleanBath1,
	CleanBath2,
	CleanFront,
	Cambox
     FROM S8BeforeConditionStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8BeforeConditionStd]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8BeforeConditionStd] (
    @ProductCode nvarchar (30),
	@LotNo nvarchar (50),
	@SolutionNameBath1 nvarchar (50),
	@SolutionNameBath2 nvarchar (50),
	@TempJacketDrumBath1SC bit,
	@TempJacketDrumBath1 decimal(18, 3),
	@TempJacketDrumBath1Err decimal(18, 3),
	@TempJacketDrumBath2SC bit,
	@TempJacketDrumBath2 decimal(18, 3),
	@TempJacketDrumBath2Err decimal(18, 3),
	@TempChemicalBath1SC bit,
	@TempChemicalBath1 decimal(18, 3),
	@TempChemicalBath1Err decimal(18, 3),
	@TempChemicalBath2SC bit,
	@TempChemicalBath2 decimal(18, 3),
	@TempChemicalBath2Err decimal(18, 3),
	@StretchDSC bit,
	@StretchD decimal(18, 3),
	@StretchDErr decimal(18, 3),
	@StretchHSC bit,
	@StretchH decimal(18, 3),
	@StretchHErr decimal(18, 3),
	@StretchNSC bit,
	@StretchN decimal(18, 3),
	@StretchNErr decimal(18, 3),
	@TempDSC bit,
	@TempD decimal(18, 3),
	@TempDErr decimal(18, 3),
	@TempHNSC bit,
	@TempHN decimal(18, 3),
	@TempHNErr decimal(18, 3),
	@SpeedSC bit,
	@Speed decimal(18, 3),
	@SpeedErr decimal(18, 3),
	@ExhaustFanDryerSC bit,
	@ExhaustFanDryer decimal(18, 3),
	@ExhaustFanHNSC bit,
	@ExhaustFanHN decimal(18, 3),
	@CleanBath1 bit,
	@CleanBath2 bit,
	@CleanFront bit,
	@Cambox bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S8BeforeConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S8BeforeConditionStd 
               SET  ProductCode = @ProductCode ,
					LotNo = @LotNo ,
					SolutionNameBath1 = @SolutionNameBath1 ,
					SolutionNameBath2 = @SolutionNameBath2 ,
					TempJacketDrumBath1SC = @TempJacketDrumBath1SC ,
					TempJacketDrumBath1 = @TempJacketDrumBath1 ,
					TempJacketDrumBath1Err = @TempJacketDrumBath1Err ,
					TempJacketDrumBath2SC = @TempJacketDrumBath2SC ,
					TempJacketDrumBath2 = @TempJacketDrumBath2 ,
					TempJacketDrumBath2Err = @TempJacketDrumBath2Err ,
					TempChemicalBath1SC = @TempChemicalBath1SC ,
					TempChemicalBath1 = @TempChemicalBath1 ,
					TempChemicalBath1Err = @TempChemicalBath1Err ,
					TempChemicalBath2SC = @TempChemicalBath2SC ,
					TempChemicalBath2 = @TempChemicalBath2 ,
					TempChemicalBath2Err = @TempChemicalBath2Err ,
					StretchDSC = @StretchDSC ,
					StretchD = @StretchD ,
					StretchDErr = @StretchDErr ,
					StretchHSC = @StretchHSC ,
					StretchH = @StretchH ,
					StretchHErr = @StretchHErr ,
					StretchNSC = @StretchNSC ,
					StretchN = @StretchN ,
					StretchNErr = @StretchNErr ,
					TempDSC = @TempDSC ,
					TempD = @TempD ,
					TempDErr = @TempDErr ,
					TempHNSC = @TempHNSC ,
					TempHN = @TempHN ,
					TempHNErr = @TempHNErr ,
					SpeedSC = @SpeedSC ,
					Speed = @Speed ,
					SpeedErr = @SpeedErr ,
					ExhaustFanDryerSC = @ExhaustFanDryerSC ,
					ExhaustFanDryer = @ExhaustFanDryer ,
					ExhaustFanHNSC = @ExhaustFanHNSC ,
					ExhaustFanHN = @ExhaustFanHN ,
					CleanBath1 = @CleanBath1 ,
					CleanBath2 = @CleanBath2 ,
					CleanFront = @CleanFront ,
					Cambox  = @Cambox 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S8BeforeConditionStd
		    (
				ProductCode ,
				LotNo ,
				SolutionNameBath1 ,
				SolutionNameBath2 ,
				TempJacketDrumBath1SC ,
				TempJacketDrumBath1 ,
				TempJacketDrumBath1Err ,
				TempJacketDrumBath2SC ,
				TempJacketDrumBath2 ,
				TempJacketDrumBath2Err ,
				TempChemicalBath1SC ,
				TempChemicalBath1 ,
				TempChemicalBath1Err ,
				TempChemicalBath2SC ,
				TempChemicalBath2 ,
				TempChemicalBath2Err ,
				StretchDSC ,
				StretchD ,
				StretchDErr ,
				StretchHSC ,
				StretchH ,
				StretchHErr ,
				StretchNSC ,
				StretchN ,
				StretchNErr ,
				TempDSC ,
				TempD ,
				TempDErr ,
				TempHNSC ,
				TempHN ,
				TempHNErr ,
				SpeedSC ,
				Speed ,
				SpeedErr ,
				ExhaustFanDryerSC ,
				ExhaustFanDryer ,
				ExhaustFanHNSC ,
				ExhaustFanHN ,
				CleanBath1 ,
				CleanBath2 ,
				CleanFront ,
				Cambox 
			)
			VALUES
			(
                @ProductCode ,
				@LotNo ,
				@SolutionNameBath1 ,
				@SolutionNameBath2 ,
				@TempJacketDrumBath1SC ,
				@TempJacketDrumBath1 ,
				@TempJacketDrumBath1Err ,
				@TempJacketDrumBath2SC ,
				@TempJacketDrumBath2 ,
				@TempJacketDrumBath2Err ,
				@TempChemicalBath1SC ,
				@TempChemicalBath1 ,
				@TempChemicalBath1Err ,
				@TempChemicalBath2SC ,
				@TempChemicalBath2 ,
				@TempChemicalBath2Err ,
				@StretchDSC ,
				@StretchD ,
				@StretchDErr ,
				@StretchHSC ,
				@StretchH ,
				@StretchHErr ,
				@StretchNSC ,
				@StretchN ,
				@StretchNErr ,
				@TempDSC ,
				@TempD ,
				@TempDErr ,
				@TempHNSC ,
				@TempHN ,
				@TempHNErr ,
				@SpeedSC ,
				@Speed ,
				@SpeedErr ,
				@ExhaustFanDryerSC ,
				@ExhaustFanDryer ,
				@ExhaustFanHNSC ,
				@ExhaustFanHN ,
				@CleanBath1 ,
				@CleanBath2 ,
				@CleanFront ,
				@Cambox 
			);
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditionCF]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetS8BeforeConditionCF]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
	SolutionNameBath1,
	SolutionNameBath2,
	TempJacketDrumBath1SC,
	TempJacketDrumBath1,
	TempJacketDrumBath2SC,
	TempJacketDrumBath2,
	TempChemicalBath1SC,
	TempChemicalBath1,
	TempChemicalBath2SC,
	TempChemicalBath2,
	StretchDSC,
	StretchD,
	StretchHSC,
	StretchH,
	StretchNSC,
	StretchN,
	TempDSC,
	TempD,
	TempHNSC,
	TempHN,
	SpeedSC,
	Speed,
	ExhaustFanDryerSC,
	ExhaustFanDryer,
	ExhaustFanHNSC,
	ExhaustFanHN,
	CleanBath1,
	CleanBath2,
	CleanFront,
	Cambox
     FROM S8BeforeConditionCF
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8BeforeConditionCF]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8BeforeConditionCF] (
    @S8ConditionId int ,
    @ProductCode nvarchar (30),
	@SolutionNameBath1 nvarchar (50),
	@SolutionNameBath2 nvarchar (50),
	@TempJacketDrumBath1SC bit,
	@TempJacketDrumBath1 decimal(18, 3),
	@TempJacketDrumBath2SC bit,
	@TempJacketDrumBath2 decimal(18, 3),
	@TempChemicalBath1SC bit,
	@TempChemicalBath1 decimal(18, 3),
	@TempChemicalBath2SC bit,
	@TempChemicalBath2 decimal(18, 3),
	@StretchDSC bit,
	@StretchD decimal(18, 3),
	@StretchHSC bit,
	@StretchH decimal(18, 3),
	@StretchNSC bit,
	@StretchN decimal(18, 3),
	@TempDSC bit,
	@TempD decimal(18, 3),
	@TempHNSC bit,
	@TempHN decimal(18, 3),
	@SpeedSC bit,
	@Speed decimal(18, 3),
	@ExhaustFanDryerSC bit,
	@ExhaustFanDryer decimal(18, 3),
	@ExhaustFanHNSC bit,
	@ExhaustFanHN decimal(18, 3),
	@CleanBath1 bit,
	@CleanBath2 bit,
	@CleanFront bit,
	@Cambox bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S8BeforeConditionCF WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S8BeforeConditionCF 
               SET  S8ConditionId = @S8ConditionId ,
					ProductCode = @ProductCode ,
					SolutionNameBath1 = @SolutionNameBath1 ,
					SolutionNameBath2 = @SolutionNameBath2 ,
					TempJacketDrumBath1SC = @TempJacketDrumBath1SC ,
					TempJacketDrumBath1 = @TempJacketDrumBath1 ,
					TempJacketDrumBath2SC = @TempJacketDrumBath2SC ,
					TempJacketDrumBath2 = @TempJacketDrumBath2 ,
					TempChemicalBath1SC = @TempChemicalBath1SC ,
					TempChemicalBath1 = @TempChemicalBath1 ,
					TempChemicalBath2SC = @TempChemicalBath2SC ,
					TempChemicalBath2 = @TempChemicalBath2 ,
					StretchDSC = @StretchDSC ,
					StretchD = @StretchD ,
					StretchHSC = @StretchHSC ,
					StretchH = @StretchH ,
					StretchNSC = @StretchNSC ,
					StretchN = @StretchN ,
					TempDSC = @TempDSC ,
					TempD = @TempD ,
					TempHNSC = @TempHNSC ,
					TempHN = @TempHN ,
					SpeedSC = @SpeedSC ,
					Speed = @Speed ,
					ExhaustFanDryerSC = @ExhaustFanDryerSC ,
					ExhaustFanDryer = @ExhaustFanDryer ,
					ExhaustFanHNSC = @ExhaustFanHNSC ,
					ExhaustFanHN = @ExhaustFanHN ,
					CleanBath1 = @CleanBath1 ,
					CleanBath2 = @CleanBath2 ,
					CleanFront = @CleanFront ,
					Cambox  = @Cambox 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S8BeforeConditionCF
		    (
				S8ConditionId ,
				ProductCode ,
				SolutionNameBath1 ,
				SolutionNameBath2 ,
				TempJacketDrumBath1SC ,
				TempJacketDrumBath1 ,
				TempJacketDrumBath2SC ,
				TempJacketDrumBath2 ,
				TempChemicalBath1SC ,
				TempChemicalBath1 ,
				TempChemicalBath2SC ,
				TempChemicalBath2 ,
				StretchDSC ,
				StretchD ,
				StretchHSC ,
				StretchH ,
				StretchNSC ,
				StretchN ,
				TempDSC ,
				TempD ,
				TempHNSC ,
				TempHN ,
				SpeedSC ,
				Speed ,
				ExhaustFanDryerSC ,
				ExhaustFanDryer ,
				ExhaustFanHNSC ,
				ExhaustFanHN ,
				CleanBath1 ,
				CleanBath2 ,
				CleanFront ,
				Cambox 
			)
			VALUES
			(
				@S8ConditionId ,
                @ProductCode ,
				@SolutionNameBath1 ,
				@SolutionNameBath2 ,
				@TempJacketDrumBath1SC ,
				@TempJacketDrumBath1 ,
				@TempJacketDrumBath2SC ,
				@TempJacketDrumBath2 ,
				@TempChemicalBath1SC ,
				@TempChemicalBath1 ,
				@TempChemicalBath2SC ,
				@TempChemicalBath2 ,
				@StretchDSC ,
				@StretchD ,
				@StretchHSC ,
				@StretchH ,
				@StretchNSC ,
				@StretchN ,
				@TempDSC ,
				@TempD ,
				@TempHNSC ,
				@TempHN ,
				@SpeedSC ,
				@Speed ,
				@ExhaustFanDryerSC ,
				@ExhaustFanDryer ,
				@ExhaustFanHNSC ,
				@ExhaustFanHN ,
				@CleanBath1 ,
				@CleanBath2 ,
				@CleanFront ,
				@Cambox 
			);
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditionItems]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetS8BeforeConditionItems]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT S8ConditionId,
	Seq,
	ProductCode,
	LotNo,
	SolutionNameBath1,
	SolutionNameBath2,
	TempJacketDrumBath1,
	TempJacketDrumBath2,
	TempChemicalBath1,
	TempChemicalBath2,
	StretchD,
	StretchH,
	StretchN,
	TempD,
	TempHN,
	Speed,
	ExhaustFanDryer,
	ExhaustFanHN,
	CleanBath1,
	CleanBath2,
	CleanFront,
	Cambox
     FROM S8BeforeConditionItem
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8BeforeConditionItem]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8BeforeConditionItem] (
    @S8ConditionId int ,
	@Seq bit ,
    @ProductCode nvarchar (30),
	@LotNo nvarchar (50),
	@SolutionNameBath1 nvarchar (50),
	@SolutionNameBath2 nvarchar (50),
	@TempJacketDrumBath1 decimal(18, 3),
	@TempJacketDrumBath2 decimal(18, 3),
	@TempChemicalBath1 decimal(18, 3),
	@TempChemicalBath2 decimal(18, 3),
	@StretchD decimal(18, 3),
	@StretchH decimal(18, 3),
	@StretchN decimal(18, 3),
	@TempD decimal(18, 3),
	@TempHN decimal(18, 3),
	@Speed decimal(18, 3),
	@ExhaustFanDryer decimal(18, 3),
	@ExhaustFanHN decimal(18, 3),
	@CleanBath1 bit,
	@CleanBath2 bit,
	@CleanFront bit,
	@Cambox bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S8BeforeConditionItem WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S8BeforeConditionItem 
               SET  S8ConditionId = @S8ConditionId ,
					Seq = @Seq,
					ProductCode = @ProductCode ,
					LotNo = @LotNo,
					SolutionNameBath1 = @SolutionNameBath1 ,
					SolutionNameBath2 = @SolutionNameBath2 ,
					TempJacketDrumBath1 = @TempJacketDrumBath1 ,
					TempJacketDrumBath2 = @TempJacketDrumBath2 ,
					TempChemicalBath1 = @TempChemicalBath1 ,
					TempChemicalBath2 = @TempChemicalBath2 ,
					StretchD = @StretchD ,
					StretchH = @StretchH ,
					StretchN = @StretchN ,
					TempD = @TempD ,
					TempHN = @TempHN ,
					Speed = @Speed ,
					ExhaustFanDryer = @ExhaustFanDryer ,
					ExhaustFanHN = @ExhaustFanHN ,
					CleanBath1 = @CleanBath1 ,
					CleanBath2 = @CleanBath2 ,
					CleanFront = @CleanFront ,
					Cambox  = @Cambox 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S8BeforeConditionItem
		    (
				S8ConditionId ,
				Seq ,
				ProductCode ,
				LotNo ,
				SolutionNameBath1 ,
				SolutionNameBath2 ,
				TempJacketDrumBath1 ,
				TempJacketDrumBath2 ,
				TempChemicalBath1 ,
				TempChemicalBath2 ,
				StretchD ,
				StretchH ,
				StretchN ,
				TempD ,
				TempHN ,
				Speed ,
				ExhaustFanDryer ,
				ExhaustFanHN ,
				CleanBath1 ,
				CleanBath2 ,
				CleanFront ,
				Cambox 
			)
			VALUES
			(
				@S8ConditionId ,
				@Seq ,
                @ProductCode ,
				@LotNo ,
				@SolutionNameBath1 ,
				@SolutionNameBath2 ,
				@TempJacketDrumBath1 ,
				@TempJacketDrumBath2 ,
				@TempChemicalBath1 ,
				@TempChemicalBath2 ,
				@StretchD ,
				@StretchH ,
				@StretchN ,
				@TempD ,
				@TempHN ,
				@Speed ,
				@ExhaustFanDryer ,
				@ExhaustFanHN ,
				@CleanBath1 ,
				@CleanBath2 ,
				@CleanFront ,
				@Cambox 
			);
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPTimeTableStd]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetDIPTimeTableStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
        S7Bobbin,
        S8CoolingWaterSystemBath1SC,
        S8CoolingWaterSystemBath1,
        S8CoolingWaterSystemBath1Err,
        S8CoolingWaterSystemBath2SC,
        S8CoolingWaterSystemBath2,
        S8CoolingWaterSystemBath2Err,
        S8ChemicalWork,
        S8ChemicalFilter,
        S8SpeedSC,
        S8Speed,
        S8SpeedErr,
        S8StretchDSC,
        S8StretchD,
        S8StretchDErr,
        S8StretchHSC,
        S8StretchH,
        S8StretchHErr,
        S8StretchNSC,
        S8StretchN,
        S8StretchNErr,
        S8TempDSC,
        S8TempD,
        S8TempDErr,
        S8TempHNSC,
        S8TempHN,
        S8TempHNErr,
        S9GlideStatus
     FROM DIPTimeTableStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStd]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPTimeTableStd] (
    @ProductCode nvarchar (30) ,
	@S7Bobbin bit  ,
	@S8CoolingWaterSystemBath1SC bit  ,
	@S8CoolingWaterSystemBath1 decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Err decimal (18, 3) ,
	@S8CoolingWaterSystemBath2SC bit  ,
	@S8CoolingWaterSystemBath2 decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Err decimal (18, 3) ,
	@S8ChemicalWork nvarchar (30) ,
	@S8ChemicalFilter nvarchar (30) ,
	@S8SpeedSC bit  ,
	@S8Speed decimal (18, 3) ,
	@S8SpeedErr decimal (18, 3) ,
	@S8StretchDSC bit  ,
	@S8StretchD decimal (18, 3) ,
	@S8StretchDErr decimal (18, 3) ,
	@S8StretchHSC bit  ,
	@S8StretchH decimal (18, 3) ,
	@S8StretchHErr decimal (18, 3) ,
	@S8StretchNSC bit  ,
	@S8StretchN decimal (18, 3) ,
	@S8StretchNErr decimal (18, 3) ,
	@S8TempDSC bit  ,
	@S8TempD decimal (18, 3) ,
	@S8TempDErr decimal (18, 3) ,
	@S8TempHNSC bit  ,
	@S8TempHN decimal (18, 3) ,
	@S8TempHNErr decimal (18, 3) ,
	@S9GlideStatus bit  
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTableStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE DIPTimeTableStd 
               SET  ProductCode = @ProductCode ,
					S7Bobbin = @S7Bobbin ,
					S8CoolingWaterSystemBath1SC = @S8CoolingWaterSystemBath1SC ,
					S8CoolingWaterSystemBath1 = @S8CoolingWaterSystemBath1 ,
					S8CoolingWaterSystemBath1Err = @S8CoolingWaterSystemBath1Err ,
					S8CoolingWaterSystemBath2SC = @S8CoolingWaterSystemBath2SC ,
					S8CoolingWaterSystemBath2 = @S8CoolingWaterSystemBath2 ,
					S8CoolingWaterSystemBath2Err = @S8CoolingWaterSystemBath2Err ,
					S8ChemicalWork = @S8ChemicalWork ,
					S8ChemicalFilter = @S8ChemicalFilter ,
					S8SpeedSC = @S8SpeedSC ,
					S8Speed = @S8Speed ,
					S8SpeedErr = @S8SpeedErr ,
					S8StretchDSC = @S8StretchDSC ,
					S8StretchD = @S8StretchD ,
					S8StretchDErr = @S8StretchDErr ,
					S8StretchHSC = @S8StretchHSC ,
					S8StretchH = @S8StretchH ,
					S8StretchHErr = @S8StretchHErr ,
					S8StretchNSC = @S8StretchNSC ,
					S8StretchN = @S8StretchN ,
					S8StretchNErr = @S8StretchNErr ,
					S8TempDSC = @S8TempDSC ,
					S8TempD = @S8TempD ,
					S8TempDErr = @S8TempDErr ,
					S8TempHNSC = @S8TempHNSC ,
					S8TempHN = @S8TempHN ,
					S8TempHNErr = @S8TempHNErr ,
					S9GlideStatus  = @S9GlideStatus
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTableStd
		    (
				ProductCode ,
				S7Bobbin ,
				S8CoolingWaterSystemBath1SC ,
				S8CoolingWaterSystemBath1 ,
				S8CoolingWaterSystemBath1Err ,
				S8CoolingWaterSystemBath2SC ,
				S8CoolingWaterSystemBath2 ,
				S8CoolingWaterSystemBath2Err ,
				S8ChemicalWork ,
				S8ChemicalFilter ,
				S8SpeedSC ,
				S8Speed ,
				S8SpeedErr ,
				S8StretchDSC ,
				S8StretchD ,
				S8StretchDErr ,
				S8StretchHSC ,
				S8StretchH ,
				S8StretchHErr ,
				S8StretchNSC ,
				S8StretchN ,
				S8StretchNErr ,
				S8TempDSC ,
				S8TempD ,
				S8TempDErr ,
				S8TempHNSC ,
				S8TempHN ,
				S8TempHNErr ,
				S9GlideStatus
			)
			VALUES
			(
                @ProductCode ,
				@S7Bobbin ,
				@S8CoolingWaterSystemBath1SC ,
				@S8CoolingWaterSystemBath1 ,
				@S8CoolingWaterSystemBath1Err ,
				@S8CoolingWaterSystemBath2SC ,
				@S8CoolingWaterSystemBath2 ,
				@S8CoolingWaterSystemBath2Err ,
				@S8ChemicalWork ,
				@S8ChemicalFilter ,
				@S8SpeedSC ,
				@S8Speed ,
				@S8SpeedErr ,
				@S8StretchDSC ,
				@S8StretchD ,
				@S8StretchDErr ,
				@S8StretchHSC ,
				@S8StretchH ,
				@S8StretchHErr ,
				@S8StretchNSC ,
				@S8StretchN ,
				@S8StretchNErr ,
				@S8TempDSC ,
				@S8TempD ,
				@S8TempDErr ,
				@S8TempHNSC ,
				@S8TempHN ,
				@S8TempHNErr ,
				@S9GlideStatus 
			);
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPTimeTables]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetDIPTimeTables]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
	S7Bobbin,
	S8CoolingWaterSystemBath1,
	S8CoolingWaterSystemBath2,
	S8ChemicalWork,
	S8ChemicalFilter,
	S8Speed,
	S8StretchD,
	S8StretchH,
	S8StretchN,
	S8TempD,
	S8TempHN,
	S9GlideStatus,
	Remark
     FROM DIPTimeTable
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTable]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPTimeTable] (
    @ProductCode nvarchar (30) ,
	@S7Bobbin bit  ,
	@S8CoolingWaterSystemBath1 decimal (18, 3) ,
	@S8CoolingWaterSystemBath2 decimal (18, 3) ,
	@S8ChemicalWork nvarchar (30) ,
	@S8ChemicalFilter nvarchar (30) ,
	@S8Speed decimal (18, 3) ,
	@S8StretchD decimal (18, 3) ,
	@S8StretchH decimal (18, 3) ,
	@S8StretchN decimal (18, 3) ,
	@S8TempD decimal (18, 3) ,
	@S8TempHN decimal (18, 3) ,
	@S9GlideStatus bit  
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTable WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE DIPTimeTable
               SET  ProductCode = @ProductCode ,
					S7Bobbin = @S7Bobbin ,
					S8CoolingWaterSystemBath1 = @S8CoolingWaterSystemBath1 ,
					S8CoolingWaterSystemBath2 = @S8CoolingWaterSystemBath2 ,
					S8ChemicalWork = @S8ChemicalWork ,
					S8ChemicalFilter = @S8ChemicalFilter ,
					S8Speed = @S8Speed ,
					S8StretchD = @S8StretchD ,
					S8StretchH = @S8StretchH ,
					S8StretchN = @S8StretchN ,
					S8TempD = @S8TempD ,
					S8TempHN = @S8TempHN ,
					S9GlideStatus  = @S9GlideStatus
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTable
		    (
				ProductCode ,
				S7Bobbin ,
				S8CoolingWaterSystemBath1 ,
				S8CoolingWaterSystemBath2 ,
				S8ChemicalWork ,
				S8ChemicalFilter ,
				S8Speed ,
				S8StretchD ,
				S8StretchH ,
				S8StretchN ,
				S8TempD ,
				S8TempHN ,
				S9GlideStatus
			)
			VALUES
			(
                @ProductCode ,
				@S7Bobbin ,
				@S8CoolingWaterSystemBath1 ,
				@S8CoolingWaterSystemBath2 ,
				@S8ChemicalWork ,
				@S8ChemicalFilter ,
				@S8Speed ,
				@S8StretchD ,
				@S8StretchH ,
				@S8StretchN ,
				@S8TempD ,
				@S8TempHN ,
				@S9GlideStatus 
			);
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPPCCards]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPPCCards
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPCards NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPPCCards]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
      FROM DIPPCCardView 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPPCCard]    Script Date: 10/24/2023 16:37:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPPCCard
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPPCCard] (
  @CustomerId int = NULL out
, @ProductCode nvarchar(30)
, @DIPLotNo nvarchar(30)
, @ItemYarn nvarchar(30)
, @FinishFlag bit
, @DeleteFlag bit
, @DIPPCId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPPCCard WHERE DIPPCId = @DIPPCId)
        BEGIN
            UPDATE DIPPCCard  
               SET CustomerId = @CustomerId
			     , ProductCode = @ProductCode
                 , DIPLotNo = @DIPLotNo
                 , ItemYarn = @ItemYarn
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE DIPPCId = @DIPPCId
        END
        ELSE
        BEGIN
			INSERT INTO DIPPCCard 
		    (
			      CustomerId
                , ProductCode
                , DIPLotNo
                , ItemYarn
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
			      @CustomerId
                , @ProductCode
                , @DIPLotNo
                , @ItemYarn
                , @FinishFlag
                , @DeleteFlag
			);

			SET @DIPPCId = @@IDENTITY;
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetLastDIPPCCard]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetLastDIPPCCard
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetLastDIPPCCard NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetLastDIPPCCard]
(
  @unused int = NULL
)
AS
BEGIN
    SELECT TOP 1 
	       DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
      FROM DIPPCCardView 
     WHERE (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
	   AND (   StartTime IS NULL 
	        OR EndTime IS NULL 
			OR FinishTime IS NULL)
     ORDER BY DIPPCId DESC;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[StartDIP]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	StartDIP
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC StartDIP NULL
-- =============================================
CREATE PROCEDURE [dbo].[StartDIP]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    UPDATE DIPPCCard
       SET StartTime = GETDATE()
     WHERE DIPPCId = @DIPPCId
END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[EndDIP]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	EndDIP
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC EndDIP NULL
-- =============================================
CREATE PROCEDURE [dbo].[EndDIP]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    UPDATE DIPPCCard
       SET EndTime = GETDATE()
     WHERE DIPPCId = @DIPPCId
END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[FinishDIP]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	FinishDIP
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC FinishDIP NULL
-- =============================================
CREATE PROCEDURE [dbo].[FinishDIP]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    UPDATE DIPPCCard
       SET FinishTime = GETDATE()
         , FinishFlag = 1
     WHERE DIPPCId = @DIPPCId
END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPMaterialCheckSheets]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPMaterialCheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPCards NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPMaterialCheckSheets]
(
  @DIPPCId int = NULL
, @MaterialCheckId int = NULL
)
AS
BEGIN
    SELECT MaterialCheckId
         , DIPPCId
         , CheckDate
         , MCCode
         , DoffNo
         , ShiftName
         , UserName
      FROM DIPMaterialCheckSheet 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND MaterialCheckId = COALESCE(@MaterialCheckId, MaterialCheckId)
     ORDER BY CheckDate;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPMaterialCheckSheet]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPMaterialCheckSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPMaterialCheckSheet] (
  @DIPPCId int
, @CheckDate datetime  
, @MCCode nvarchar(10)
, @DoffNo int
, @ShiftName nvarchar(10)
, @UserName nvarchar(100)
, @MaterialCheckId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPMaterialCheckSheet 
                    WHERE MaterialCheckId = @MaterialCheckId)
        BEGIN
            UPDATE DIPMaterialCheckSheet 
               SET DIPPCId = @DIPPCId
                 , CheckDate = @CheckDate
                 , MCCode = @MCCode
                 , DoffNo = @DoffNo
                 , ShiftName = @ShiftName
                 , UserName = @UserName
             WHERE MaterialCheckId = @MaterialCheckId
        END
        ELSE
        BEGIN
			INSERT INTO DIPMaterialCheckSheet
		    (
                  DIPPCId
                , CheckDate
                , MCCode
                , DoffNo
                , ShiftName
                , UserName
			)
			VALUES
			(
                  @DIPPCId
                , @CheckDate
                , @MCCode
                , @DoffNo
                , @ShiftName
                , @UserName
			);

			SET @MaterialCheckId = @@IDENTITY;
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPMaterialCheckSheetItems]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPMaterialCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPMaterialCheckSheetItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPMaterialCheckSheetItems]
(
  @MaterialCheckId int = NULL
)
AS
BEGIN
    SELECT MaterialCheckId
         , SPNo
         , LotNo
         , CHNo
         , CheckYarnNo
         , CheckYanScrap
         , CheckYarnBall
         , CheckCover
         , CheckSensor
         , CheckDustFilter
      FROM DIPMaterialCheckSheetItem 
     WHERE MaterialCheckId = @MaterialCheckId
     ORDER BY MaterialCheckId, SPNo;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPMaterialCheckSheetItem]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPMaterialCheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPMaterialCheckSheetItem] (
  @MaterialCheckId int
, @SPNo int
, @LotNo nvarchar(30) 
, @CHNo int
, @CheckYarnNo bit
, @CheckYanScrap bit
, @CheckYarnBall bit
, @CheckCover bit
, @CheckSensor bit
, @CheckDustFilter bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPMaterialCheckSheetItem 
                    WHERE MaterialCheckId = @MaterialCheckId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE DIPMaterialCheckSheetItem 
               SET LotNo = @LotNo
                 , CHNo = @CHNo
                 , CheckYarnNo = @CheckYarnNo
                 , CheckYanScrap = @CheckYanScrap
                 , CheckYarnBall = @CheckYarnBall
                 , CheckCover = @CheckCover
                 , CheckSensor = @CheckSensor
                 , CheckDustFilter = @CheckDustFilter
             WHERE MaterialCheckId = @MaterialCheckId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO DIPMaterialCheckSheetItem
		    (
                  MaterialCheckId
                , SPNo
                , LotNo
                , CHNo
                , CheckYarnNo
                , CheckYanScrap
                , CheckYarnBall
                , CheckCover
                , CheckSensor
                , CheckDustFilter
			)
			VALUES
			(
                  @MaterialCheckId
                , @SPNo
                , @LotNo
                , @CHNo
                , @CheckYarnNo
                , @CheckYanScrap
                , @CheckYarnBall
                , @CheckCover
                , @CheckSensor
                , @CheckDustFilter
			);

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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetS7CreelCheckSheets]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS7CreelCheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS7CreelCheckSheets NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS7CreelCheckSheets]
(
  @DIPPCId int = NULL
, @CreelId int = NULL
)
AS
BEGIN
    SELECT CreelId
         , DIPPCId
         , CheckDate
         , MCCode
         , ShiftName
         , UserName
      FROM S7CreelCheckSheet 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND CreelId = COALESCE(@CreelId, CreelId)
     ORDER BY CheckDate;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS7CreelCheckSheet]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS7CreelCheckSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS7CreelCheckSheet] (
  @DIPPCId int
, @CheckDate datetime  
, @MCCode nvarchar(10)
, @ShiftName nvarchar(10)
, @UserName nvarchar(100)
, @CreelId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S7CreelCheckSheet 
                    WHERE CreelId = @CreelId)
        BEGIN
            UPDATE S7CreelCheckSheet 
               SET DIPPCId = @DIPPCId
                 , CheckDate = @CheckDate
                 , MCCode = @MCCode
                 , ShiftName = @ShiftName
                 , UserName = @UserName
             WHERE CreelId = @CreelId
        END
        ELSE
        BEGIN
			INSERT INTO S7CreelCheckSheet
		    (
                  DIPPCId
                , CheckDate
                , MCCode
                , ShiftName
                , UserName
			)
			VALUES
			(
                  @DIPPCId
                , @CheckDate
                , @MCCode
                , @ShiftName
                , @UserName
			);

			SET @CreelId = @@IDENTITY;
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetS7CreelCheckSheetItems]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS7CreelCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS7CreelCheckSheetItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS7CreelCheckSheetItems]
(
  @CreelId int = NULL
)
AS
BEGIN
    SELECT CreelId
         , SPNo
         , CheckUnstable
         , CheckNotReachEnd
         , CheckNotStraight
         , CheckHasSound
      FROM S7CreelCheckSheetItem 
     WHERE CreelId = @CreelId
     ORDER BY CreelId, SPNo;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS7CreelCheckSheetItem]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS7CreelCheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS7CreelCheckSheetItem] (
  @CreelId int
, @SPNo int
, @CheckUnstable bit
, @CheckNotReachEnd bit
, @CheckNotStraight bit
, @CheckHasSound bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S7CreelCheckSheetItem 
                    WHERE CreelId = @CreelId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE S7CreelCheckSheetItem 
               SET CheckUnstable = @CheckUnstable
                 , CheckNotReachEnd = @CheckNotReachEnd
                 , CheckNotStraight = @CheckNotStraight
                 , CheckHasSound = @CheckHasSound
             WHERE CreelId = @CreelId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO S7CreelCheckSheetItem
		    (
                  CreelId
                , SPNo
                , CheckUnstable
                , CheckNotReachEnd
                , CheckNotStraight
                , CheckHasSound
			)
			VALUES
			(
                  @CreelId
                , @SPNo
                , @CheckUnstable
                , @CheckNotReachEnd
                , @CheckNotStraight
                , @CheckHasSound
			);

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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPChemicalReqisitions]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPChemicalReqisitions
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPChemicalReqisitions NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPChemicalReqisitions]
(
  @DIPPCId int = NULL
, @ReqId int = NULL
)
AS
BEGIN
    SELECT ReqId
         , DIPPCId
         , ReqDate
         , ProductCode
         , DIPLotNo
         , SolutionName
         , TankNo
         , Quantity
         , S8LotNo
         , UserName
         , Chief
      FROM DIPChemicalReqisition 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND ReqId = COALESCE(@ReqId, ReqId)
     ORDER BY ReqDate;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPChemicalReqisition]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPChemicalReqisition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPChemicalReqisition] (
  @DIPPCId int
, @ReqDate datetime  
, @ProductCode nvarchar(30)
, @DIPLotNo nvarchar(30)
, @SolutionName nvarchar(30)
, @TankNo nvarchar(30)
, @Quantity decimal(18, 3)
, @S8LotNo nvarchar(30)
, @UserName nvarchar(100)
, @Chief nvarchar(100)
, @ReqId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPChemicalReqisition 
                    WHERE ReqId = @ReqId)
        BEGIN
            UPDATE DIPChemicalReqisition 
               SET ReqDate = @ReqDate
                 , ProductCode = @ProductCode
                 , DIPLotNo = @DIPLotNo
                 , SolutionName = @SolutionName
                 , TankNo = @TankNo
                 , Quantity = @Quantity
                 , S8LotNo = @S8LotNo
                 , UserName = @UserName
                 , Chief = @Chief
             WHERE ReqId = @ReqId
        END
        ELSE
        BEGIN
			INSERT INTO DIPChemicalReqisition
		    (
                  DIPPCId
                , ReqDate
                , ProductCode
                , DIPLotNo
                , SolutionName
                , TankNo
                , Quantity
                , S8LotNo
                , UserName
                , Chief
			)
			VALUES
			(
                  @DIPPCId
                , @ReqDate
                , @ProductCode
                , @DIPLotNo
                , @SolutionName
                , @TankNo
                , @Quantity
                , @S8LotNo
                , @UserName
                , @Chief
			);

			SET @ReqId = @@IDENTITY;
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetS9CleanCheckSheets]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS9CleanCheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS9CleanCheckSheets NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS9CleanCheckSheets]
(
  @DIPPCId int = NULL
, @CleanId int = NULL
)
AS
BEGIN
    SELECT CleanId
         , DIPPCId
         , CheckDate
         , MCCode
         , ShiftName
         , UserName
      FROM S9CleanCheckSheet 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND CleanId = COALESCE(@CleanId, CleanId)
     ORDER BY CheckDate;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS9CleanCheckSheet]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS9CleanCheckSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS9CleanCheckSheet] (
  @DIPPCId int
, @CheckDate datetime  
, @MCCode nvarchar(10)
, @ShiftName nvarchar(10)
, @UserName nvarchar(100)
, @CleanId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S9CleanCheckSheet 
                    WHERE CleanId = @CleanId)
        BEGIN
            UPDATE S9CleanCheckSheet 
               SET DIPPCId = @DIPPCId
                 , CheckDate = @CheckDate
                 , MCCode = @MCCode
                 , ShiftName = @ShiftName
                 , UserName = @UserName
             WHERE CleanId = @CleanId
        END
        ELSE
        BEGIN
			INSERT INTO S9CleanCheckSheet
		    (
                  DIPPCId
                , CheckDate
                , MCCode
                , ShiftName
                , UserName
			)
			VALUES
			(
                  @DIPPCId
                , @CheckDate
                , @MCCode
                , @ShiftName
                , @UserName
			);

			SET @CleanId = @@IDENTITY;
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetS9CleanCheckSheetItems]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS9CleanCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS9CleanCheckSheetItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS9CleanCheckSheetItems]
(
  @CleanId int = NULL
)
AS
BEGIN
    SELECT CleanId
         , SPNo
         , CheckSplitter
         , CheckRollerCeramic
         , CheckSlidebar
         , CheckRollerCambox
         , CheckTopGuide
         , CheckBottomGuide
         , CheckRollerFrontS9
      FROM S9CleanCheckSheetItem 
     WHERE CleanId = @CleanId
     ORDER BY CleanId, SPNo;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS9CleanCheckSheetItem]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS9CleanCheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS9CleanCheckSheetItem] (
  @CleanId int
, @SPNo int
, @CheckSplitter bit
, @CheckRollerCeramic bit
, @CheckSlidebar bit
, @CheckRollerCambox bit
, @CheckTopGuide bit
, @CheckBottomGuide bit
, @CheckRollerFrontS9 bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S9CleanCheckSheetItem 
                    WHERE CleanId = @CleanId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE S9CleanCheckSheetItem 
               SET CheckSplitter = @CheckSplitter
                 , CheckRollerCeramic = @CheckRollerCeramic
                 , CheckSlidebar = @CheckSlidebar
                 , CheckRollerCambox = @CheckRollerCambox
                 , CheckTopGuide = @CheckTopGuide
                 , CheckBottomGuide = @CheckBottomGuide
                 , CheckRollerFrontS9 = @CheckRollerFrontS9
             WHERE CleanId = @CleanId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO S9CleanCheckSheetItem
		    (
                  CleanId
                , SPNo
                , CheckSplitter
                , CheckRollerCeramic
                , CheckSlidebar
                , CheckRollerCambox
                , CheckTopGuide
                , CheckBottomGuide
                , CheckRollerFrontS9
			)
			VALUES
			(
                  @CleanId
                , @SPNo
                , @CheckSplitter
                , @CheckRollerCeramic
                , @CheckSlidebar
                , @CheckRollerCambox
                , @CheckTopGuide
                , @CheckBottomGuide
                , @CheckRollerFrontS9
			);

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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetS9AppearanceCheckSheets]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS9AppearanceCheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS9AppearanceCheckSheets NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS9AppearanceCheckSheets]
(
  @DIPPCId int = NULL
, @AppearId int = NULL
)
AS
BEGIN
    SELECT AppearId
         , DIPPCId
         , CheckDate
         , MCCode
         , ShiftName
         , UserName
      FROM S9AppearanceCheckSheet 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND AppearId = COALESCE(@AppearId, AppearId)
     ORDER BY CheckDate;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS9AppearanceCheckSheet]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS9AppearanceCheckSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS9AppearanceCheckSheet] (
  @DIPPCId int
, @CheckDate datetime  
, @MCCode nvarchar(10)
, @ShiftName nvarchar(10)
, @UserName nvarchar(100)
, @AppearId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S9AppearanceCheckSheet 
                    WHERE AppearId = @AppearId)
        BEGIN
            UPDATE S9AppearanceCheckSheet 
               SET DIPPCId = @DIPPCId
                 , CheckDate = @CheckDate
                 , MCCode = @MCCode
                 , ShiftName = @ShiftName
                 , UserName = @UserName
             WHERE AppearId = @AppearId
        END
        ELSE
        BEGIN
			INSERT INTO S9AppearanceCheckSheet
		    (
                  DIPPCId
                , CheckDate
                , MCCode
                , ShiftName
                , UserName
			)
			VALUES
			(
                  @DIPPCId
                , @CheckDate
                , @MCCode
                , @ShiftName
                , @UserName
			);

			SET @AppearId = @@IDENTITY;
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


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[GetS9AppearanceCheckSheetItems]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS9AppearanceCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS9AppearanceCheckSheetItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS9AppearanceCheckSheetItems]
(
  @AppearId int = NULL
)
AS
BEGIN
    SELECT AppearId
         , SPNo
         , CheckGood
         , CheckBad
         , Check2Color
         , CheckKeiba
         , CheckWeight
         , CheckFrontTwist
         , CheckBackTwist
         , CheckSnarl
         , CheckTube
      FROM S9AppearanceCheckSheetItem 
     WHERE AppearId = @AppearId
     ORDER BY AppearId, SPNo;

END

GO


/*********** Script Update Date: 2023-10-23  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS9AppearanceCheckSheetItem]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS9AppearanceCheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS9AppearanceCheckSheetItem] (
  @AppearId int
, @SPNo int
, @CheckGood bit
, @CheckBad bit
, @Check2Color bit
, @CheckKeiba bit
, @CheckWeight bit
, @CheckFrontTwist bit
, @CheckBackTwist bit
, @CheckSnarl bit
, @CheckTube bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S9AppearanceCheckSheetItem 
                    WHERE AppearId = @AppearId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE S9AppearanceCheckSheetItem 
               SET CheckGood = @CheckGood
                 , CheckBad = @CheckBad
                 , Check2Color = @Check2Color
                 , CheckKeiba = @CheckKeiba
                 , CheckWeight = @CheckWeight
                 , CheckFrontTwist = @CheckFrontTwist
                 , CheckBackTwist = @CheckBackTwist
                 , CheckSnarl = @CheckSnarl
                 , CheckTube = @CheckTube
             WHERE AppearId = @AppearId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO S9AppearanceCheckSheetItem
		    (
                  AppearId
                , SPNo
                , CheckGood
                , CheckBad
                , Check2Color
                , CheckKeiba
                , CheckWeight
                , CheckFrontTwist
                , CheckBackTwist
                , CheckSnarl
                , CheckTube
			)
			VALUES
			(
                  @AppearId
                , @SPNo
                , @CheckGood
                , @CheckBad
                , @Check2Color
                , @CheckKeiba
                , @CheckWeight
                , @CheckFrontTwist
                , @CheckBackTwist
                , @CheckSnarl
                , @CheckTube
			);

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


/*********** Script Update Date: 2023-10-23  ***********/
INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-7-1', N'S-7', 1, 130);
INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-7-2', N'S-7', 1, 150);
INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-8', N'S-8', 1, 130);
INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-9', N'S-9', 1, 130);
GO

