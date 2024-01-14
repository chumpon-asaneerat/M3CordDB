/****** Object:  StoredProcedure [dbo].[SaveS8BeforeCondition]    Script Date: 1/12/2024 8:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8BeforeCondition] (
    @DIPPCId int ,
    @ProductCode nvarchar (30),
    @RowType int , -- -2 = STD (V)alue-- -1 = STD (B)ool, 0 = CONF, 1 = DATA
	@LotNo nvarchar (50),
	@SolutionNameBath1SC bit,
	@SolutionNameBath1 nvarchar (50),
    @SolutionNameBath1Value nvarchar (50),
	@SolutionNameBath2SC bit,
	@SolutionNameBath2 nvarchar (50),
    @SolutionNameBath2Value nvarchar (50),
	@TempJacketDrumBath1SC bit,
	@TempJacketDrumBath1Min decimal(18, 3),
	@TempJacketDrumBath1Max decimal(18, 3),
	@TempJacketDrumBath1 decimal(18, 3),
	@TempJacketDrumBath2SC bit,
	@TempJacketDrumBath2Min decimal(18, 3),
	@TempJacketDrumBath2Max decimal(18, 3),
	@TempJacketDrumBath2 decimal(18, 3),
	@TempChemicalBath1SC bit,
	@TempChemicalBath1Min decimal(18, 3),
	@TempChemicalBath1Max decimal(18, 3),
	@TempChemicalBath1 decimal(18, 3),
	@TempChemicalBath2SC bit,
	@TempChemicalBath2Min decimal(18, 3),
	@TempChemicalBath2Max decimal(18, 3),
	@TempChemicalBath2 decimal(18, 3),
	@StretchDSC bit,
	@StretchD decimal(18, 3),
	@StretchDErr decimal(18, 3),
	@StretchDValue decimal(18, 3),
	@StretchHSC bit,
	@StretchH decimal(18, 3),
	@StretchHErr decimal(18, 3),
	@StretchHValue decimal(18, 3),
	@StretchNSC bit,
	@StretchN decimal(18, 3),
	@StretchNErr decimal(18, 3),
	@StretchNValue decimal(18, 3),
	@TempDSC bit,
	@TempD decimal(18, 3),
	@TempDErr decimal(18, 3),
	@TempDValue decimal(18, 3),
	@TempHNSC bit,
	@TempHN decimal(18, 3),
	@TempHNErr decimal(18, 3),
	@TempHNValue decimal(18, 3),
	@SpeedSC bit,
	@Speed decimal(18, 3),
	@SpeedErr decimal(18, 3),
	@SpeedValue decimal(18, 3),
	@ExhaustFanDryerSC bit,
	@ExhaustFanDryer decimal(18, 3),
	@ExhaustFanDryerValue decimal(18, 3),
	@ExhaustFanHNSC bit,
	@ExhaustFanHN decimal(18, 3),
	@ExhaustFanHNValue decimal(18, 3),
	@CleanBath1SC bit,
	@CleanBath1 bit,
	@CleanBath2SC bit,
	@CleanBath2 bit,
	@CleanFrontSC bit,
	@CleanFront bit,
	@CamboxSC bit,
	@Cambox bit,
    @CheckBy nvarchar(100),
    @CheckDate datetime,
    @VerifyBy nvarchar(100),
    @VerifyDate datetime,
    @S8BeforeId  int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S8BeforeCondition WHERE S8BeforeId = @S8BeforeId)
        BEGIN
            UPDATE S8BeforeCondition 
               SET  DIPPCId = @DIPPCId ,
					ProductCode = @ProductCode ,
					LotNo = @LotNo,
					SolutionNameBath1SC = @SolutionNameBath1SC ,
					SolutionNameBath1 = @SolutionNameBath1 ,
                    SolutionNameBath1Value = @SolutionNameBath1Value ,
					SolutionNameBath2SC = @SolutionNameBath2SC ,
					SolutionNameBath2 = @SolutionNameBath2 ,
                    SolutionNameBath2Value = @SolutionNameBath2Value ,
					TempJacketDrumBath1SC = @TempJacketDrumBath1SC ,
					TempJacketDrumBath1Min = @TempJacketDrumBath1Min ,
					TempJacketDrumBath1Max = @TempJacketDrumBath1Max ,
					TempJacketDrumBath1 = @TempJacketDrumBath1 ,
					TempJacketDrumBath2SC = @TempJacketDrumBath2SC ,
					TempJacketDrumBath2Min = @TempJacketDrumBath2Min ,
					TempJacketDrumBath2Max = @TempJacketDrumBath2Max ,
					TempJacketDrumBath2 = @TempJacketDrumBath2 ,
					TempChemicalBath1SC = @TempChemicalBath1SC ,
					TempChemicalBath1Min = @TempChemicalBath1Min ,
					TempChemicalBath1Max = @TempChemicalBath1Max ,
					TempChemicalBath1 = @TempChemicalBath1 ,
					TempChemicalBath2SC = @TempChemicalBath2SC ,
					TempChemicalBath2Min = @TempChemicalBath2Min ,
					TempChemicalBath2Max = @TempChemicalBath2Max ,
					TempChemicalBath2 = @TempChemicalBath2 ,
					StretchDSC = @StretchDSC ,
					StretchD = @StretchD ,
					StretchDErr = @StretchDErr ,
					StretchDValue = @StretchDValue ,
					StretchHSC = @StretchHSC ,
					StretchH = @StretchH ,
					StretchHErr = @StretchHErr ,
					StretchHValue = @StretchHValue ,
					StretchNSC = @StretchNSC ,
					StretchN = @StretchN ,
					StretchNErr = @StretchNErr ,
					StretchNValue = @StretchNValue ,
					TempDSC = @TempDSC ,
					TempD = @TempD ,
					TempDErr = @TempDErr ,
					TempDValue = @TempDValue ,
					TempHNSC = @TempHNSC ,
					TempHN = @TempHN ,
					TempHNErr = @TempHNErr ,
					TempHNValue = @TempHNValue ,
					SpeedSC = @SpeedSC ,
					Speed = @Speed ,
					SpeedErr = @SpeedErr ,
					SpeedValue = @SpeedValue ,
					ExhaustFanDryerSC = @ExhaustFanDryerSC ,
					ExhaustFanDryer = @ExhaustFanDryer ,
                    ExhaustFanDryerValue = @ExhaustFanDryerValue ,
					ExhaustFanHNSC = @ExhaustFanHNSC ,
					ExhaustFanHN = @ExhaustFanHN ,
                    ExhaustFanHNValue = @ExhaustFanHNValue ,
					CleanBath1SC = @CleanBath1SC ,
					CleanBath1 = @CleanBath1 ,
					CleanBath2SC = @CleanBath2SC ,
					CleanBath2 = @CleanBath2 ,
					CleanFrontSC = @CleanFrontSC ,
					CleanFront = @CleanFront ,
					CamboxSC  = @CamboxSC ,
					Cambox  = @Cambox ,
                    CheckBy  = @CheckBy ,
                    CheckDate  = @CheckDate ,
                    VerifyBy  = @VerifyBy ,
                    VerifyDate  = @VerifyDate 
             WHERE S8BeforeId = @S8BeforeId
        END
        ELSE
        BEGIN
			INSERT INTO S8BeforeCondition
		    (
				DIPPCId ,
				ProductCode ,
                RowType ,
				LotNo ,
				SolutionNameBath1SC ,
				SolutionNameBath1 ,
                SolutionNameBath1Value ,
				SolutionNameBath2SC ,
				SolutionNameBath2 ,
                SolutionNameBath2Value ,
				TempJacketDrumBath1SC ,
				TempJacketDrumBath1Min ,
				TempJacketDrumBath1Max ,
				TempJacketDrumBath1 ,
				TempJacketDrumBath2SC ,
				TempJacketDrumBath2Min ,
				TempJacketDrumBath2Max ,
				TempJacketDrumBath2 ,
				TempChemicalBath1SC ,
				TempChemicalBath1Min ,
				TempChemicalBath1Max ,
				TempChemicalBath1 ,
				TempChemicalBath2SC ,
				TempChemicalBath2Min ,
				TempChemicalBath2Max ,
				TempChemicalBath2 ,
				StretchDSC ,
				StretchD ,
				StretchDErr ,
				StretchDValue ,
				StretchHSC ,
				StretchH ,
				StretchHErr ,
				StretchHValue ,
				StretchNSC ,
				StretchN ,
				StretchNErr ,
				StretchNValue ,
				TempDSC ,
				TempD ,
				TempDErr ,
				TempDValue ,
				TempHNSC ,
				TempHN ,
				TempHNERr ,
				TempHNValue ,
				SpeedSC ,
				Speed ,
				SpeedErr ,
				SpeedValue ,
				ExhaustFanDryerSC ,
				ExhaustFanDryer ,
				ExhaustFanDryerValue ,
				ExhaustFanHNSC ,
				ExhaustFanHN ,
				ExhaustFanHNValue ,
				CleanBath1SC ,
				CleanBath1 ,
				CleanBath2SC ,
				CleanBath2 ,
				CleanFrontSC ,
				CleanFront ,
				CamboxSC ,
				Cambox ,
                CheckBy ,
                CheckDate ,
                VerifyBy ,
                VerifyDate 
			)
			VALUES
			(
				@DIPPCId ,
				@ProductCode ,
                @RowType ,
				@LotNo ,
				@SolutionNameBath1SC ,
				@SolutionNameBath1 ,
                @SolutionNameBath1Value ,
				@SolutionNameBath2SC ,
				@SolutionNameBath2 ,
                @SolutionNameBath2Value ,
				@TempJacketDrumBath1SC ,
				@TempJacketDrumBath1Min ,
				@TempJacketDrumBath1Max ,
				@TempJacketDrumBath1 ,
				@TempJacketDrumBath2SC ,
				@TempJacketDrumBath2Min ,
				@TempJacketDrumBath2Max ,
				@TempJacketDrumBath2 ,
				@TempChemicalBath1SC ,
				@TempChemicalBath1Min ,
				@TempChemicalBath1Max ,
				@TempChemicalBath1 ,
				@TempChemicalBath2SC ,
				@TempChemicalBath2Min ,
				@TempChemicalBath2Max ,
				@TempChemicalBath2 ,
				@StretchDSC ,
				@StretchD ,
				@StretchDErr ,
				@StretchDValue ,
				@StretchHSC ,
				@StretchH ,
				@StretchHErr ,
				@StretchHValue ,
				@StretchNSC ,
				@StretchN ,
				@StretchNErr ,
				@StretchNValue ,
				@TempDSC ,
				@TempD ,
				@TempDErr ,
				@TempDValue ,
				@TempHNSC ,
				@TempHN ,
				@TempHNERr ,
				@TempHNValue ,
				@SpeedSC ,
				@Speed ,
				@SpeedErr ,
				@SpeedValue ,
				@ExhaustFanDryerSC ,
				@ExhaustFanDryer ,
				@ExhaustFanDryerValue ,
				@ExhaustFanHNSC ,
				@ExhaustFanHN ,
				@ExhaustFanHNValue ,
				@CleanBath1SC ,
				@CleanBath1 ,
				@CleanBath2SC ,
				@CleanBath2 ,
				@CleanFrontSC ,
				@CleanFront ,
				@CamboxSC ,
				@Cambox ,
                @CheckBy ,
                @CheckDate ,
                @VerifyBy ,
                @VerifyDate 
			);

            SET @S8BeforeId = @@IDENTITY;
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
