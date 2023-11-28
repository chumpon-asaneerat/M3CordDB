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
