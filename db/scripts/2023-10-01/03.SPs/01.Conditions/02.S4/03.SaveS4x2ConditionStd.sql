/****** Object:  StoredProcedure [dbo].[SaveS4x2ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x2ConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS4x2ConditionStd] (
  @ProductCode nvarchar(30),
	@FullPackageModeSC bit,
	@FullPackageMode nvarchar(100),
	@LengthSC bit,
	@Length decimal(18, 3),
	@LengthErr decimal(18, 3),
	@WindAngleShiftFunctionSC bit,
	@WindAngleShiftFunction nvarchar(100),
	@AmountOfDisturbSC bit,
	@AmountOfDisturb nvarchar(100),
	@WindAngleSC bit,
	@WindAngle decimal(18, 3),
	@DistuebAccelerationTimeSC bit,
	@DistuebAccelerationTime decimal(18, 3),
	@DistuebDccelerationTimeSC bit,
	@DistuebDccelerationTime decimal(18, 3),
	@TensorSettingSC bit,
	@TensorSetting nvarchar(100),
	@FeedRollerSettingSC bit,
	@FeedRollerSetting nvarchar(100),
	@BollonSettingSC bit,
	@BollonSetting nvarchar(100),
	@MethodOfKnotSC bit,
	@MethodOfKnot nvarchar(100),
	@WindQuantitySC bit,
	@WindQuantity decimal(18, 3),
	@WindQuantityErr decimal(18, 3),
	@DoffTimeSC bit,
	@DoffTime decimal(18, 3),
	@DoffTimeErr decimal(18, 3),
	@ProductQuantitySC bit,
	@ProductQuantity decimal(18, 3),
	@ProductQuantityErr decimal(18, 3),
	@CalculatedTwistingNumberSC bit,
	@CalculatedTwistingNumber decimal(18, 3),
	@CalculatedTwistingNumberErr decimal(18, 3),
	@NumberOfSpindleRotationSC bit,
	@NumberOfSpindleRotation decimal(18, 3),
	@NumberOfSpindleRotationErr decimal(18, 3),
	@YarnSpeedSC bit,
	@YarnSpeed decimal(18, 3),
	@YarnSpeedErr decimal(18, 3),
	@SpecialMentionSC bit,
	@SpecialMention nvarchar(100)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x2ConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S4x2ConditionStd
               SET FullPackageModeSC = @FullPackageModeSC ,
					FullPackageMode = @FullPackageMode ,
					LengthSC = @LengthSC ,
					[Length] = @Length ,
					LengthErr = @LengthErr ,
					WindAngleShiftFunctionSC = @WindAngleShiftFunctionSC ,
					WindAngleShiftFunction = @WindAngleShiftFunction ,
					AmountOfDisturbSC = @AmountOfDisturbSC ,
					AmountOfDisturb = @AmountOfDisturb ,
					WindAngleSC = @WindAngleSC ,
					WindAngle = @WindAngle ,
					DistuebAccelerationTimeSC = @DistuebAccelerationTimeSC ,
					DistuebAccelerationTime = @DistuebAccelerationTime ,
					DistuebDccelerationTimeSC = @DistuebDccelerationTimeSC ,
					DistuebDccelerationTime = @DistuebDccelerationTime ,
					TensorSettingSC = @TensorSettingSC ,
					TensorSetting = @TensorSetting ,
					FeedRollerSettingSC = @FeedRollerSettingSC ,
					FeedRollerSetting = @FeedRollerSetting ,
					BollonSettingSC = @BollonSettingSC ,
					BollonSetting = @BollonSetting ,
					MethodOfKnotSC = @MethodOfKnotSC ,
					MethodOfKnot = @MethodOfKnot ,
					WindQuantitySC = @WindQuantitySC ,
					WindQuantity = @WindQuantity ,
					WindQuantityErr = @WindQuantityErr ,
					DoffTimeSC = @DoffTimeSC ,
					DoffTime = @DoffTime ,
					DoffTimeErr = @DoffTimeErr ,
					ProductQuantitySC = @ProductQuantitySC ,
					ProductQuantity = @ProductQuantity ,
					ProductQuantityErr = @ProductQuantityErr ,
					CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
					CalculatedTwistingNumber = @CalculatedTwistingNumber ,
					CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
					NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
					NumberOfSpindleRotation = @NumberOfSpindleRotation ,
					NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
					YarnSpeedSC = @YarnSpeedSC ,
					YarnSpeed = @YarnSpeed ,
					YarnSpeedErr = @YarnSpeedErr ,
					SpecialMentionSC = @SpecialMentionSC ,
					SpecialMention = @SpecialMention 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S4x2ConditionStd
		    (
                ProductCode ,
				FullPackageModeSC ,
				FullPackageMode ,
				LengthSC ,
				[Length] ,
				LengthErr ,
				WindAngleShiftFunctionSC ,
				WindAngleShiftFunction ,
				AmountOfDisturbSC ,
				AmountOfDisturb ,
				WindAngleSC ,
				WindAngle ,
				DistuebAccelerationTimeSC ,
				DistuebAccelerationTime ,
				DistuebDccelerationTimeSC ,
				DistuebDccelerationTime ,
				TensorSettingSC ,
				TensorSetting ,
				FeedRollerSettingSC ,
				FeedRollerSetting ,
				BollonSettingSC ,
				BollonSetting ,
				MethodOfKnotSC ,
				MethodOfKnot ,
				WindQuantitySC ,
				WindQuantity ,
				WindQuantityErr ,
				DoffTimeSC ,
				DoffTime ,
				DoffTimeErr ,
				ProductQuantitySC ,
				ProductQuantity ,
				ProductQuantityErr ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				SpecialMentionSC ,
				SpecialMention 
			)
			VALUES
			(
                @ProductCode ,
				@FullPackageModeSC ,
				@FullPackageMode ,
				@LengthSC ,
				@Length ,
				@LengthErr ,
				@WindAngleShiftFunctionSC ,
				@WindAngleShiftFunction ,
				@AmountOfDisturbSC ,
				@AmountOfDisturb ,
				@WindAngleSC ,
				@WindAngle ,
				@DistuebAccelerationTimeSC ,
				@DistuebAccelerationTime ,
				@DistuebDccelerationTimeSC ,
				@DistuebDccelerationTime ,
				@TensorSettingSC ,
				@TensorSetting ,
				@FeedRollerSettingSC ,
				@FeedRollerSetting ,
				@BollonSettingSC ,
				@BollonSetting ,
				@MethodOfKnotSC ,
				@MethodOfKnot ,
				@WindQuantitySC ,
				@WindQuantity ,
				@WindQuantityErr ,
				@DoffTimeSC ,
				@DoffTime ,
				@DoffTimeErr ,
				@ProductQuantitySC ,
				@ProductQuantity ,
				@ProductQuantityErr ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@SpecialMentionSC ,
				@SpecialMention 
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
