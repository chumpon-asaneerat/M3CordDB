/*********** Script Update Date: 2024-03-15  ***********/
ALTER TABLE S8WetPickup ALTER COLUMN AMV1 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMV2 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMV3 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMV4 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMAmp1 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMAmp2 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMAmp3 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMAmp4 nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S8DippingNo2NipFrontActual nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S8DippingNo2NipFrontActual2 nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S8DippingNo2NipBackActual nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S8DippingNo2NipBackActual2 nvarchar(50)
GO

ALTER TABLE S9AppearanceCheckSheetItem ALTER COLUMN CheckWeight nvarchar(50)
GO

ALTER TABLE S9AppearanceCheckSheetItem ADD [Remark] nvarchar(100)
GO

UPDATE S9AppearanceCheckSheetItem SET CheckWeight = NULL;
GO


/*********** Script Update Date: 2024-03-15  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8WetPickup]    Script Date: 3/16/2024 5:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8WetPickup] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @CustomerName nvarchar(30)
, @FirstDip1 nvarchar(50)
, @SolutionName nvarchar(50)
, @FirstDip2 nvarchar(50)
, @SolutionLotNo nvarchar(50)
, @SpeedSet decimal(18, 3) 
, @SpeedActual decimal(18, 3) 
, @StretchD decimal(18, 3) 
, @StretchH decimal(18, 3) 
, @StretchN decimal(18, 3) 
, @TempD decimal(18, 3) 
, @TempHN decimal(18, 3) 
, @AMV1 nvarchar(50) 
, @AMV2 nvarchar(50) 
, @AMV3 nvarchar(50) 
, @AMV4 nvarchar(50) 
, @AMAmp1 nvarchar(50) 
, @AMAmp2 nvarchar(50) 
, @AMAmp3 nvarchar(50) 
, @AMAmp4 nvarchar(50) 
, @AMBearing1 bit 
, @AMBearing2 bit 
, @AMBearing3 bit 
, @AMBearing4 bit 
, @AMMotorNoise1 bit 
, @AMMotorNoise2 bit 
, @AMMotorNoise3 bit 
, @AMMotorNoise4 bit 
, @AMNoVibration1 bit 
, @AMNoVibration2 bit 
, @AMNoVibration3 bit 
, @AMNoVibration4 bit 
, @BurnerD bit 
, @BurnerHN bit 
, @GasLeakD bit 
, @GasLeakHN bit 
, @GasPresureD decimal(18, 3) 
, @GasPresureHN decimal(18, 3) 
, @AirPresureD decimal(18, 3) 
, @AirPresureHN decimal(18, 3) 
, @ACMotorExhaustFanD bit 
, @ACMotorExhaustFanHN bit 
, @ACMotorSupplyD bit 
, @ACMotorSupplyHN bit 
, @ExhaustFan1 bit 
, @ExhaustFan2 bit 
, @ExhaustFanSupply1 bit 
, @ExhaustFanSupply2 bit 
, @Remark nvarchar(200)
, @Opertor nvarchar (100) 
, @Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8WetPickup 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
                      --AND DoffingNo = @DoffingNo
                  )
        BEGIN
            UPDATE S8WetPickup 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , CustomerName = @CustomerName
                 , FirstDip1 = @FirstDip1
                 , SolutionName = @SolutionName
                 , FirstDip2 = @FirstDip2
                 , SolutionLotNo = @SolutionLotNo
                 , SpeedSet = @SpeedSet
                 , SpeedActual = @SpeedActual
                 , StretchD = @StretchD
                 , StretchH = @StretchH
                 , StretchN = @StretchN
                 , TempD = @TempD
                 , TempHN = @TempHN
                 , AMV1 = @AMV1
                 , AMV2 = @AMV2
                 , AMV3 = @AMV3
                 , AMV4 = @AMV4
                 , AMAmp1 = @AMAmp1
                 , AMAmp2 = @AMAmp2
                 , AMAmp3 = @AMAmp3
                 , AMAmp4 = @AMAmp4
                 , AMBearing1 = @AMBearing1
                 , AMBearing2 = @AMBearing2
                 , AMBearing3 = @AMBearing3
                 , AMBearing4 = @AMBearing4
                 , AMMotorNoise1 = @AMMotorNoise1
                 , AMMotorNoise2 = @AMMotorNoise2
                 , AMMotorNoise3 = @AMMotorNoise3
                 , AMMotorNoise4 = @AMMotorNoise4
                 , AMNoVibration1 = @AMNoVibration1
                 , AMNoVibration2 = @AMNoVibration2
                 , AMNoVibration3 = @AMNoVibration3
                 , AMNoVibration4 = @AMNoVibration4
                 , BurnerD = @BurnerD
                 , BurnerHN = @BurnerHN
                 , GasLeakD = @GasLeakD
                 , GasLeakHN = @GasLeakHN
                 , GasPresureD = @GasPresureD
                 , GasPresureHN = @GasPresureHN
                 , AirPresureD = @AirPresureD
                 , AirPresureHN = @AirPresureHN
                 , ACMotorExhaustFanD = @ACMotorExhaustFanD
                 , ACMotorExhaustFanHN = @ACMotorExhaustFanHN
                 , ACMotorSupplyD = @ACMotorSupplyD
                 , ACMotorSupplyHN = @ACMotorSupplyHN
                 , ExhaustFan1 = @ExhaustFan1
                 , ExhaustFan2 = @ExhaustFan2
                 , ExhaustFanSupply1 = @ExhaustFanSupply1
                 , ExhaustFanSupply2 = @ExhaustFanSupply2
                 , Remark = @Remark
				 , Opertor = @Opertor 
				 , Leader = @Leader   
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
        END
        ELSE
        BEGIN
			INSERT INTO S8WetPickup
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , CustomerName
                , FirstDip1
                , SolutionName
                , FirstDip2
                , SolutionLotNo
                , SpeedSet
                , SpeedActual
                , StretchD
                , StretchH
                , StretchN
                , TempD
                , TempHN
                , AMV1
                , AMV2
                , AMV3
                , AMV4
                , AMAmp1
                , AMAmp2
                , AMAmp3
                , AMAmp4
                , AMBearing1
                , AMBearing2
                , AMBearing3
                , AMBearing4
                , AMMotorNoise1
                , AMMotorNoise2
                , AMMotorNoise3
                , AMMotorNoise4
                , AMNoVibration1
                , AMNoVibration2
                , AMNoVibration3
                , AMNoVibration4
                , BurnerD
                , BurnerHN
                , GasLeakD
                , GasLeakHN
                , GasPresureD
                , GasPresureHN
                , AirPresureD
                , AirPresureHN
                , ACMotorExhaustFanD
                , ACMotorExhaustFanHN
                , ACMotorSupplyD
                , ACMotorSupplyHN
                , ExhaustFan1
                , ExhaustFan2
                , ExhaustFanSupply1
                , ExhaustFanSupply2
                , Remark
				, Opertor 
		        , Leader 
			)
			VALUES
			(
                  @ProductCode
                , @LotNo
                , @DoffingDate
                , @CustomerName
                , @FirstDip1
                , @SolutionName
                , @FirstDip2
                , @SolutionLotNo
                , @SpeedSet
                , @SpeedActual
                , @StretchD
                , @StretchH
                , @StretchN
                , @TempD
                , @TempHN
                , @AMV1
                , @AMV2
                , @AMV3
                , @AMV4
                , @AMAmp1
                , @AMAmp2
                , @AMAmp3
                , @AMAmp4
                , @AMBearing1
                , @AMBearing2
                , @AMBearing3
                , @AMBearing4
                , @AMMotorNoise1
                , @AMMotorNoise2
                , @AMMotorNoise3
                , @AMMotorNoise4
                , @AMNoVibration1
                , @AMNoVibration2
                , @AMNoVibration3
                , @AMNoVibration4
                , @BurnerD
                , @BurnerHN
                , @GasLeakD
                , @GasLeakHN
                , @GasPresureD
                , @GasPresureHN
                , @AirPresureD
                , @AirPresureHN
                , @ACMotorExhaustFanD
                , @ACMotorExhaustFanHN
                , @ACMotorSupplyD
                , @ACMotorSupplyHN
                , @ExhaustFan1
                , @ExhaustFan2
                , @ExhaustFanSupply1
                , @ExhaustFanSupply2
                , @Remark
				, @Opertor 
		        , @Leader 
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


/*********** Script Update Date: 2024-03-15  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPCondition]    Script Date: 3/16/2024 6:02:37 ******/
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
	@S8DippingNo2NipFrontActual nvarchar (50) , -- Change Type 2024-03-15
	@S8DippingNo2NipFrontSet2 nvarchar (50) ,
	@S8DippingNo2NipFrontActual2 nvarchar (50) , -- Change Type 2024-03-15
	@S8DippingNo2NipBackSC bit  ,
	@S8DippingNo2NipBackSet nvarchar (50) ,
	@S8DippingNo2NipBackActual nvarchar (50) , -- Change Type 2024-03-15
	@S8DippingNo2NipBackSet2 nvarchar (50) ,
	@S8DippingNo2NipBackActual2 nvarchar (50) , -- Change Type 2024-03-15
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


/*********** Script Update Date: 2024-03-15  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8WetPickupItem]    Script Date: 3/16/2024 6:28:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8WetPickupItem] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @DoffingNo int
, @TwistNo int
, @RowType int
, @NipPressure nvarchar(50)
, @WPU decimal(18, 3) 
, @WPUErr decimal(18, 3) 
, @WPUValue decimal(18, 3) 
, @FirstAmt decimal(18, 3) 
, @UseAmt decimal(18, 3) 
, @RestAmt decimal(18, 3) 
, @ThrowAmt decimal(18, 3) 
, @Operator nvarchar (100) 
, @UpdateDate datetime 
, @Remark nvarchar (200) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8WetPickupItem 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      --AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
					  AND DoffingDate = @DoffingDate
                      AND DoffNo = @DoffingNo
                      AND TwistNo = @TwistNo
                      AND RowType = @RowType
                  )
        BEGIN
            UPDATE S8WetPickupItem 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , DoffNo = @DoffingNo
                 , TwistNo = @TwistNo
                 , RowType = @RowType
                 , NipPressure = @NipPressure
                 , WPU = @WPU
                 , WPUErr = @WPUErr
                 , WPUValue = @WPUValue
                 , FirstAmt = @FirstAmt
                 , UseAmt = @UseAmt
                 , RestAmt = @RestAmt
                 , ThrowAmt = @ThrowAmt
                 , Operator = @Operator
                 , UpdateDate = @UpdateDate
                 , Remark = @Remark
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
               AND DoffNo = @DoffingNo
               AND TwistNo = @TwistNo
               AND RowType = @RowType
        END
        ELSE
        BEGIN
			INSERT INTO S8WetPickupItem
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , DoffNo
                , TwistNo
                , RowType
                , NipPressure
                , WPU
                , WPUErr
                , WPUValue
                , FirstAmt
                , UseAmt
                , RestAmt
                , ThrowAmt
                , Operator
                , UpdateDate
                , [Remark]
			)
			VALUES
			(
                  @ProductCode
                , @LotNo
                , @DoffingDate
                , @DoffingNo
                , @TwistNo
                , @RowType
                , @NipPressure
                , @WPU
                , @WPUErr
                , @WPUValue
                , @FirstAmt
                , @UseAmt
                , @RestAmt
                , @ThrowAmt
                , @Operator
                , @UpdateDate
                , @Remark
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


/*********** Script Update Date: 2024-03-15  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8x2WetPickupItem]    Script Date: 3/16/2024 6:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8x2WetPickupItem] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @DoffingNo int
, @TwistNo int
, @RowType int
, @NipPressure nvarchar(50)
, @WPU decimal(18, 3) 
, @WPUErr decimal(18, 3) 
, @WPUValue decimal(18, 3) 
, @FirstAmt decimal(18, 3) 
, @UseAmt decimal(18, 3) 
, @RestAmt decimal(18, 3) 
, @ThrowAmt decimal(18, 3) 
, @Operator nvarchar (100) 
, @UpdateDate datetime 
, @Remark nvarchar (200) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2WetPickupItem 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      --AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
					  AND DoffingDate = @DoffingDate
                      AND DoffNo = @DoffingNo
                      AND TwistNo = @TwistNo
                      AND RowType = @RowType
                  )
        BEGIN
            UPDATE S8x2WetPickupItem 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , DoffNo = @DoffingNo
                 , TwistNo = @TwistNo
                 , RowType = @RowType
                 , NipPressure = @NipPressure
                 , WPU = @WPU
                 , WPUErr = @WPUErr
                 , WPUValue = @WPUValue
                 , FirstAmt = @FirstAmt
                 , UseAmt = @UseAmt
                 , RestAmt = @RestAmt
                 , ThrowAmt = @ThrowAmt
                 , Operator = @Operator
                 , UpdateDate = @UpdateDate
                 , Remark = @Remark
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
               AND DoffNo = @DoffingNo
               AND TwistNo = @TwistNo
               AND RowType = @RowType
        END
        ELSE
        BEGIN
			INSERT INTO S8x2WetPickupItem
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , DoffNo
                , TwistNo
                , RowType
                , NipPressure
                , WPU
                , WPUErr
                , WPUValue
                , FirstAmt
                , UseAmt
                , RestAmt
                , ThrowAmt
                , Operator
                , UpdateDate
                , [Remark]
			)
			VALUES
			(
                  @ProductCode
                , @LotNo
                , @DoffingDate
                , @DoffingNo
                , @TwistNo
                , @RowType
                , @NipPressure
                , @WPU
                , @WPUErr
                , @WPUValue
                , @FirstAmt
                , @UseAmt
                , @RestAmt
                , @ThrowAmt
                , @Operator
                , @UpdateDate
                , @Remark
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


/*********** Script Update Date: 2024-03-15  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS9AppearanceCheckSheetItem]    Script Date: 3/16/2024 6:50:41 ******/
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
ALTER PROCEDURE [dbo].[SaveS9AppearanceCheckSheetItem] (
  @AppearId int
, @SPNo int
, @CheckGood bit
, @CheckBad bit
, @Check2Color bit
, @CheckKeiba bit
, @CheckWeight nvarchar(50) 
, @CheckFrontTwist bit
, @CheckBackTwist bit
, @CheckSnarl bit
, @CheckTube bit
, @SPUnusable bit
, @Remark nvarchar(100) = NULL
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
                 , SPUnusable = @SPUnusable
                 , [Remark] = @Remark
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
                , SPUnusable
                , [Remark]
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
                , @SPUnusable
                , @Remark
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


/*********** Script Update Date: 2024-03-15  ***********/
/****** Object:  StoredProcedure [dbo].[GetS9AppearanceCheckSheetItems]    Script Date: 3/16/2024 6:56:52 ******/
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
ALTER PROCEDURE [dbo].[GetS9AppearanceCheckSheetItems]
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
         , SPUnusable
		 , [Remark]
      FROM S9AppearanceCheckSheetItem 
     WHERE AppearId = @AppearId
     ORDER BY AppearId, SPNo;

END

GO

