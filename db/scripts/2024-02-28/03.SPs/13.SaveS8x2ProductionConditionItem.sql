/****** Object:  StoredProcedure [dbo].[SaveS8x2ProductionConditionItem]    Script Date: 2/29/2024 6:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8x2ProductionConditionItem] (
  @DIPPCId int  
, @RowType int  
, @ProductCode nvarchar (30) 
, @LotNo nvarchar (30) 
, @DoffingDate datetime  
, @DoffingNo int  

, @StretchDSC bit  
, @StretchD decimal (18, 3) 
, @StretchDErr decimal (18, 3) 
, @StretchDValue decimal (18, 3) 

, @StretchHSC bit  
, @StretchH decimal (18, 3) 
, @StretchHErr decimal (18, 3) 
, @StretchHValue decimal (18, 3) 

, @StretchNSC bit  
, @StretchN decimal (18, 3) 
, @StretchNErr decimal (18, 3) 
, @StretchNValue decimal (18, 3) 

, @TempDSC bit  
, @TempD decimal (18, 3) 
, @TempDErr decimal (18, 3) 
, @TempDValue decimal (18, 3) 

, @TempHNSC bit  
, @TempHN decimal (18, 3) 
, @TempHNErr decimal (18, 3) 
, @TempHNValue decimal (18, 3) 

, @SpeedSC bit  
, @Speed decimal (18, 3) 
, @SpeedErr decimal (18, 3) 
, @SpeedValue decimal (18, 3) 

, @TreatSC bit  
, @Treat decimal (18, 3) 
, @TreatValue decimal (18, 3) 

, @DoffingLengthSC bit  
, @DoffingLength decimal (18, 3) 
, @DoffingLengthValue decimal (18, 3) 

, @WeightSC bit  
, @Weight decimal (18, 3) 
, @WeightValue decimal (18, 3) 

, @SpindleSC bit  
, @Spindle decimal (18, 3) 
, @SpindleValue decimal (18, 3) 

, @ProductionGoodSC bit  
, @ProductionGood decimal (18, 3) 
, @ProductionGoodValue decimal (18, 3) 

, @ProductionTotalSC bit  
, @ProductionTotal decimal (18, 3) 
, @ProductionTotalValue decimal (18, 3) 

, @ProductionCut decimal (18, 3) 

, @PositionCordCutCreel decimal (18, 3) 
, @PositionCordCutCreelKG decimal (18, 3) 
, @PositionCordCutCS decimal (18, 3) 
, @PositionCordCutCSKG decimal (18, 3) 
, @PositionCordCutWinder decimal (18, 3) 
, @PositionCordCutWinderKG decimal (18, 3) 
, @PositionCordCutWasteYarn decimal (18, 3) 
, @PositionCordCutWasteYarnKG decimal (18, 3) 

, @CheckTimeStart datetime  
, @CheckTimeFinish datetime  
, @CheckTimeRecord datetime  

, @Opertor nvarchar (100) 
, @Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2ProductionConditionItem 
                    WHERE DIPPCId = @DIPPCId
                      AND RowType = @RowType
                      AND LotNo = @LotNo 
                      AND DoffingDate = @DoffingDate
                      AND DoffingNo = @DoffingNo)
        BEGIN
            UPDATE S8x2ProductionConditionItem 
               SET DIPPCId = @DIPPCId
                 , RowType = @RowType
                 , DoffingDate = @DoffingDate  
				 , DoffingNo = @DoffingNo 

                 , StretchDSC = @StretchDSC  
				 , StretchD = @StretchD 
				 , StretchDErr = @StretchDErr 
				 , StretchDValue = @StretchDValue

				 , StretchHSC = @StretchHSC  
				 , StretchH = @StretchH 
				 , StretchHErr = @StretchHErr 
				 , StretchHValue = @StretchHValue 

				 , StretchNSC = @StretchNSC  
				 , StretchN = @StretchN 
				 , StretchNErr = @StretchNErr 
				 , StretchNValue = @StretchNValue 

				 , TempDSC = @TempDSC  
				 , TempD = @TempD 
				 , TempDErr = @TempDErr 
				 , TempDValue = @TempDValue 

				 , TempHNSC = @TempHNSC  
				 , TempHN = @TempHN 
				 , TempHNErr = @TempHNErr 
				 , TempHNValue = @TempHNValue 

				 , SpeedSC = @SpeedSC  
				 , Speed = @Speed 
				 , SpeedErr = @SpeedErr 
				 , SpeedValue = @SpeedValue 

				 , TreatSC = @TreatSC  
				 , Treat = @Treat 
				 , TreatValue = @TreatValue 

				 , DoffingLengthSC = @DoffingLengthSC  
				 , DoffingLength = @DoffingLength 
				 , DoffingLengthValue = @DoffingLengthValue 

				 , WeightSC = @WeightSC  
				 , [Weight] = @Weight 
				 , WeightValue = @WeightValue 

				 , SpindleSC = @SpindleSC  
				 , Spindle = @Spindle 
				 , SpindleValue = @SpindleValue 

				 , ProductionGoodSC = @ProductionGoodSC  
				 , ProductionGood = @ProductionGood 
				 , ProductionGoodValue = @ProductionGoodValue 

				 , ProductionTotalSC = @ProductionTotalSC  
				 , ProductionTotal = @ProductionTotal  
				 , ProductionTotalValue = @ProductionTotalValue 

				 , ProductionCut = @ProductionCut 

				 , PositionCordCutCreel = @PositionCordCutCreel 
				 , PositionCordCutCreelKG = @PositionCordCutCreelKG 
				 , PositionCordCutCS = @PositionCordCutCS 
				 , PositionCordCutCSKG = @PositionCordCutCSKG 
				 , PositionCordCutWinder = @PositionCordCutWinder 
				 , PositionCordCutWinderKG = @PositionCordCutWinderKG 
				 , PositionCordCutWasteYarn = @PositionCordCutWasteYarn 
				 , PositionCordCutWasteYarnKG = @PositionCordCutWasteYarnKG 

				 , CheckTimeStart = @CheckTimeStart  
				 , CheckTimeFinish = @CheckTimeFinish  
				 , CheckTimeRecord = @CheckTimeRecord  

				 , Opertor = @Opertor 
				 , Leader = @Leader   
             WHERE DIPPCId = @DIPPCId
               AND RowType = @RowType
               AND LotNo = @LotNo 
               AND DoffingDate = @DoffingDate
               AND DoffingNo = @DoffingNo
        END
        ELSE
        BEGIN
			INSERT INTO S8x2ProductionConditionItem
		    (
                  DIPPCId
                , RowType
				, ProductCode 
				, LotNo 
				, DoffingDate 
				, DoffingNo

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchDValue 

				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchHValue 

				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, StretchNValue 

				, TempDSC  
				, TempD 
				, TempDErr 
				, TempDValue 

				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, TempHNValue 
				
				, SpeedSC  
				, Speed 
				, SpeedErr 
                , SpeedValue 

				, TreatSC  
				, Treat 
				, TreatValue 

				, DoffingLengthSC  
				, DoffingLength 
				, DoffingLengthValue 

				, WeightSC  
				, [Weight] 
				, WeightValue 

				, SpindleSC  
				, Spindle 
				, SpindleValue 

				, ProductionGoodSC  
				, ProductionGood 
				, ProductionGoodValue 

				, ProductionTotalSC  
				, ProductionTotal 
				, ProductionTotalValue 

				, ProductionCut 

				, PositionCordCutCreel 
				, PositionCordCutCreelKG 
				, PositionCordCutCS 
				, PositionCordCutCSKG 
				, PositionCordCutWinder 
				, PositionCordCutWinderKG 
				, PositionCordCutWasteYarn 
				, PositionCordCutWasteYarnKG 

				, CheckTimeStart 
				, CheckTimeFinish 
				, CheckTimeRecord 

				, Opertor 
		        , Leader 
			)
			VALUES
			(
                  @DIPPCId
                , @RowType
                , @ProductCode 
				, @LotNo 
				, @DoffingDate 
				, @DoffingNo

			    , @StretchDSC  
			    , @StretchD 
			    , @StretchDErr 
				, @StretchDValue 

			    , @StretchHSC  
			    , @StretchH 
			    , @StretchHErr 
				, @StretchHValue 

			    , @StretchNSC  
			    , @StretchN 
			    , @StretchNErr 
				, @StretchNValue 

			    , @TempDSC  
			    , @TempD 
			    , @TempDErr 
				, @TempDValue 

			    , @TempHNSC  
			    , @TempHN 
			    , @TempHNErr 
				, @TempHNValue 

			    , @SpeedSC  
			    , @Speed 
			    , @SpeedErr 
				, @SpeedValue 

			    , @TreatSC  
			    , @Treat 
				, @TreatValue 

			    , @DoffingLengthSC  
			    , @DoffingLength 
				, @DoffingLengthValue 

			    , @WeightSC  
			    , @Weight 
				, @WeightValue 

			    , @SpindleSC  
			    , @Spindle 
				, @SpindleValue 

			    , @ProductionGoodSC  
			    , @ProductionGood 
				, @ProductionGoodValue 

			    , @ProductionTotalSC  
			    , @ProductionTotal 
				, @ProductionTotalValue 

				, @ProductionCut 

				, @PositionCordCutCreel 
				, @PositionCordCutCreelKG 
				, @PositionCordCutCS 
				, @PositionCordCutCSKG 
				, @PositionCordCutWinder 
				, @PositionCordCutWinderKG 
				, @PositionCordCutWasteYarn 
				, @PositionCordCutWasteYarnKG 

				, @CheckTimeStart  
				, @CheckTimeFinish  
				, @CheckTimeRecord  

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
