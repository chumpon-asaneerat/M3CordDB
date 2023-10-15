/****** Object:  StoredProcedure [dbo].[GetS1Conditions]    Script Date: 10/15/2023 12:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS1Conditions
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS1Conditions NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS1Conditions]
(
  @PCTwist1Id int = NULL
, @S1ConditionId int = NULL
)
AS
BEGIN
    SELECT  S1ConditionId ,
			PCTwist1Id ,
	        ProductCode ,
			RingDiameterSC ,
			RingDiameter ,
			RingDiameterActual ,
			TwistChangeGearSC ,
			TwistChangeGearI ,
			TwistChangeGearIActual ,
			TwistChangeGearJ ,
			TwistChangeGearJActual ,
			TwistChangeGearK ,
			TwistChangeGearKActual ,
			LifterChangeGearSC ,
			LifterChangeGearA ,
			LifterChangeGearAActual ,
			LifterChangeGearB ,
			LifterChangeGearBActual ,
			OuterDiameterSC ,
			OuterDiameter ,
			OuterDiameterActual ,
			TravellerNoSC ,
			TravellerNo ,
			TravellerNoActual ,
			CouterUnitSC ,
			CouterUnit ,
			CouterUnitErr ,
			CouterUnitActual ,
			CouterUnit2SC ,
			CouterUnit2 ,
			CouterUnit2Err ,
			CouterUnit2Actual ,
			CouterWeightSC ,
			CouterWeight ,
			CouterWeightErr ,
			CouterWeightActual ,
			CouterWeight2SC ,
			CouterWeight2 ,
			CouterWeight2Actual ,
			CouterWeight2Err ,
			CounterSystemSC ,
			CounterSystem ,
			CounterSystemActual ,
			SenserYarnBreakSC ,
			SenserYarnBreak ,
			SenserYarnBreakActual ,
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
			SpecialMentionActual ,
            UpdateBy ,
            UpdateDate ,
            CheckedBy , 
            CheckedDate ,
            ApproveBy ,
            ApproveDate ,
            ShiftLeader , 
            ProductionManager
     FROM S1Condition
     WHERE PCTwist1Id = COALESCE(@PCTwist1Id, PCTwist1Id)
       AND S1ConditionId = COALESCE(@S1ConditionId, S1ConditionId)
     ORDER BY PCTwist1Id, S1ConditionId;

END

GO
