/****** Object:  StoredProcedure [dbo].[GetS1Conditions]    Script Date: 2/28/2024 13:14:22 ******/
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
ALTER PROCEDURE [dbo].[GetS1Conditions]
(
  @PCTwist1Id int = NULL
, @S1ConditionId int = NULL
)
AS
BEGIN
    SELECT DISTINCT
	        A.S1ConditionId ,
			A.PCTwist1Id ,
	        A.ProductCode ,
			A.RingDiameterSC ,
			A.RingDiameter ,
			A.RingDiameterActual ,
			A.TwistChangeGearSC ,
			A.TwistChangeGearI ,
			A.TwistChangeGearIActual ,
			A.TwistChangeGearJ ,
			A.TwistChangeGearJActual ,
			A.TwistChangeGearK ,
			A.TwistChangeGearKActual ,
			A.LifterChangeGearSC ,
			A.LifterChangeGearA ,
			A.LifterChangeGearAActual ,
			A.LifterChangeGearB ,
			A.LifterChangeGearBActual ,
			A.OuterDiameterSC ,
			A.OuterDiameter ,
			A.OuterDiameterActual ,
			A.TravellerNoSC ,
			A.TravellerNo ,
			A.TravellerNoActual ,
			A.CouterUnitSC ,
			A.CouterUnit ,
			A.CouterUnitErr ,
			A.CouterUnitActual ,
			A.CouterUnit2SC ,
			A.CouterUnit2 ,
			A.CouterUnit2Err ,
			A.CouterUnit2Actual ,
			A.CouterWeightSC ,
			A.CouterWeight ,
			A.CouterWeightErr ,
			A.CouterWeightActual ,
			A.CouterWeight2SC ,
			A.CouterWeight2 ,
			A.CouterWeight2Actual ,
			A.CouterWeight2Err ,
			A.CounterSystemSC ,
			A.CounterSystem ,
			A.CounterSystemActual ,
			A.SenserYarnBreakSC ,
			A.SenserYarnBreak ,
			A.SenserYarnBreakActual ,
			A.CalculatedTwistingNumberSC ,
			A.CalculatedTwistingNumber ,
            A.CalculatedTwistingNumberType ,
			A.CalculatedTwistingNumberErr ,
			A.CalculatedTwistingNumberActual ,
			A.NumberOfSpindleRotationSC ,
			A.NumberOfSpindleRotation ,
			A.NumberOfSpindleRotationErr ,
			A.NumberOfSpindleRotationActual ,
			A.YarnSpeedSC ,
			A.YarnSpeed ,
			A.YarnSpeedErr ,
			A.YarnSpeedActual ,
			A.SpecialMentionSC ,
			A.SpecialMention ,
            A.HasJoins ,
            A.JoinOK ,
			A.SpecialMentionActual ,
            A.UpdateBy ,
            A.UpdateDate ,
            A.CheckedBy , 
            A.CheckedDate ,
            A.ApproveBy ,
            A.ApproveDate ,
            A.ShiftLeader , 
            A.ProductionManager ,
			B.MCCode ,
			B.ProductLotNo ,
			B.CustomerName ,
			B.ProductName ,
			B.ItemYarn ,
			B.CordStructure ,
			B.TreatRoute ,
			B.TwistSpec ,
			B.PCDate ,
		    B.IssueDate ,
			B.IssueBy 
     FROM S1Condition A, PCTwist1View B
     WHERE A.PCTwist1Id = B.PCTwist1Id
	   AND A.PCTwist1Id = COALESCE(@PCTwist1Id, A.PCTwist1Id)
       AND A.S1ConditionId = COALESCE(@S1ConditionId, A.S1ConditionId)
     ORDER BY A.PCTwist1Id, A.S1ConditionId;

END

GO
