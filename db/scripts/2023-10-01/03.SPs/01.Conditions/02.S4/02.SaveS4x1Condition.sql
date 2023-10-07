/****** Object:  StoredProcedure [dbo].[SaveS4x1Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x1Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS4x1Condition] (
  @ProductCode nvarchar(30)  ,
	@TwistChangeGearSC bit  ,
	@TwistChangeGearE decimal(18, 3)  ,
	@TwistChangeGearEActual decimal(18, 3)  ,
	@TwistChangeGearF decimal(18, 3)  ,
	@TwistChangeGearFActual decimal(18, 3)  ,
	@TwistChangeGearG decimal(18, 3)  ,
	@TwistChangeGearGActual decimal(18, 3)  ,
	@TwistChangeGearH decimal(18, 3)  ,
	@TwistChangeGearHActual decimal(18, 3)  ,
	@MotorPulleyDiaSC bit  ,
	@MotorPulleyDia decimal(18, 3)  ,
	@MotorPulleyDiaActual decimal(18, 3)  ,
	@DrivingPulleyDiaSC bit  ,
	@DrivingPulleyDia decimal(18, 3)  ,
	@DrivingPulleyDiaActual decimal(18, 3)  ,
	@OverFeedSC bit  ,
	@OverFeedRate decimal(18, 3)  ,
	@OverFeedRateActual decimal(18, 3)  ,
	@OverFeedGear decimal(18, 3)  ,
	@OverFeedGearActual decimal(18, 3)  ,
	@WindAngleSC bit  ,
	@WindAngleDeg decimal(18, 3)  ,
	@WindAngleDegActual decimal(18, 3)  ,
	@WindAngleGearA decimal(18, 3)  ,
	@WindAngleGearAActual decimal(18, 3)  ,
	@WindAngleGearB decimal(18, 3)  ,
	@WindAngleGearBActual decimal(18, 3)  ,
	@TensorDialSetSC bit  ,
	@TensorDialSet decimal(18, 3)  ,
	@TensorDialSetActual decimal(18, 3)  ,
	@NumberOfLoopSC bit  ,
	@NumberOfLoop decimal(18, 3)  ,
	@NumberOfLoopErr decimal(18, 3)  ,
	@NumberOfLoopActual decimal(18, 3)  ,
	@MethodOfKnotSC bit  ,
	@MethodOfKnot nvarchar(100)  ,
	@MethodOfKnotActual nvarchar(100)  ,
	@WindQuantitySC bit  ,
	@WindQuantity decimal(18, 3)  ,
	@WindQuantityErr decimal(18, 3)  ,
	@WindQuantityActual decimal(18, 3)  ,
	@LengthSC bit  ,
	@Length decimal(18, 3)  ,
	@LengthErr decimal(18, 3)  ,
	@LengthActual decimal(18, 3)  ,
	@DoffTimeSC bit  ,
	@DoffTime decimal(18, 3)  ,
	@DoffTimeErr decimal(18, 3)  ,
	@DoffTimeActual decimal(18, 3)  ,
	@ProductQuantitySC bit  ,
	@ProductQuantityKg decimal(18, 3)  ,
	@ProductQuantityKgActual decimal(18, 3)  ,
	@ProductQuantityDay decimal(18, 3)  ,
	@ProductQuantityDayActual decimal(18, 3)  ,
	@CalculatedTwistingNumberSC bit  ,
	@CalculatedTwistingNumber decimal(18, 3)  ,
	@CalculatedTwistingNumberErr decimal(18, 3)  ,
	@CalculatedTwistingNumberActual decimal(18, 3)  ,
	@NumberOfSpindleRotationSC bit  ,
	@NumberOfSpindleRotation decimal(18, 3)  ,
	@NumberOfSpindleRotationErr decimal(18, 3)  ,
	@NumberOfSpindleRotationActual decimal(18, 3)  ,
	@YarnSpeedSC bit  ,
	@YarnSpeed decimal(18, 3)  ,
	@YarnSpeedErr decimal(18, 3)  ,
	@YarnSpeedActual decimal(18, 3)  ,
	@SpecialMentionSC bit  ,
	@SpecialMention nvarchar(100)  ,
	@SpecialMentionActual nvarchar(100)   
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x1Condition WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S4x1Condition 
               SET TwistChangeGearSC = @TwistChangeGearSC ,
				TwistChangeGearE = @TwistChangeGearE ,
				TwistChangeGearEActual = @TwistChangeGearEActual ,
				TwistChangeGearF = @TwistChangeGearF ,
				TwistChangeGearFActual = @TwistChangeGearFActual ,
				TwistChangeGearG = @TwistChangeGearG ,
				TwistChangeGearGActual = @TwistChangeGearGActual ,
				TwistChangeGearH = @TwistChangeGearH ,
				TwistChangeGearHActual = @TwistChangeGearHActual ,
				MotorPulleyDiaSC = @MotorPulleyDiaSC ,
				MotorPulleyDia = @MotorPulleyDia ,
				MotorPulleyDiaActual = @MotorPulleyDiaActual ,
				DrivingPulleyDiaSC = @DrivingPulleyDiaSC ,
				DrivingPulleyDia = @DrivingPulleyDia ,
				DrivingPulleyDiaActual = @DrivingPulleyDiaActual ,
				OverFeedSC = @OverFeedSC ,
				OverFeedRate = @OverFeedRate ,
				OverFeedRateActual = @OverFeedRateActual ,
				OverFeedGear = @OverFeedGear ,
				OverFeedGearActual = @OverFeedGearActual ,
				WindAngleSC = @WindAngleSC ,
				WindAngleDeg = @WindAngleDeg ,
				WindAngleDegActual = @WindAngleDegActual ,
				WindAngleGearA = @WindAngleGearA ,
				WindAngleGearAActual = @WindAngleGearAActual ,
				WindAngleGearB = @WindAngleGearB ,
				WindAngleGearBActual = @WindAngleGearBActual ,

				TensorDialSetSC = @TensorDialSetSC ,
				TensorDialSet = @TensorDialSet ,
				TensorDialSetActual = @TensorDialSetActual ,

				NumberOfLoopSC = @NumberOfLoopSC ,
				NumberOfLoop = @NumberOfLoop ,
				NumberOfLoopActual = @NumberOfLoopActual ,
				NumberOfLoopErr = @NumberOfLoopErr ,
				MethodOfKnotSC = @MethodOfKnotSC ,
				MethodOfKnot = @MethodOfKnot  ,
				MethodOfKnotActual = @MethodOfKnotActual  ,
				WindQuantitySC = @WindQuantitySC ,
				WindQuantity = @WindQuantity ,
				WindQuantityErr = @WindQuantityErr ,
				WindQuantityActual = @WindQuantityActual ,
				LengthSC = @LengthSC ,
				[Length] = @Length ,
				LengthErr = @LengthErr ,
				LengthActual = @LengthActual ,
				DoffTimeSC = @DoffTimeSC ,
				DoffTime = @DoffTime ,
				DoffTimeErr = @DoffTimeErr ,
				DoffTimeActual = @DoffTimeActual ,
				ProductQuantitySC = @ProductQuantitySC ,
				ProductQuantityKg = @ProductQuantityKg ,
				ProductQuantityKgActual = @ProductQuantityKgActual ,
				ProductQuantityDay = @ProductQuantityDay ,
				ProductQuantityDayActual = @ProductQuantityDayActual ,
				CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber = @CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation = @NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
				YarnSpeedSC = @YarnSpeedSC ,
				YarnSpeed = @YarnSpeed ,
				YarnSpeedActual = @YarnSpeedActual ,
				YarnSpeedErr = @YarnSpeedErr ,
				SpecialMentionSC = @SpecialMentionSC ,
				SpecialMention = @SpecialMention ,
				SpecialMentionActual = @SpecialMentionActual  
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S4x1Condition
		    (
                ProductCode ,
				TwistChangeGearSC ,
				TwistChangeGearE ,
				TwistChangeGearEActual ,
				TwistChangeGearF ,
				TwistChangeGearFActual ,
				TwistChangeGearG ,
				TwistChangeGearGActual ,
				TwistChangeGearH ,
				TwistChangeGearHActual ,
				MotorPulleyDiaSC ,
				MotorPulleyDia ,
				MotorPulleyDiaActual ,
				DrivingPulleyDiaSC ,
				DrivingPulleyDia ,
				DrivingPulleyDiaActual ,
				OverFeedSC ,
				OverFeedRate ,
				OverFeedRateActual ,
				OverFeedGear ,
				OverFeedGearActual ,
				WindAngleSC ,
				WindAngleDeg ,
				WindAngleDegActual ,
				WindAngleGearA ,
				WindAngleGearAActual ,
				WindAngleGearB ,
				WindAngleGearBActual ,
				TensorDialSetSC,
				TensorDialSet,
				TensorDialSetActual,
				NumberOfLoopSC ,
				NumberOfLoop ,
				NumberOfLoopErr ,
				NumberOfLoopActual ,
				MethodOfKnotSC ,
				MethodOfKnot  ,
				MethodOfKnotActual  ,
				WindQuantitySC ,
				WindQuantity ,
				WindQuantityErr ,
				WindQuantityActual ,
				LengthSC ,
				[Length] ,
				LengthErr ,
				LengthActual ,
				DoffTimeSC ,
				DoffTime ,
				DoffTimeErr ,
				DoffTimeActual ,
				ProductQuantitySC ,
				ProductQuantityKg ,
				ProductQuantityKgActual ,
				ProductQuantityDay ,
				ProductQuantityDayActual ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				YarnSpeedActual ,
				SpecialMentionSC ,
				SpecialMention  ,
				SpecialMentionActual          
			)
			VALUES
			(
                @ProductCode ,
				@TwistChangeGearSC ,
				@TwistChangeGearE ,
				@TwistChangeGearEActual ,
				@TwistChangeGearF ,
				@TwistChangeGearFActual ,
				@TwistChangeGearG ,
				@TwistChangeGearGActual ,
				@TwistChangeGearH ,
				@TwistChangeGearHActual ,
				@MotorPulleyDiaSC ,
				@MotorPulleyDia ,
				@MotorPulleyDiaActual ,
				@DrivingPulleyDiaSC ,
				@DrivingPulleyDia ,
				@DrivingPulleyDiaActual ,
				@OverFeedSC ,
				@OverFeedRate ,
				@OverFeedRateActual ,
				@OverFeedGear ,
				@OverFeedGearActual ,
				@WindAngleSC ,
				@WindAngleDeg ,
				@WindAngleDegActual ,
				@WindAngleGearA ,
				@WindAngleGearAActual ,
				@WindAngleGearB ,
				@WindAngleGearBActual ,
				@TensorDialSetSC,
				@TensorDialSet,
				@TensorDialSetActual,
				@NumberOfLoopSC ,
				@NumberOfLoop ,
				@NumberOfLoopErr ,
				@NumberOfLoopActual ,
				@MethodOfKnotSC ,
				@MethodOfKnot  ,
				@MethodOfKnotActual  ,
				@WindQuantitySC ,
				@WindQuantity ,
				@WindQuantityErr ,
				@WindQuantityActual ,
				@LengthSC ,
				@Length ,
				@LengthErr ,
				@LengthActual ,
				@DoffTimeSC ,
				@DoffTime ,
				@DoffTimeErr ,
				@DoffTimeActual ,
				@ProductQuantitySC ,
				@ProductQuantityKg ,
				@ProductQuantityKgActual ,
				@ProductQuantityDay ,
				@ProductQuantityDayActual ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC ,
				@SpecialMention  ,
				@SpecialMentionActual   
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