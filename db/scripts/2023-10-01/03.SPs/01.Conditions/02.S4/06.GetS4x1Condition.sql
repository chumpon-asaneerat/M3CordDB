/****** Object:  StoredProcedure [dbo].[GetS4x1Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x1Condition
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x1Condition]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT  ProductCode ,
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
			 MethodOfKnot ,
			 MethodOfKnotActual ,
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
			 SpecialMention ,
			 SpecialMentionActual
      FROM S4x1Condition
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO
