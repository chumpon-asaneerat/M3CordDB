/****** Object:  StoredProcedure [dbo].[GetS4x2Conditions]    Script Date: 10/15/2023 12:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x2Conditions
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS4x2Conditions NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x2Conditions]
(
  @PCTwist1Id int = NULL
, @S4x2ConditionId int = NULL
)
AS
BEGIN
    SELECT  S4x2ConditionId ,
			PCTwist1Id ,
	        ProductCode,
            FullPackageModeSC,
            FullPackageMode,
            FullPackageModeActual,
            LengthSC,
            [Length],
            LengthErr,
            LengthActual,
            WindAngleShiftFunctionSC,
            WindAngleShiftFunction,
            WindAngleShiftFunctionActual,
            AmountOfDisturbSC,
            AmountOfDisturb,
            AmountOfDisturbActual,
            WindAngleSC,
            WindAngle,
            WindAngleActual,
            DistuebAccelerationTimeSC,
            DistuebAccelerationTime,
            DistuebAccelerationTimeActual,
            DistuebDccelerationTimeSC,
            DistuebDccelerationTime,
            DistuebDccelerationTimeActual,
            TensorSettingSC,
            TensorSetting,
            TensorSettingActual,
            FeedRollerSettingSC,
            FeedRollerSetting,
            FeedRollerSettingActual,
            BollonSettingSC,
            BollonSetting,
            BollonSettingActual,
            MethodOfKnotSC,
            MethodOfKnot,
            MethodOfKnotActual,
            WindQuantitySC,
            WindQuantity,
            WindQuantityErr,
            WindQuantityActual,
            DoffTimeSC,
            DoffTime,
            DoffTimeErr,
            DoffTimeActual,
            ProductQuantitySC,
            ProductQuantityKg,
            ProductQuantityKgActual,
            ProductQuantityDay,
            ProductQuantityDayActual,
            CalculatedTwistingNumberSC,
            CalculatedTwistingNumber,
            CalculatedTwistingNumberErr,
            CalculatedTwistingNumberActual,
            NumberOfSpindleRotationSC,
            NumberOfSpindleRotation,
            NumberOfSpindleRotationErr,
            NumberOfSpindleRotationActual,
            YarnSpeedSC,
            YarnSpeed,
            YarnSpeedErr,
            YarnSpeedActual,
            SpecialMentionSC,
            SpecialMention,
            SpecialMentionActual
      FROM S4x2Condition
     WHERE PCTwist1Id = COALESCE(@PCTwist1Id, PCTwist1Id)
       AND S4x2ConditionId = COALESCE(@S4x2ConditionId, S4x2ConditionId)
     ORDER BY ProductCode;

END

GO
