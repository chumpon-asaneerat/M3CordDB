/****** Object:  StoredProcedure [dbo].[GetS4x1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x1ConditionStd
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x1ConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
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
			 MethodOfKnot ,
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
      FROM S4x1ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO
