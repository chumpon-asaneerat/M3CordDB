/****** Object:  StoredProcedure [dbo].[SaveS8BeforeConditionStd]    Script Date: 1/12/2024 1:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8BeforeConditionStd] (
    @ProductCode nvarchar (30),
    @SolutionNameBath1SC bit,
	@SolutionNameBath1 nvarchar (50),
    @SolutionNameBath2SC bit,
	@SolutionNameBath2 nvarchar (50),
	@TempJacketDrumBath1SC bit,
	@TempJacketDrumBath1Min decimal(18, 3),
	@TempJacketDrumBath1Max decimal(18, 3),
	@TempJacketDrumBath2SC bit,
	@TempJacketDrumBath2Min decimal(18, 3),
	@TempJacketDrumBath2Max decimal(18, 3),
	@TempChemicalBath1SC bit,
	@TempChemicalBath1Min decimal(18, 3),
	@TempChemicalBath1Max decimal(18, 3),
	@TempChemicalBath2SC bit,
	@TempChemicalBath2Min decimal(18, 3),
	@TempChemicalBath2Max decimal(18, 3),
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
	@CleanBath1SC bit,
	@CleanBath2SC bit,
	@CleanFrontSC bit,
	@CamboxSC bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S8BeforeConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S8BeforeConditionStd 
               SET  ProductCode = @ProductCode ,
					SolutionNameBath1SC = @SolutionNameBath1SC ,
					SolutionNameBath1 = @SolutionNameBath1 ,
					SolutionNameBath2SC = @SolutionNameBath2SC ,
					SolutionNameBath2 = @SolutionNameBath2 ,
					TempJacketDrumBath1SC = @TempJacketDrumBath1SC ,
					TempJacketDrumBath1Min = @TempJacketDrumBath1Min ,
					TempJacketDrumBath1Max = @TempJacketDrumBath1Max ,
					TempJacketDrumBath2SC = @TempJacketDrumBath2SC ,
					TempJacketDrumBath2Min = @TempJacketDrumBath2Min ,
					TempJacketDrumBath2Max = @TempJacketDrumBath2Max ,
					TempChemicalBath1SC = @TempChemicalBath1SC ,
					TempChemicalBath1Min = @TempChemicalBath1Min ,
					TempChemicalBath1Max = @TempChemicalBath1Max ,
					TempChemicalBath2SC = @TempChemicalBath2SC ,
					TempChemicalBath2Min = @TempChemicalBath2Min ,
					TempChemicalBath2Max = @TempChemicalBath2Max ,
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
					CleanBath1SC = @CleanBath1SC ,
					CleanBath2SC = @CleanBath2SC ,
					CleanFrontSC = @CleanFrontSC ,
					CamboxSC  = @CamboxSC 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S8BeforeConditionStd
		    (
				ProductCode ,
				SolutionNameBath1SC ,
				SolutionNameBath1 ,
				SolutionNameBath2SC ,
				SolutionNameBath2 ,
				TempJacketDrumBath1SC ,
				TempJacketDrumBath1Min ,
				TempJacketDrumBath1Max ,
				TempJacketDrumBath2SC ,
				TempJacketDrumBath2Min ,
				TempJacketDrumBath2Max ,
				TempChemicalBath1SC ,
				TempChemicalBath1Min ,
				TempChemicalBath1Max ,
				TempChemicalBath2SC ,
				TempChemicalBath2Min ,
				TempChemicalBath2Max ,
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
				CleanBath1SC ,
				CleanBath2SC ,
				CleanFrontSC ,
				CamboxSC 
			)
			VALUES
			(
                @ProductCode ,
				@SolutionNameBath1SC ,
				@SolutionNameBath1 ,
				@SolutionNameBath2SC ,
				@SolutionNameBath2 ,
				@TempJacketDrumBath1SC ,
				@TempJacketDrumBath1Min ,
				@TempJacketDrumBath1Max ,
				@TempJacketDrumBath2SC ,
				@TempJacketDrumBath2Min ,
				@TempJacketDrumBath2Max ,
				@TempChemicalBath1SC ,
				@TempChemicalBath1Min ,
				@TempChemicalBath1Max ,
				@TempChemicalBath2SC ,
				@TempChemicalBath2Min ,
				@TempChemicalBath2Max ,
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
				@CleanBath1SC ,
				@CleanBath2SC ,
				@CleanFrontSC ,
				@CamboxSC 
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
