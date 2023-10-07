/****** Object:  StoredProcedure [dbo].[SaveS4x1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x1ConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS4x1ConditionStd] (
  @ProductCode nvarchar(30)  ,
	@TwistChangeGearSC bit  ,
	@TwistChangeGearE decimal(18, 3)  ,
	@TwistChangeGearF decimal(18, 3)  ,
	@TwistChangeGearG decimal(18, 3)  ,
	@TwistChangeGearH decimal(18, 3)  ,
	@MotorPulleyDiaSC bit  ,
	@MotorPulleyDia decimal(18, 3)  ,
	@DrivingPulleyDiaSC bit  ,
	@DrivingPulleyDia decimal(18, 3)  ,
	@OverFeedSC bit  ,
	@OverFeedRate decimal(18, 3)  ,
	@OverFeedGear decimal(18, 3)  ,
	@WindAngleSC bit  ,
	@WindAngleDeg decimal(18, 3)  ,
	@WindAngleGearA decimal(18, 3)  ,
	@WindAngleGearB decimal(18, 3)  ,
	@TensorDialSetSC bit  ,
	@TensorDialSet decimal(18, 3)  ,
	@NumberOfLoopSC bit  ,
	@NumberOfLoop decimal(18, 3)  ,
	@NumberOfLoopErr decimal(18, 3)  ,
	@MethodOfKnotSC bit  ,
	@MethodOfKnot nvarchar(100)  ,
	@WindQuantitySC bit  ,
	@WindQuantity decimal(18, 3)  ,
	@WindQuantityErr decimal(18, 3)  ,
	@LengthSC bit  ,
	@Length decimal(18, 3)  ,
	@LengthErr decimal(18, 3)  ,
	@DoffTimeSC bit  ,
	@DoffTime decimal(18, 3)  ,
	@DoffTimeErr decimal(18, 3)  ,
	@ProductQuantitySC bit  ,
	@ProductQuantityKg decimal(18, 3)  ,
	@ProductQuantityDay decimal(18, 3)  ,
	@CalculatedTwistingNumberSC bit  ,
	@CalculatedTwistingNumber decimal(18, 3)  ,
	@CalculatedTwistingNumberErr decimal(18, 3)  ,
	@NumberOfSpindleRotationSC bit  ,
	@NumberOfSpindleRotation decimal(18, 3)  ,
	@NumberOfSpindleRotationErr decimal(18, 3)  ,
	@YarnSpeedSC bit  ,
	@YarnSpeed decimal(18, 3)  ,
	@YarnSpeedErr decimal(18, 3)  ,
	@SpecialMentionSC bit  ,
	@SpecialMention nvarchar(100)   
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x1ConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S4x1ConditionStd 
               SET TwistChangeGearSC = @TwistChangeGearSC ,
				TwistChangeGearE = @TwistChangeGearE ,
				TwistChangeGearF = @TwistChangeGearF ,
				TwistChangeGearG = @TwistChangeGearG ,
				TwistChangeGearH = @TwistChangeGearH ,
				MotorPulleyDiaSC = @MotorPulleyDiaSC ,
				MotorPulleyDia = @MotorPulleyDia ,
				DrivingPulleyDiaSC = @DrivingPulleyDiaSC ,
				DrivingPulleyDia = @DrivingPulleyDia ,
				OverFeedSC = @OverFeedSC ,
				OverFeedRate = @OverFeedRate ,
				OverFeedGear = @OverFeedGear ,
				WindAngleSC = @WindAngleSC ,
				WindAngleDeg = @WindAngleDeg ,
				WindAngleGearA = @WindAngleGearA ,
				WindAngleGearB = @WindAngleGearB ,
				TensorDialSetSC = @TensorDialSetSC ,
				TensorDialSet = @TensorDialSet ,
				NumberOfLoopSC = @NumberOfLoopSC ,
				NumberOfLoop = @NumberOfLoop ,
				NumberOfLoopErr = @NumberOfLoopErr ,
				MethodOfKnotSC = @MethodOfKnotSC ,
				MethodOfKnot = @MethodOfKnot  ,
				WindQuantitySC = @WindQuantitySC ,
				WindQuantity = @WindQuantity ,
				WindQuantityErr = @WindQuantityErr ,
				LengthSC = @LengthSC ,
				[Length] = @Length ,
				LengthErr = @LengthErr ,
				DoffTimeSC = @DoffTimeSC ,
				DoffTime = @DoffTime ,
				DoffTimeErr = @DoffTimeErr ,
				ProductQuantitySC = @ProductQuantitySC ,
				ProductQuantityKg = @ProductQuantityKg ,
				ProductQuantityDay = @ProductQuantityDay ,
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
			INSERT INTO S4x1ConditionStd
		    (
                ProductCode ,
				TwistChangeGearSC ,
				TwistChangeGearE ,
				TwistChangeGearF ,
				TwistChangeGearG ,
				TwistChangeGearH ,
				MotorPulleyDiaSC ,
				MotorPulleyDia ,
				DrivingPulleyDiaSC ,
				DrivingPulleyDia ,
				OverFeedSC ,
				OverFeedRate ,
				OverFeedGear ,
				WindAngleSC ,
				WindAngleDeg ,
				WindAngleGearA ,
				WindAngleGearB ,
				TensorDialSetSC,
				TensorDialSet,
				NumberOfLoopSC ,
				NumberOfLoop ,
				NumberOfLoopErr ,
				MethodOfKnotSC ,
				MethodOfKnot  ,
				WindQuantitySC ,
				WindQuantity ,
				WindQuantityErr ,
				LengthSC ,
				[Length] ,
				LengthErr ,
				DoffTimeSC ,
				DoffTime ,
				DoffTimeErr ,
				ProductQuantitySC ,
				ProductQuantityKg ,
				ProductQuantityDay ,
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
				@TwistChangeGearSC ,
				@TwistChangeGearE ,
				@TwistChangeGearF ,
				@TwistChangeGearG ,
				@TwistChangeGearH ,
				@MotorPulleyDiaSC ,
				@MotorPulleyDia ,
				@DrivingPulleyDiaSC ,
				@DrivingPulleyDia ,
				@OverFeedSC ,
				@OverFeedRate ,
				@OverFeedGear ,
				@WindAngleSC ,
				@WindAngleDeg ,
				@WindAngleGearA ,
				@WindAngleGearB ,
				@TensorDialSetSC,
				@TensorDialSet,
				@NumberOfLoopSC ,
				@NumberOfLoop ,
				@NumberOfLoopErr ,
				@MethodOfKnotSC ,
				@MethodOfKnot  ,
				@WindQuantitySC ,
				@WindQuantity ,
				@WindQuantityErr ,
				@LengthSC ,
				@Length ,
				@LengthErr ,
				@DoffTimeSC ,
				@DoffTime ,
				@DoffTimeErr ,
				@ProductQuantitySC ,
				@ProductQuantityKg ,
				@ProductQuantityDay ,
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
