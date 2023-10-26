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
