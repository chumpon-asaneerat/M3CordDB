/****** Object:  StoredProcedure [dbo].[SaveS1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS1ConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS1ConditionStd] (
  @ProductCode nvarchar(30),
	@RingDiameterSC bit,
	@RingDiameter nvarchar(100),
	@TwistChangeGearSC bit,
	@TwistChangeGearI decimal(18, 3),
	@TwistChangeGearJ decimal(18, 3),
	@TwistChangeGearK decimal(18, 3),
	@LifterChangeGearSC bit,
	@LifterChangeGearA decimal(18, 3),
	@LifterChangeGearB decimal(18, 3),
	@OuterDiameterSC bit,
	@OuterDiameter decimal(18, 3),
	@TravellerNoSC bit,
	@TravellerNo nvarchar(100),
	@CouterUnitSC bit,
	@CouterUnit decimal(18, 3),
	@CouterUnitErr decimal(18, 3),
	@CouterUnit2SC bit,
	@CouterUnit2 decimal(18, 3),
	@CouterUnit2Err decimal(18, 3),
	@CouterWeightSC bit,
	@CouterWeight decimal(18, 3),
	@CouterWeightErr decimal(18, 3),
	@CouterWeight2SC bit,
	@CouterWeight2 decimal(18, 3),
	@CouterWeight2Err decimal(18, 3),
	@CounterSystemSC bit,
	@CounterSystem nvarchar(100),
	@SenserYarnBreakSC bit,
	@SenserYarnBreak nvarchar(100),
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
        IF EXISTS (SELECT TOP 1 * FROM S1ConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S1ConditionStd 
               SET RingDiameterSC = @RingDiameterSC  ,
					RingDiameter = @RingDiameter ,
					TwistChangeGearSC = @TwistChangeGearSC ,
					TwistChangeGearI = @TwistChangeGearI ,
					TwistChangeGearJ = @TwistChangeGearJ ,
					TwistChangeGearK = @TwistChangeGearK ,
					LifterChangeGearSC = @LifterChangeGearSC ,
					LifterChangeGearA = @LifterChangeGearA ,
					LifterChangeGearB = @LifterChangeGearB ,
					OuterDiameterSC = @OuterDiameterSC ,
					OuterDiameter = @OuterDiameter ,
					TravellerNoSC = @TravellerNoSC ,
					TravellerNo = @TravellerNo ,
					CouterUnitSC = @CouterUnitSC ,
					CouterUnit = @CouterUnit ,
					CouterUnitErr = @CouterUnitErr ,
					CouterUnit2SC = @CouterUnit2SC ,
					CouterUnit2 = @CouterUnit2 ,
					CouterUnit2Err = @CouterUnit2Err ,
					CouterWeightSC = @CouterWeightSC ,
					CouterWeight = @CouterWeight ,
					CouterWeightErr = @CouterWeightErr ,
					CouterWeight2SC = @CouterWeight2SC ,
					CouterWeight2 = @CouterWeight2 ,
					CouterWeight2Err = @CouterWeight2Err ,
					CounterSystemSC = @CounterSystemSC ,
					CounterSystem = @CounterSystem ,
					SenserYarnBreakSC = @SenserYarnBreakSC ,
					SenserYarnBreak = @SenserYarnBreak ,
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
			INSERT INTO S1ConditionStd
		    (
                ProductCode ,
				RingDiameterSC ,
				RingDiameter ,
				TwistChangeGearSC ,
				TwistChangeGearI ,
				TwistChangeGearJ ,
				TwistChangeGearK ,
				LifterChangeGearSC ,
				LifterChangeGearA ,
				LifterChangeGearB ,
				OuterDiameterSC ,
				OuterDiameter ,
				TravellerNoSC ,
				TravellerNo ,
				CouterUnitSC ,
				CouterUnit ,
				CouterUnitErr ,
				CouterUnit2SC ,
				CouterUnit2 ,
				CouterUnit2Err ,
				CouterWeightSC ,
				CouterWeight ,
				CouterWeightErr ,
				CouterWeight2SC ,
				CouterWeight2 ,
				CouterWeight2Err ,
				CounterSystemSC ,
				CounterSystem ,
				SenserYarnBreakSC ,
				SenserYarnBreak ,
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
				@RingDiameterSC ,
				@RingDiameter ,
				@TwistChangeGearSC ,
				@TwistChangeGearI ,
				@TwistChangeGearJ ,
				@TwistChangeGearK ,
				@LifterChangeGearSC ,
				@LifterChangeGearA ,
				@LifterChangeGearB ,
				@OuterDiameterSC ,
				@OuterDiameter ,
				@TravellerNoSC ,
				@TravellerNo ,
				@CouterUnitSC ,
				@CouterUnit ,
				@CouterUnitErr ,
				@CouterUnit2SC ,
				@CouterUnit2 ,
				@CouterUnit2Err ,
				@CouterWeightSC ,
				@CouterWeight ,
				@CouterWeightErr ,
				@CouterWeight2SC ,
				@CouterWeight2 ,
				@CouterWeight2Err ,
				@CounterSystemSC ,
				@CounterSystem ,
				@SenserYarnBreakSC ,
				@SenserYarnBreak ,
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
