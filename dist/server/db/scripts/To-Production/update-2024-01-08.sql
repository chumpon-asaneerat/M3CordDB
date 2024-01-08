/*********** Script Update Date: 2024-01-08  ***********/
EXEC DROPTABLE 'DIPCondition'
GO



/*********** Script Update Date: 2024-01-08  ***********/
/****** Object:  Table [dbo].[DIPCondition]    Script Date: 1/8/2024 21:40:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPCondition](
	[DIPConditionId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NOT NULL,
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
	[S9SpongActual2] [nvarchar](50) NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy2] [nvarchar](100) NULL,
	[UpdateDate2] [datetime] NULL,
	[CheckedBy] [nvarchar](100) NULL,
	[CheckedDate] [datetime] NULL,
	[ApproveBy] [nvarchar](100) NULL,
	[ApproveDate] [datetime] NULL,
	[ShiftLeader] [nvarchar](100) NULL,
	[ProductionManager] [nvarchar](100) NULL,
 CONSTRAINT [PK_DIPCondition] PRIMARY KEY CLUSTERED 
(
	[DIPConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2024-01-08  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPCondition]    Script Date: 8/1/2567 15:58:55 ******/
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


/*********** Script Update Date: 2024-01-08  ***********/
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


/*********** Script Update Date: 2024-01-08  ***********/
/****** Object:  StoredProcedure [dbo].[SavePalletSetting]    Script Date: 1/8/2024 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SavePalletSetting
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SavePalletSetting] (
  @PCTwist1Id int
, @PalletCode nvarchar(30)
, @CreateDate datetime
, @TwistNo nvarchar(100)
, @Counter int
, @Mts nvarchar(100)
, @UserId int
, @PalletType int
, @PalletStatus int
, @PalletId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PalletSetting 
                    WHERE PalletId = @PalletId)
        BEGIN
            UPDATE PalletSetting 
               SET PCTwist1Id = @PCTwist1Id
                 , PalletCode = @PalletCode
                 , CreateDate = @CreateDate
                 , TwistNo = @TwistNo
                 , [Counter] = @Counter
                 , Mts = @Mts
                 , UserId = @UserId
                 , PalletType = @PalletType
                 , PalletStatus = @PalletStatus
             WHERE PalletId = @PalletId
        END
        ELSE
        BEGIN
			INSERT INTO PalletSetting
		    (
                  PCTwist1Id
                , PalletCode
                , CreateDate
                , TwistNo
                , [Counter]
                , Mts
                , UserId
                , PalletType
                , PalletStatus
			)
			VALUES
			(
                  @PCTwist1Id
                , @PalletCode
                , @CreateDate
                , @TwistNo
                , @Counter
                , @Mts
                , @UserId
                , @PalletType
                , @PalletStatus
			);

            SET @PalletId = @@IDENTITY;
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


/*********** Script Update Date: 2024-01-08  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS1Condition]    Script Date: 1/8/2024 22:00:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS1Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveS1Condition] (
    @PCTwist1Id int,
    @ProductCode nvarchar(30),
	@RingDiameterSC bit,
	@RingDiameter nvarchar(100),
	@RingDiameterActual nvarchar(100),
	@TwistChangeGearSC bit,
	@TwistChangeGearI decimal(18, 3),
	@TwistChangeGearIActual decimal(18, 3),
	@TwistChangeGearJ decimal(18, 3),
	@TwistChangeGearJActual decimal(18, 3),
	@TwistChangeGearK decimal(18, 3),
	@TwistChangeGearKActual decimal(18, 3),
	@LifterChangeGearSC bit,
	@LifterChangeGearA decimal(18, 3),
	@LifterChangeGearAActual decimal(18, 3),
	@LifterChangeGearB decimal(18, 3),
	@LifterChangeGearBActual decimal(18, 3),
	@OuterDiameterSC bit,
	@OuterDiameter decimal(18, 3),
	@OuterDiameterActual decimal(18, 3),
	@TravellerNoSC bit,
	@TravellerNo nvarchar(100),
	@TravellerNoActual nvarchar(100),
	@CouterUnitSC bit,
	@CouterUnit decimal(18, 3),
	@CouterUnitErr decimal(18, 3),
	@CouterUnitActual decimal(18, 3),
	@CouterUnit2SC bit,
	@CouterUnit2 decimal(18, 3),
	@CouterUnit2Err decimal(18, 3),
	@CouterUnit2Actual decimal(18, 3),
	@CouterWeightSC bit,
	@CouterWeight decimal(18, 3),
	@CouterWeightErr decimal(18, 3),
	@CouterWeightActual decimal(18, 3),
	@CouterWeight2SC bit,
	@CouterWeight2 decimal(18, 3),
	@CouterWeight2Actual decimal(18, 3),
	@CouterWeight2Err decimal(18, 3),
	@CounterSystemSC bit,
	@CounterSystem nvarchar(100),
	@CounterSystemActual bit,
	@SenserYarnBreakSC bit,
	@SenserYarnBreak nvarchar(100),
	@SenserYarnBreakActual bit,
	@CalculatedTwistingNumberSC bit,
	@CalculatedTwistingNumber decimal(18, 3),
	@CalculatedTwistingNumberErr decimal(18, 3),
	@CalculatedTwistingNumberActual decimal(18, 3),
	@NumberOfSpindleRotationSC bit,
	@NumberOfSpindleRotation decimal(18, 3),
	@NumberOfSpindleRotationErr decimal(18, 3),
	@NumberOfSpindleRotationActual decimal(18, 3),
	@YarnSpeedSC bit,
	@YarnSpeed decimal(18, 3),
	@YarnSpeedErr decimal(18, 3),
	@YarnSpeedActual decimal(18, 3),
	@SpecialMentionSC bit,
	@SpecialMention nvarchar(100),
	@SpecialMentionActual nvarchar(100),
    @UpdateBy nvarchar(100) , 
    @S1ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S1Condition WHERE S1ConditionId = @S1ConditionId)
        BEGIN
            UPDATE S1Condition 
               SET  PCTwist1Id = @PCTwist1Id ,
                    ProductCode = @ProductCode ,
                    RingDiameterSC = @RingDiameterSC ,
					RingDiameter = @RingDiameter ,
					RingDiameterActual = @RingDiameterActual ,
					TwistChangeGearSC = @TwistChangeGearSC ,
					TwistChangeGearI = @TwistChangeGearI ,
					TwistChangeGearIActual = @TwistChangeGearIActual ,
					TwistChangeGearJ = @TwistChangeGearJ ,
					TwistChangeGearJActual = @TwistChangeGearJActual ,
					TwistChangeGearK = @TwistChangeGearK ,
					TwistChangeGearKActual = @TwistChangeGearKActual ,
					LifterChangeGearSC = @LifterChangeGearSC ,
					LifterChangeGearA = @LifterChangeGearA ,
					LifterChangeGearAActual = @LifterChangeGearAActual ,
					LifterChangeGearB = @LifterChangeGearB ,
					LifterChangeGearBActual = @LifterChangeGearBActual ,
					OuterDiameterSC = @OuterDiameterSC ,
					OuterDiameter = @OuterDiameter ,
					OuterDiameterActual = @OuterDiameterActual ,
					TravellerNoSC = @TravellerNoSC ,
					TravellerNo = @TravellerNo ,
					TravellerNoActual = @TravellerNoActual ,
					CouterUnitSC = @CouterUnitSC ,
					CouterUnit = @CouterUnit ,
					CouterUnitErr = @CouterUnitErr ,
					CouterUnitActual = @CouterUnitActual ,
					CouterUnit2SC = @CouterUnit2SC ,
					CouterUnit2 = @CouterUnit2 ,
					CouterUnit2Err = @CouterUnit2Err ,
					CouterUnit2Actual = @CouterUnit2Actual ,
					CouterWeightSC = @CouterWeightSC ,
					CouterWeight = @CouterWeight ,
					CouterWeightErr = @CouterWeightErr ,
					CouterWeightActual = @CouterWeightActual ,
					CouterWeight2SC = @CouterWeight2SC ,
					CouterWeight2 = @CouterWeight2 ,
					CouterWeight2Actual = @CouterWeight2Actual ,
					CouterWeight2Err = @CouterWeight2Err ,
					CounterSystemSC = @CounterSystemSC ,
					CounterSystem = @CounterSystem ,
					CounterSystemActual = @CounterSystemActual ,
					SenserYarnBreakSC = @SenserYarnBreakSC ,
					SenserYarnBreak = @SenserYarnBreak ,
					SenserYarnBreakActual = @SenserYarnBreakActual ,
					CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
					CalculatedTwistingNumber = @CalculatedTwistingNumber ,
					CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
					CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
					NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
					NumberOfSpindleRotation = @NumberOfSpindleRotation ,
					NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
					NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
					YarnSpeedSC = @YarnSpeedSC ,
					YarnSpeed = @YarnSpeed ,
					YarnSpeedErr = @YarnSpeedErr ,
					YarnSpeedActual = @YarnSpeedActual ,
					SpecialMentionSC = @SpecialMentionSC ,
					SpecialMention = @SpecialMention ,
					SpecialMentionActual = @SpecialMentionActual ,                    
                    UpdateBy = @UpdateBy ,
                    UpdateDate = GETDATE()
             WHERE S1ConditionId = @S1ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S1Condition
		    (
                PCTwist1Id ,
                ProductCode ,
				RingDiameterSC ,
				RingDiameter ,
				RingDiameterActual ,
				TwistChangeGearSC ,
				TwistChangeGearI ,
				TwistChangeGearIActual ,
				TwistChangeGearJ ,
				TwistChangeGearJActual ,
				TwistChangeGearK ,
				TwistChangeGearKActual ,
				LifterChangeGearSC ,
				LifterChangeGearA ,
				LifterChangeGearAActual ,
				LifterChangeGearB ,
				LifterChangeGearBActual ,
				OuterDiameterSC ,
				OuterDiameter ,
				OuterDiameterActual ,
				TravellerNoSC ,
				TravellerNo ,
				TravellerNoActual ,
				CouterUnitSC ,
				CouterUnit ,
				CouterUnitErr ,
				CouterUnitActual ,
				CouterUnit2SC ,
				CouterUnit2 ,
				CouterUnit2Err ,
				CouterUnit2Actual ,
				CouterWeightSC ,
				CouterWeight ,
				CouterWeightErr ,
				CouterWeightActual ,
				CouterWeight2SC ,
				CouterWeight2 ,
				CouterWeight2Actual ,
				CouterWeight2Err ,
				CounterSystemSC ,
				CounterSystem ,
				CounterSystemActual ,
				SenserYarnBreakSC ,
				SenserYarnBreak ,
				SenserYarnBreakActual ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				YarnSpeedActual ,
				SpecialMentionSC ,
				SpecialMention ,
				SpecialMentionActual ,
                UpdateBy ,
                UpdateDate
			)
			VALUES
			(
                @PCTwist1Id ,
                @ProductCode ,
				@RingDiameterSC ,
				@RingDiameter ,
				@RingDiameterActual ,
				@TwistChangeGearSC ,
				@TwistChangeGearI ,
				@TwistChangeGearIActual ,
				@TwistChangeGearJ ,
				@TwistChangeGearJActual ,
				@TwistChangeGearK ,
				@TwistChangeGearKActual ,
				@LifterChangeGearSC ,
				@LifterChangeGearA ,
				@LifterChangeGearAActual ,
				@LifterChangeGearB ,
				@LifterChangeGearBActual ,
				@OuterDiameterSC ,
				@OuterDiameter ,
				@OuterDiameterActual ,
				@TravellerNoSC ,
				@TravellerNo ,
				@TravellerNoActual ,
				@CouterUnitSC ,
				@CouterUnit ,
				@CouterUnitErr ,
				@CouterUnitActual ,
				@CouterUnit2SC ,
				@CouterUnit2 ,
				@CouterUnit2Err ,
				@CouterUnit2Actual ,
				@CouterWeightSC ,
				@CouterWeight ,
				@CouterWeightErr ,
				@CouterWeightActual ,
				@CouterWeight2SC ,
				@CouterWeight2 ,
				@CouterWeight2Actual ,
				@CouterWeight2Err ,
				@CounterSystemSC ,
				@CounterSystem ,
				@CounterSystemActual ,
				@SenserYarnBreakSC ,
				@SenserYarnBreak ,
				@SenserYarnBreakActual ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC ,
				@SpecialMention ,
				@SpecialMentionActual , 
                @UpdateBy ,
                GETDATE()
			);

            SET @S1ConditionId = @@IDENTITY;
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


/*********** Script Update Date: 2024-01-08  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS4x1Condition]    Script Date: 1/8/2024 22:00:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x1Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveS4x1Condition] (
    @PCTwist1Id int,
    @ProductCode nvarchar(30)  ,
	@TwistChangeGearSC bit  ,
	@TwistChangeGearE decimal(18, 3)  ,
	@TwistChangeGearEActual decimal(18, 3)  ,
	@TwistChangeGearF decimal(18, 3)  ,
	@TwistChangeGearFActual decimal(18, 3)  ,
	@TwistChangeGearG decimal(18, 3)  ,
	@TwistChangeGearGActual decimal(18, 3)  ,
	@TwistChangeGearH decimal(18, 3)  ,
	@TwistChangeGearHActual decimal(18, 3)  ,
	@MotorPulleyDiaSC bit  ,
	@MotorPulleyDia decimal(18, 3)  ,
	@MotorPulleyDiaActual decimal(18, 3)  ,
	@DrivingPulleyDiaSC bit  ,
	@DrivingPulleyDia decimal(18, 3)  ,
	@DrivingPulleyDiaActual decimal(18, 3)  ,
	@OverFeedSC bit  ,
	@OverFeedRate decimal(18, 3)  ,
	@OverFeedRateActual decimal(18, 3)  ,
	@OverFeedGear decimal(18, 3)  ,
	@OverFeedGearActual decimal(18, 3)  ,
	@WindAngleSC bit  ,
	@WindAngleDeg decimal(18, 3)  ,
	@WindAngleDegActual decimal(18, 3)  ,
	@WindAngleGearA decimal(18, 3)  ,
	@WindAngleGearAActual decimal(18, 3)  ,
	@WindAngleGearB decimal(18, 3)  ,
	@WindAngleGearBActual decimal(18, 3)  ,
	@TensorDialSetSC bit  ,
	@TensorDialSet decimal(18, 3)  ,
	@TensorDialSetActual decimal(18, 3)  ,
	@NumberOfLoopSC bit  ,
	@NumberOfLoop decimal(18, 3)  ,
	@NumberOfLoopErr decimal(18, 3)  ,
	@NumberOfLoopActual decimal(18, 3)  ,
	@MethodOfKnotSC bit  ,
	@MethodOfKnot nvarchar(100)  ,
	@MethodOfKnotActual nvarchar(100)  ,
	@WindQuantitySC bit  ,
	@WindQuantity decimal(18, 3)  ,
	@WindQuantityErr decimal(18, 3)  ,
	@WindQuantityActual decimal(18, 3)  ,
	@LengthSC bit  ,
	@Length decimal(18, 3)  ,
	@LengthErr decimal(18, 3)  ,
	@LengthActual decimal(18, 3)  ,
	@DoffTimeSC bit  ,
	@DoffTime decimal(18, 3)  ,
	@DoffTimeErr decimal(18, 3)  ,
	@DoffTimeActual decimal(18, 3)  ,
	@ProductQuantitySC bit  ,
	@ProductQuantityKg decimal(18, 3)  ,
	@ProductQuantityKgActual decimal(18, 3)  ,
	@ProductQuantityDay decimal(18, 3)  ,
	@ProductQuantityDayActual decimal(18, 3)  ,
	@CalculatedTwistingNumberSC bit  ,
	@CalculatedTwistingNumber decimal(18, 3)  ,
	@CalculatedTwistingNumberErr decimal(18, 3)  ,
	@CalculatedTwistingNumberActual decimal(18, 3)  ,
	@NumberOfSpindleRotationSC bit  ,
	@NumberOfSpindleRotation decimal(18, 3)  ,
	@NumberOfSpindleRotationErr decimal(18, 3)  ,
	@NumberOfSpindleRotationActual decimal(18, 3)  ,
	@YarnSpeedSC bit  ,
	@YarnSpeed decimal(18, 3)  ,
	@YarnSpeedErr decimal(18, 3)  ,
	@YarnSpeedActual decimal(18, 3)  ,
	@SpecialMentionSC bit  ,
	@SpecialMention nvarchar(100)  ,
	@SpecialMentionActual nvarchar(100) ,  
    @UpdateBy nvarchar(100) , 
    @S4x1ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x1Condition WHERE S4x1ConditionId = @S4x1ConditionId)
        BEGIN
            UPDATE S4x1Condition 
               SET  PCTwist1Id = @PCTwist1Id ,
                    ProductCode = @ProductCode ,
                    TwistChangeGearSC = @TwistChangeGearSC ,
                    TwistChangeGearE = @TwistChangeGearE ,
                    TwistChangeGearEActual = @TwistChangeGearEActual ,
                    TwistChangeGearF = @TwistChangeGearF ,
                    TwistChangeGearFActual = @TwistChangeGearFActual ,
                    TwistChangeGearG = @TwistChangeGearG ,
                    TwistChangeGearGActual = @TwistChangeGearGActual ,
                    TwistChangeGearH = @TwistChangeGearH ,
                    TwistChangeGearHActual = @TwistChangeGearHActual ,
                    MotorPulleyDiaSC = @MotorPulleyDiaSC ,
                    MotorPulleyDia = @MotorPulleyDia ,
                    MotorPulleyDiaActual = @MotorPulleyDiaActual ,
                    DrivingPulleyDiaSC = @DrivingPulleyDiaSC ,
                    DrivingPulleyDia = @DrivingPulleyDia ,
                    DrivingPulleyDiaActual = @DrivingPulleyDiaActual ,
                    OverFeedSC = @OverFeedSC ,
                    OverFeedRate = @OverFeedRate ,
                    OverFeedRateActual = @OverFeedRateActual ,
                    OverFeedGear = @OverFeedGear ,
                    OverFeedGearActual = @OverFeedGearActual ,
                    WindAngleSC = @WindAngleSC ,
                    WindAngleDeg = @WindAngleDeg ,
                    WindAngleDegActual = @WindAngleDegActual ,
                    WindAngleGearA = @WindAngleGearA ,
                    WindAngleGearAActual = @WindAngleGearAActual ,
                    WindAngleGearB = @WindAngleGearB ,
                    WindAngleGearBActual = @WindAngleGearBActual ,

                    TensorDialSetSC = @TensorDialSetSC ,
                    TensorDialSet = @TensorDialSet ,
                    TensorDialSetActual = @TensorDialSetActual ,

                    NumberOfLoopSC = @NumberOfLoopSC ,
                    NumberOfLoop = @NumberOfLoop ,
                    NumberOfLoopActual = @NumberOfLoopActual ,
                    NumberOfLoopErr = @NumberOfLoopErr ,
                    MethodOfKnotSC = @MethodOfKnotSC ,
                    MethodOfKnot = @MethodOfKnot  ,
                    MethodOfKnotActual = @MethodOfKnotActual  ,
                    WindQuantitySC = @WindQuantitySC ,
                    WindQuantity = @WindQuantity ,
                    WindQuantityErr = @WindQuantityErr ,
                    WindQuantityActual = @WindQuantityActual ,
                    LengthSC = @LengthSC ,
                    [Length] = @Length ,
                    LengthErr = @LengthErr ,
                    LengthActual = @LengthActual ,
                    DoffTimeSC = @DoffTimeSC ,
                    DoffTime = @DoffTime ,
                    DoffTimeErr = @DoffTimeErr ,
                    DoffTimeActual = @DoffTimeActual ,
                    ProductQuantitySC = @ProductQuantitySC ,
                    ProductQuantityKg = @ProductQuantityKg ,
                    ProductQuantityKgActual = @ProductQuantityKgActual ,
                    ProductQuantityDay = @ProductQuantityDay ,
                    ProductQuantityDayActual = @ProductQuantityDayActual ,
                    CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
                    CalculatedTwistingNumber = @CalculatedTwistingNumber ,
                    CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
                    CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
                    NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
                    NumberOfSpindleRotation = @NumberOfSpindleRotation ,
                    NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
                    NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
                    YarnSpeedSC = @YarnSpeedSC ,
                    YarnSpeed = @YarnSpeed ,
                    YarnSpeedActual = @YarnSpeedActual ,
                    YarnSpeedErr = @YarnSpeedErr ,
                    SpecialMentionSC = @SpecialMentionSC ,
                    SpecialMention = @SpecialMention ,
                    SpecialMentionActual = @SpecialMentionActual , 
                    UpdateBy = @UpdateBy ,
                    UpdateDate = GETDATE()
             WHERE S4x1ConditionId = @S4x1ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S4x1Condition
		    (
                PCTwist1Id,
                ProductCode ,
				TwistChangeGearSC ,
				TwistChangeGearE ,
				TwistChangeGearEActual ,
				TwistChangeGearF ,
				TwistChangeGearFActual ,
				TwistChangeGearG ,
				TwistChangeGearGActual ,
				TwistChangeGearH ,
				TwistChangeGearHActual ,
				MotorPulleyDiaSC ,
				MotorPulleyDia ,
				MotorPulleyDiaActual ,
				DrivingPulleyDiaSC ,
				DrivingPulleyDia ,
				DrivingPulleyDiaActual ,
				OverFeedSC ,
				OverFeedRate ,
				OverFeedRateActual ,
				OverFeedGear ,
				OverFeedGearActual ,
				WindAngleSC ,
				WindAngleDeg ,
				WindAngleDegActual ,
				WindAngleGearA ,
				WindAngleGearAActual ,
				WindAngleGearB ,
				WindAngleGearBActual ,
				TensorDialSetSC,
				TensorDialSet,
				TensorDialSetActual,
				NumberOfLoopSC ,
				NumberOfLoop ,
				NumberOfLoopErr ,
				NumberOfLoopActual ,
				MethodOfKnotSC ,
				MethodOfKnot  ,
				MethodOfKnotActual  ,
				WindQuantitySC ,
				WindQuantity ,
				WindQuantityErr ,
				WindQuantityActual ,
				LengthSC ,
				[Length] ,
				LengthErr ,
				LengthActual ,
				DoffTimeSC ,
				DoffTime ,
				DoffTimeErr ,
				DoffTimeActual ,
				ProductQuantitySC ,
				ProductQuantityKg ,
				ProductQuantityKgActual ,
				ProductQuantityDay ,
				ProductQuantityDayActual ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				YarnSpeedActual ,
				SpecialMentionSC ,
				SpecialMention  ,
				SpecialMentionActual , 
                UpdateBy ,
                UpdateDate
			)
			VALUES
			(
                @PCTwist1Id ,
                @ProductCode ,
				@TwistChangeGearSC ,
				@TwistChangeGearE ,
				@TwistChangeGearEActual ,
				@TwistChangeGearF ,
				@TwistChangeGearFActual ,
				@TwistChangeGearG ,
				@TwistChangeGearGActual ,
				@TwistChangeGearH ,
				@TwistChangeGearHActual ,
				@MotorPulleyDiaSC ,
				@MotorPulleyDia ,
				@MotorPulleyDiaActual ,
				@DrivingPulleyDiaSC ,
				@DrivingPulleyDia ,
				@DrivingPulleyDiaActual ,
				@OverFeedSC ,
				@OverFeedRate ,
				@OverFeedRateActual ,
				@OverFeedGear ,
				@OverFeedGearActual ,
				@WindAngleSC ,
				@WindAngleDeg ,
				@WindAngleDegActual ,
				@WindAngleGearA ,
				@WindAngleGearAActual ,
				@WindAngleGearB ,
				@WindAngleGearBActual ,
				@TensorDialSetSC,
				@TensorDialSet,
				@TensorDialSetActual,
				@NumberOfLoopSC ,
				@NumberOfLoop ,
				@NumberOfLoopErr ,
				@NumberOfLoopActual ,
				@MethodOfKnotSC ,
				@MethodOfKnot  ,
				@MethodOfKnotActual  ,
				@WindQuantitySC ,
				@WindQuantity ,
				@WindQuantityErr ,
				@WindQuantityActual ,
				@LengthSC ,
				@Length ,
				@LengthErr ,
				@LengthActual ,
				@DoffTimeSC ,
				@DoffTime ,
				@DoffTimeErr ,
				@DoffTimeActual ,
				@ProductQuantitySC ,
				@ProductQuantityKg ,
				@ProductQuantityKgActual ,
				@ProductQuantityDay ,
				@ProductQuantityDayActual ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC ,
				@SpecialMention  ,
				@SpecialMentionActual ,
                @UpdateBy ,
                GETDATE()
			);

            SET @S4x1ConditionId = @@IDENTITY;
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


/*********** Script Update Date: 2024-01-08  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS4x2Condition]    Script Date: 1/8/2024 22:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x2Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveS4x2Condition] (
    @PCTwist1Id int,
    @ProductCode nvarchar (30),
	@FullPackageModeSC bit ,
	@FullPackageMode nvarchar (100),
	@FullPackageModeActual nvarchar (100),
	@LengthSC bit ,
	@Length decimal (18, 3),
	@LengthErr decimal (18, 3),
	@LengthActual decimal (18, 3),
	@WindAngleShiftFunctionSC bit ,
	@WindAngleShiftFunction nvarchar (100),
	@WindAngleShiftFunctionActual nvarchar (100),
	@AmountOfDisturbSC bit ,
	@AmountOfDisturb nvarchar (100),
	@AmountOfDisturbActual nvarchar (100),
	@WindAngleSC bit ,
	@WindAngle decimal (18, 3),
	@WindAngleActual decimal (18, 3),
	@DistuebAccelerationTimeSC bit ,
	@DistuebAccelerationTime decimal (18, 3),
	@DistuebAccelerationTimeActual decimal (18, 3),
	@DistuebDccelerationTimeSC bit ,
	@DistuebDccelerationTime decimal (18, 3),
	@DistuebDccelerationTimeActual decimal (18, 3),
	@TensorSettingSC bit ,
	@TensorSetting nvarchar (100),
	@TensorSettingActual nvarchar (100),
	@FeedRollerSettingSC bit ,
	@FeedRollerSetting nvarchar (100),
	@FeedRollerSettingActual nvarchar (100),
	@BollonSettingSC bit ,
	@BollonSetting nvarchar (100),
	@BollonSettingActual nvarchar (100),
	@MethodOfKnotSC bit ,
	@MethodOfKnot nvarchar (100),
	@MethodOfKnotActual nvarchar (100),
	@WindQuantitySC bit ,
	@WindQuantity decimal (18, 3),
	@WindQuantityErr decimal (18, 3),
	@WindQuantityActual decimal (18, 3),
	@DoffTimeSC bit ,
	@DoffTime decimal (18, 3),
	@DoffTimeErr decimal (18, 3),
	@DoffTimeActual decimal (18, 3),
	@ProductQuantitySC bit ,
	@ProductQuantityKg decimal (18, 3),
	@ProductQuantityKgActual decimal (18, 3),
	@ProductQuantityDay decimal (18, 3),
	@ProductQuantityDayActual decimal (18, 3),
	@CalculatedTwistingNumberSC bit ,
	@CalculatedTwistingNumber decimal (18, 3),
	@CalculatedTwistingNumberErr decimal (18, 3),
	@CalculatedTwistingNumberActual decimal (18, 3),
	@NumberOfSpindleRotationSC bit ,
	@NumberOfSpindleRotation decimal (18, 3),
	@NumberOfSpindleRotationErr decimal (18, 3),
	@NumberOfSpindleRotationActual decimal (18, 3),
	@YarnSpeedSC bit ,
	@YarnSpeed decimal (18, 3),
	@YarnSpeedErr decimal (18, 3),
	@YarnSpeedActual decimal (18, 3),
	@SpecialMentionSC bit ,
	@SpecialMention nvarchar (100),
	@SpecialMentionActual nvarchar (100) , 
    @UpdateBy nvarchar(100) , 
    @S4x2ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x2Condition WHERE S4x2ConditionId = @S4x2ConditionId)
        BEGIN
            UPDATE S4x2Condition
               SET  PCTwist1Id = @PCTwist1Id ,
                    ProductCode = @ProductCode ,
                    FullPackageModeSC = @FullPackageModeSC ,
                    FullPackageMode = @FullPackageMode ,
                    FullPackageModeActual = @FullPackageModeActual ,
                    LengthSC = @LengthSC ,
                    [Length] = @Length ,
                    LengthErr = @LengthErr ,
                    LengthActual = @LengthActual ,
                    WindAngleShiftFunctionSC = @WindAngleShiftFunctionSC ,
                    WindAngleShiftFunction = @WindAngleShiftFunction ,
                    WindAngleShiftFunctionActual = @WindAngleShiftFunctionActual ,
                    AmountOfDisturbSC = @AmountOfDisturbSC ,
                    AmountOfDisturb = @AmountOfDisturb ,
                    AmountOfDisturbActual = @AmountOfDisturbActual ,
                    WindAngleSC = @WindAngleSC ,
                    WindAngle = @WindAngle ,
                    WindAngleActual = @WindAngleActual ,
                    DistuebAccelerationTimeSC = @DistuebAccelerationTimeSC ,
                    DistuebAccelerationTime = @DistuebAccelerationTime ,
                    DistuebAccelerationTimeActual = @DistuebAccelerationTimeActual ,
                    DistuebDccelerationTimeSC = @DistuebDccelerationTimeSC ,
                    DistuebDccelerationTime = @DistuebDccelerationTime ,
                    DistuebDccelerationTimeActual = @DistuebDccelerationTimeActual ,
                    TensorSettingSC = @TensorSettingSC ,
                    TensorSetting = @TensorSetting ,
                    TensorSettingActual = @TensorSettingActual ,
                    FeedRollerSettingSC = @FeedRollerSettingSC ,
                    FeedRollerSetting = @FeedRollerSetting ,
                    FeedRollerSettingActual = @FeedRollerSettingActual ,
                    BollonSettingSC = @BollonSettingSC ,
                    BollonSetting = @BollonSetting ,
                    BollonSettingActual = @BollonSettingActual ,
                    MethodOfKnotSC = @MethodOfKnotSC ,
                    MethodOfKnot = @MethodOfKnot ,
                    MethodOfKnotActual = @MethodOfKnotActual ,
                    WindQuantitySC = @WindQuantitySC ,
                    WindQuantity = @WindQuantity ,
                    WindQuantityErr = @WindQuantityErr ,
                    WindQuantityActual = @WindQuantityActual ,
                    DoffTimeSC = @DoffTimeSC ,
                    DoffTime = @DoffTime ,
                    DoffTimeErr = @DoffTimeErr ,
                    DoffTimeActual = @DoffTimeActual ,
                    ProductQuantitySC = @ProductQuantitySC ,
                    ProductQuantityKg = @ProductQuantityKg ,
                    ProductQuantityKgActual = @ProductQuantityKgActual ,
                    ProductQuantityDay = @ProductQuantityDay ,
                    ProductQuantityDayActual = @ProductQuantityDayActual ,
                    CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
                    CalculatedTwistingNumber = @CalculatedTwistingNumber ,
                    CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
                    CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
                    NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
                    NumberOfSpindleRotation = @NumberOfSpindleRotation ,
                    NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
                    NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
                    YarnSpeedSC = @YarnSpeedSC ,
                    YarnSpeed = @YarnSpeed ,
                    YarnSpeedErr = @YarnSpeedErr ,
                    YarnSpeedActual = @YarnSpeedActual ,
                    SpecialMentionSC = @SpecialMentionSC ,
                    SpecialMention = @SpecialMention ,
                    SpecialMentionActual = @SpecialMentionActual,
                    UpdateBy = @UpdateBy ,
                    UpdateDate = GETDATE()
             WHERE S4x2ConditionId = @S4x2ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S4x2Condition
		    (
                PCTwist1Id, 
                ProductCode,
				FullPackageModeSC,
				FullPackageMode,
				FullPackageModeActual,
				LengthSC,
				[Length],
				LengthErr,
				LengthActual,
				WindAngleShiftFunctionSC,
				WindAngleShiftFunction,
				WindAngleShiftFunctionActual,
				AmountOfDisturbSC,
				AmountOfDisturb,
				AmountOfDisturbActual,
				WindAngleSC,
				WindAngle,
				WindAngleActual,
				DistuebAccelerationTimeSC,
				DistuebAccelerationTime,
				DistuebAccelerationTimeActual,
				DistuebDccelerationTimeSC,
				DistuebDccelerationTime,
				DistuebDccelerationTimeActual,
				TensorSettingSC,
				TensorSetting,
				TensorSettingActual,
				FeedRollerSettingSC,
				FeedRollerSetting,
				FeedRollerSettingActual,
				BollonSettingSC,
				BollonSetting,
				BollonSettingActual,
				MethodOfKnotSC,
				MethodOfKnot,
				MethodOfKnotActual,
				WindQuantitySC,
				WindQuantity,
				WindQuantityErr,
				WindQuantityActual,
				DoffTimeSC,
				DoffTime,
				DoffTimeErr,
				DoffTimeActual,
				ProductQuantitySC,
				ProductQuantityKg,
				ProductQuantityKgActual,
				ProductQuantityDay,
				ProductQuantityDayActual,
				CalculatedTwistingNumberSC,
				CalculatedTwistingNumber,
				CalculatedTwistingNumberErr,
				CalculatedTwistingNumberActual,
				NumberOfSpindleRotationSC,
				NumberOfSpindleRotation,
				NumberOfSpindleRotationErr,
				NumberOfSpindleRotationActual,
				YarnSpeedSC,
				YarnSpeed,
				YarnSpeedErr,
				YarnSpeedActual,
				SpecialMentionSC,
				SpecialMention,
				SpecialMentionActual ,
                UpdateBy ,
                UpdateDate
			)
			VALUES
			(
                @PCTwist1Id ,
                @ProductCode ,
				@FullPackageModeSC  ,
				@FullPackageMode ,
				@FullPackageModeActual ,
				@LengthSC  ,
				@Length ,
				@LengthErr ,
				@LengthActual ,
				@WindAngleShiftFunctionSC  ,
				@WindAngleShiftFunction ,
				@WindAngleShiftFunctionActual ,
				@AmountOfDisturbSC  ,
				@AmountOfDisturb ,
				@AmountOfDisturbActual ,
				@WindAngleSC  ,
				@WindAngle ,
				@WindAngleActual ,
				@DistuebAccelerationTimeSC  ,
				@DistuebAccelerationTime ,
				@DistuebAccelerationTimeActual ,
				@DistuebDccelerationTimeSC  ,
				@DistuebDccelerationTime ,
				@DistuebDccelerationTimeActual ,
				@TensorSettingSC  ,
				@TensorSetting ,
				@TensorSettingActual ,
				@FeedRollerSettingSC  ,
				@FeedRollerSetting ,
				@FeedRollerSettingActual ,
				@BollonSettingSC  ,
				@BollonSetting ,
				@BollonSettingActual ,
				@MethodOfKnotSC  ,
				@MethodOfKnot ,
				@MethodOfKnotActual ,
				@WindQuantitySC  ,
				@WindQuantity ,
				@WindQuantityErr ,
				@WindQuantityActual ,
				@DoffTimeSC  ,
				@DoffTime ,
				@DoffTimeErr ,
				@DoffTimeActual ,
				@ProductQuantitySC  ,
				@ProductQuantityKg ,
				@ProductQuantityKgActual ,
				@ProductQuantityDay ,
				@ProductQuantityDayActual ,
				@CalculatedTwistingNumberSC  ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC  ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC  ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC  ,
				@SpecialMention ,
				@SpecialMentionActual ,
                @UpdateBy ,
                GETDATE()
			);

            SET @S4x2ConditionId = @@IDENTITY;
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


/*********** Script Update Date: 2024-01-08  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS5Condition]    Script Date: 1/8/2024 22:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS5Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveS5Condition] (
	@ProductCode nvarchar (30),
	@MainSupplySteamPressureSC bit,
	@MainSupplySteamPressureSet decimal (18, 3),
	@MainSupplySteamPressureSetErr decimal (18, 3),
	@MainSupplySteamPressureSetActual decimal (18, 3),
	@MainSupplySteamPressureSpec decimal (18, 3),
	@MainSupplySteamPressureSpecErr decimal (18, 3),
	@MainSupplySteamPressureSpecActual decimal (18, 3),
	@AgeingSteamPressureSC bit,
	@AgeingSteamPressureSet decimal (18, 3),
	@AgeingSteamPressureSetErr decimal (18, 3),
	@AgeingSteamPressureSetActual decimal (18, 3),
	@AgeingSteamPressureSpec decimal (18, 3),
	@AgeingSteamPressureSpecErr decimal (18, 3),
	@AgeingSteamPressureActual decimal (18, 3),
	@SettingTemperatureSC bit,
	@SettingTemperatureSet decimal (18, 3),
	@SettingTemperatureSetErr decimal (18, 3),
	@SettingTemperatureSetActual decimal (18, 3),
	@SettingTemperatureSpec decimal (18, 3),
	@SettingTemperatureSpecErr decimal (18, 3),
	@SettingTemperatureSpecActual decimal (18, 3),
	@SettingTimeSC bit,
	@SettingTimeSet decimal (18, 3),
	@SettingTimeSetErr decimal (18, 3),
	@SettingTimeSetActual decimal (18, 3),
	@SettingTimeSpec decimal (18, 3),
	@SettingTimeSpecErr decimal (18, 3),
	@SettingTimeSpecActual decimal (18, 3),
	@LampStatusSystemSC bit,
	@LampStatusSystemSet nvarchar (100),
	@LampStatusSystemSetActual bit,
	@LampStatusSystemSpec nvarchar (100),
	@LampStatusSystemSpecActual bit,
	@SoudSystemTemperatureSC bit,
	@SoudSystemTemperatureSet nvarchar (100),
	@SoudSystemTemperatureSetActual bit,
	@SoudSystemTemperatureSpec nvarchar (100),
	@SoudSystemTemperatureSpecActual bit,
	@YarnTypeSC bit,
	@YarnTypeSet nvarchar (100),
	@YarnTypeSetActual nvarchar (100),
	@YarnTypeSpec nvarchar (100),
	@YarnTypeSpecActual nvarchar (100),
	@CordStructureSC bit,
	@CordStructureSet nvarchar (100),
	@CordStructureSetActual nvarchar (100),
	@CordStructureSpec nvarchar (100),
	@CordStructureSpecActual nvarchar (100),
	@TwistingNoSC bit,
	@TwistingNoSet decimal (18, 3),
	@TwistingNoSetErr decimal (18, 3),
	@TwistingNoSetActual decimal (18, 3),
	@TwistingNoSpec decimal (18, 3),
	@TwistingNoSpecErr decimal (18, 3),
	@TwistingNoSpecActual decimal (18, 3),
	@UnitWeightSC bit,
	@UnitWeightSet decimal (18, 3),
	@UnitWeightSetErr decimal (18, 3),
	@UnitWeightSetActual decimal (18, 3),
	@UnitWeightSpec decimal (18, 3),
	@UnitWeightSpecErr decimal (18, 3),
	@UnitWeightSpecActual decimal (18, 3),
	@StartingTimeSC bit,
	@StartingTimeSettingTime datetime,
	@StartingTimeStartAgeingTime datetime,
	@FinishTimeSC bit,
	@FinishTime datetime,
	@OutTimeSC bit,
	@OutTime datetime,
	@DoffNo1SC bit,
	@DoffNo1PalletCode nvarchar (50),
	@DoffNo1TraceNo nvarchar (50),
	@DoffNo1MCNo nvarchar (50),
	@DoffNo1Doff nvarchar (50),
	@DoffNo1Qty nvarchar (50),
	@DoffNo2SC bit,
	@DoffNo2PalletCode nvarchar (50),
	@DoffNo2TraceNo nvarchar (50),
	@DoffNo2MCNo nvarchar (50),
	@DoffNo2Doff nvarchar (50),
	@DoffNo2Qty nvarchar (50),
    @UpdateBy nvarchar(100) , 
	@Remark nvarchar(MAX),
    @ProductCode1 nvarchar(30),
    @ProductCode2 nvarchar(30),
    @FromSource int,
    @CustomerName nvarchar(100),
    @ProductName1 nvarchar(100),
    @ProductName2 nvarchar(100),
    @IssueDate datetime , 
    @IssueBy nvarchar(100), 
    @S5ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S5Condition WHERE S5ConditionId = @S5ConditionId)
        BEGIN
            UPDATE S5Condition 
               SET ProductCode = @ProductCode,
					MainSupplySteamPressureSC = @MainSupplySteamPressureSC,
					MainSupplySteamPressureSet = @MainSupplySteamPressureSet,
					MainSupplySteamPressureSetErr = @MainSupplySteamPressureSetErr,
					MainSupplySteamPressureSetActual = @MainSupplySteamPressureSetActual,
					MainSupplySteamPressureSpec = @MainSupplySteamPressureSpec,
					MainSupplySteamPressureSpecErr = @MainSupplySteamPressureSpecErr,
					MainSupplySteamPressureSpecActual = @MainSupplySteamPressureSpecActual,
					AgeingSteamPressureSC = @AgeingSteamPressureSC,
					AgeingSteamPressureSet = @AgeingSteamPressureSet,
					AgeingSteamPressureSetErr = @AgeingSteamPressureSetErr,
					AgeingSteamPressureSetActual = @AgeingSteamPressureSetActual ,
					AgeingSteamPressureSpec = @AgeingSteamPressureSpec ,
					AgeingSteamPressureSpecErr = @AgeingSteamPressureSpecErr ,
					AgeingSteamPressureActual = @AgeingSteamPressureActual ,
					SettingTemperatureSC = @SettingTemperatureSC ,
					SettingTemperatureSet = @SettingTemperatureSet ,
					SettingTemperatureSetErr = @SettingTemperatureSetErr ,
					SettingTemperatureSetActual = @SettingTemperatureSetActual ,
					SettingTemperatureSpec = @SettingTemperatureSpec ,
					SettingTemperatureSpecErr = @SettingTemperatureSpecErr ,
					SettingTemperatureSpecActual = @SettingTemperatureSpecActual ,
					SettingTimeSC = @SettingTimeSC ,
					SettingTimeSet = @SettingTimeSet ,
					SettingTimeSetErr = @SettingTimeSetErr ,
					SettingTimeSetActual = @SettingTimeSetActual ,
					SettingTimeSpec = @SettingTimeSpec ,
					SettingTimeSpecErr = @SettingTimeSpecErr ,
					SettingTimeSpecActual = @SettingTimeSpecActual ,
					LampStatusSystemSC = @LampStatusSystemSC ,
					LampStatusSystemSet = @LampStatusSystemSet ,
					LampStatusSystemSetActual = @LampStatusSystemSetActual ,
					LampStatusSystemSpec = @LampStatusSystemSpec ,
					LampStatusSystemSpecActual = @LampStatusSystemSpecActual ,
					SoudSystemTemperatureSC = @SoudSystemTemperatureSC ,
					SoudSystemTemperatureSet = @SoudSystemTemperatureSet ,
					SoudSystemTemperatureSetActual = @SoudSystemTemperatureSetActual ,
					SoudSystemTemperatureSpec = @SoudSystemTemperatureSpec ,
					SoudSystemTemperatureSpecActual = @SoudSystemTemperatureSpecActual ,
					YarnTypeSC = @YarnTypeSC ,
					YarnTypeSet = @YarnTypeSet ,
					YarnTypeSetActual = @YarnTypeSetActual ,
					YarnTypeSpec = @YarnTypeSpec ,
					YarnTypeSpecActual = @YarnTypeSpecActual ,
					CordStructureSC = @CordStructureSC ,
					CordStructureSet = @CordStructureSet ,
					CordStructureSetActual = @CordStructureSetActual ,
					CordStructureSpec = @CordStructureSpec ,
					CordStructureSpecActual = @CordStructureSpecActual ,
					TwistingNoSC = @TwistingNoSC ,
					TwistingNoSet = @TwistingNoSet ,
					TwistingNoSetErr = @TwistingNoSetErr ,
					TwistingNoSetActual = @TwistingNoSetActual ,
					TwistingNoSpec = @TwistingNoSpec ,
					TwistingNoSpecErr = @TwistingNoSpecErr ,
					TwistingNoSpecActual = @TwistingNoSpecActual ,
					UnitWeightSC = @UnitWeightSC ,
					UnitWeightSet = @UnitWeightSet ,
					UnitWeightSetErr = @UnitWeightSetErr ,
					UnitWeightSetActual = @UnitWeightSetActual ,
					UnitWeightSpec = @UnitWeightSpec ,
					UnitWeightSpecErr = @UnitWeightSpecErr ,
					UnitWeightSpecActual = @UnitWeightSpecActual ,
					StartingTimeSC = @StartingTimeSC ,
					StartingTimeSettingTime = @StartingTimeSettingTime ,
					StartingTimeStartAgeingTime = @StartingTimeStartAgeingTime ,
					FinishTimeSC = @FinishTimeSC ,
					FinishTime = @FinishTime ,
					OutTimeSC = @OutTimeSC ,
					OutTime = @OutTime ,
					DoffNo1SC = @DoffNo1SC ,
					DoffNo1PalletCode = @DoffNo1PalletCode ,
					DoffNo1TraceNo = @DoffNo1TraceNo ,
					DoffNo1MCNo = @DoffNo1MCNo ,
					DoffNo1Doff = @DoffNo1Doff ,
					DoffNo1Qty = @DoffNo1Qty ,
					DoffNo2SC = @DoffNo2SC ,
					DoffNo2PalletCode = @DoffNo2PalletCode ,
					DoffNo2TraceNo = @DoffNo2TraceNo ,
					DoffNo2MCNo = @DoffNo2MCNo ,
					DoffNo2Doff = @DoffNo2Doff ,
					DoffNo2Qty = @DoffNo2Qty ,
                    UpdateBy = @UpdateBy ,
                    UpdateDate = GETDATE(),
					[Remark] = @Remark,
                    ProductCode1 = @ProductCode1,
                    ProductCode2 = @ProductCode2,
                    FromSource = @FromSource,
                    CustomerName = @CustomerName,
                    ProductName1 = @ProductName1,
                    ProductName2 = @ProductName2,
                    IssueBy = @IssueBy,
                    IssueDate = @IssueDate
             WHERE S5ConditionId = @S5ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S5Condition
		    (
                ProductCode ,
				MainSupplySteamPressureSC ,
				MainSupplySteamPressureSet ,
				MainSupplySteamPressureSetErr ,
				MainSupplySteamPressureSetActual ,
				MainSupplySteamPressureSpec ,
				MainSupplySteamPressureSpecErr ,
				MainSupplySteamPressureSpecActual ,
				AgeingSteamPressureSC ,
				AgeingSteamPressureSet ,
				AgeingSteamPressureSetErr ,
				AgeingSteamPressureSetActual ,
				AgeingSteamPressureSpec ,
				AgeingSteamPressureSpecErr ,
				AgeingSteamPressureActual ,
				SettingTemperatureSC ,
				SettingTemperatureSet ,
				SettingTemperatureSetErr ,
				SettingTemperatureSetActual ,
				SettingTemperatureSpec ,
				SettingTemperatureSpecErr ,
				SettingTemperatureSpecActual ,
				SettingTimeSC ,
				SettingTimeSet ,
				SettingTimeSetErr ,
				SettingTimeSetActual ,
				SettingTimeSpec ,
				SettingTimeSpecErr ,
				SettingTimeSpecActual ,
				LampStatusSystemSC ,
				LampStatusSystemSet ,
				LampStatusSystemSetActual ,
				LampStatusSystemSpec ,
				LampStatusSystemSpecActual ,
				SoudSystemTemperatureSC ,
				SoudSystemTemperatureSet ,
				SoudSystemTemperatureSetActual ,
				SoudSystemTemperatureSpec ,
				SoudSystemTemperatureSpecActual ,
				YarnTypeSC ,
				YarnTypeSet ,
				YarnTypeSetActual ,
				YarnTypeSpec ,
				YarnTypeSpecActual ,
				CordStructureSC ,
				CordStructureSet ,
				CordStructureSetActual ,
				CordStructureSpec ,
				CordStructureSpecActual ,
				TwistingNoSC ,
				TwistingNoSet ,
				TwistingNoSetErr ,
				TwistingNoSetActual ,
				TwistingNoSpec ,
				TwistingNoSpecErr ,
				TwistingNoSpecActual ,
				UnitWeightSC ,
				UnitWeightSet ,
				UnitWeightSetErr ,
				UnitWeightSetActual ,
				UnitWeightSpec ,
				UnitWeightSpecErr ,
				UnitWeightSpecActual ,
				StartingTimeSC ,
				StartingTimeSettingTime,
				StartingTimeStartAgeingTime,
				FinishTimeSC ,
				FinishTime,
				OutTimeSC ,
				OutTime,
				DoffNo1SC ,
				DoffNo1PalletCode,
				DoffNo1TraceNo,
				DoffNo1MCNo,
				DoffNo1Doff,
				DoffNo1Qty,
				DoffNo2SC ,
				DoffNo2PalletCode,
				DoffNo2TraceNo,
				DoffNo2MCNo,
				DoffNo2Doff,
				DoffNo2Qty,
                UpdateBy ,
                UpdateDate,
				[Remark],
                ProductCode1,
                ProductCode2,
                FromSource,
                CustomerName,
                ProductName1,
                ProductName2,
                IssueBy,
                IssueDate
			)
			VALUES
			(
                @ProductCode ,
				@MainSupplySteamPressureSC ,
				@MainSupplySteamPressureSet ,
				@MainSupplySteamPressureSetErr ,
				@MainSupplySteamPressureSetActual ,
				@MainSupplySteamPressureSpec ,
				@MainSupplySteamPressureSpecErr ,
				@MainSupplySteamPressureSpecActual ,
				@AgeingSteamPressureSC ,
				@AgeingSteamPressureSet ,
				@AgeingSteamPressureSetErr ,
				@AgeingSteamPressureSetActual ,
				@AgeingSteamPressureSpec ,
				@AgeingSteamPressureSpecErr ,
				@AgeingSteamPressureActual ,
				@SettingTemperatureSC ,
				@SettingTemperatureSet ,
				@SettingTemperatureSetErr ,
				@SettingTemperatureSetActual ,
				@SettingTemperatureSpec ,
				@SettingTemperatureSpecErr ,
				@SettingTemperatureSpecActual ,
				@SettingTimeSC ,
				@SettingTimeSet ,
				@SettingTimeSetErr ,
				@SettingTimeSetActual ,
				@SettingTimeSpec ,
				@SettingTimeSpecErr ,
				@SettingTimeSpecActual ,
				@LampStatusSystemSC ,
				@LampStatusSystemSet ,
				@LampStatusSystemSetActual ,
				@LampStatusSystemSpec ,
				@LampStatusSystemSpecActual ,
				@SoudSystemTemperatureSC ,
				@SoudSystemTemperatureSet ,
				@SoudSystemTemperatureSetActual ,
				@SoudSystemTemperatureSpec ,
				@SoudSystemTemperatureSpecActual ,
				@YarnTypeSC ,
				@YarnTypeSet ,
				@YarnTypeSetActual ,
				@YarnTypeSpec ,
				@YarnTypeSpecActual ,
				@CordStructureSC ,
				@CordStructureSet ,
				@CordStructureSetActual ,
				@CordStructureSpec ,
				@CordStructureSpecActual ,
				@TwistingNoSC ,
				@TwistingNoSet ,
				@TwistingNoSetErr ,
				@TwistingNoSetActual ,
				@TwistingNoSpec ,
				@TwistingNoSpecErr ,
				@TwistingNoSpecActual ,
				@UnitWeightSC ,
				@UnitWeightSet ,
				@UnitWeightSetErr ,
				@UnitWeightSetActual ,
				@UnitWeightSpec ,
				@UnitWeightSpecErr ,
				@UnitWeightSpecActual ,
				@StartingTimeSC ,
				@StartingTimeSettingTime,
				@StartingTimeStartAgeingTime,
				@FinishTimeSC ,
				@FinishTime,
				@OutTimeSC ,
				@OutTime,
				@DoffNo1SC ,
				@DoffNo1PalletCode,
				@DoffNo1TraceNo,
				@DoffNo1MCNo,
				@DoffNo1Doff,
				@DoffNo1Qty,
				@DoffNo2SC ,
				@DoffNo2PalletCode,
				@DoffNo2TraceNo,
				@DoffNo2MCNo,
				@DoffNo2Doff,
				@DoffNo2Qty,
                @UpdateBy ,
                GETDATE(),
				@Remark,
                @ProductCode1,
                @ProductCode2,
                @FromSource,
                @CustomerName,
                @ProductName1,
                @ProductName2,
                @IssueBy,
                @IssueDate
			);

            SET @S5ConditionId = @@IDENTITY;
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

