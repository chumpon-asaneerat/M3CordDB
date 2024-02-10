/****** Object:  StoredProcedure [dbo].[SaveS8ProductionConditionItemStd]    Script Date: 1/20/2024 12:45:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8ProductionConditionItemStd] (
  @ProductCode nvarchar (30) 
, @StretchDSC bit  
, @StretchD decimal (18, 3) 
, @StretchDErr decimal (18, 3) 
, @StretchHSC bit  
, @StretchH decimal (18, 3) 
, @StretchHErr decimal (18, 3) 
, @StretchNSC bit  
, @StretchN decimal (18, 3) 
, @StretchNErr decimal (18, 3) 
, @TempDSC bit  
, @TempD decimal (18, 3) 
, @TempDErr decimal (18, 3) 
, @TempHNSC bit  
, @TempHN decimal (18, 3) 
, @TempHNErr decimal (18, 3) 
, @SpeedSC bit  
, @Speed decimal (18, 3) 
, @SpeedErr decimal (18, 3) 
, @TreatSC bit  
, @Treat decimal (18, 3) 
, @DoffingLengthSC bit  
, @DoffingLength decimal (18, 3) 
, @WeightSC bit  
, @Weight decimal (18, 3) 
, @SpindleSC bit  
, @Spindle decimal (18, 3) 
, @ProductionGoodSC bit  
, @ProductionGood decimal (18, 3) 
, @ProductionTotalSC bit  
, @ProductionTotal decimal (18, 3) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8ProductionConditionItemStd 
                    WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S8ProductionConditionItemStd 
               SET StretchDSC = @StretchDSC  
				 , StretchD = @StretchD 
				 , StretchDErr = @StretchDErr 
				 , StretchHSC = @StretchHSC  
				 , StretchH = @StretchH 
				 , StretchHErr = @StretchHErr 
				 , StretchNSC = @StretchNSC  
				 , StretchN = @StretchN 
				 , StretchNErr = @StretchNErr 
				 , TempDSC = @TempDSC  
				 , TempD = @TempD 
				 , TempDErr = @TempDErr 
				 , TempHNSC = @TempHNSC  
				 , TempHN = @TempHN 
				 , TempHNErr = @TempHNErr 
				 , SpeedSC = @SpeedSC  
				 , Speed = @Speed 
				 , SpeedErr = @SpeedErr 
				 , TreatSC = @TreatSC  
				 , Treat = @Treat 
				 , DoffingLengthSC = @DoffingLengthSC  
				 , DoffingLength = @DoffingLength 
				 , WeightSC = @WeightSC  
				 , [Weight] = @Weight 
				 , SpindleSC = @SpindleSC  
				 , Spindle = @Spindle 
				 , ProductionGoodSC = @ProductionGoodSC  
				 , ProductionGood = @ProductionGood 
				 , ProductionTotalSC = @ProductionTotalSC  
				 , ProductionTotal = @ProductionTotal  
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S8ProductionConditionItemStd
		    (
			      ProductCode  
				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
			)
			VALUES
			(
                  @ProductCode  
			    , @StretchDSC  
			    , @StretchD 
			    , @StretchDErr 
			    , @StretchHSC  
			    , @StretchH 
			    , @StretchHErr 
			    , @StretchNSC  
			    , @StretchN 
			    , @StretchNErr 
			    , @TempDSC  
			    , @TempD 
			    , @TempDErr 
			    , @TempHNSC  
			    , @TempHN 
			    , @TempHNErr 
			    , @SpeedSC  
			    , @Speed 
			    , @SpeedErr 
			    , @TreatSC  
			    , @Treat 
			    , @DoffingLengthSC  
			    , @DoffingLength 
			    , @WeightSC  
			    , @Weight 
			    , @SpindleSC  
			    , @Spindle 
			    , @ProductionGoodSC  
			    , @ProductionGood 
			    , @ProductionTotalSC  
			    , @ProductionTotal 
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
