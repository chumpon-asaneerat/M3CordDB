/****** Object:  StoredProcedure [dbo].[GetS1ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS1ConditionStd
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS1ConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
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
     FROM S1ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO
