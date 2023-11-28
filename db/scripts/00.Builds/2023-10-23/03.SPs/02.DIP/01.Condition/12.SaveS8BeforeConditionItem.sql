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
