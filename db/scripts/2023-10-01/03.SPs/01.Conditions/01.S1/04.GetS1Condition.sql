/****** Object:  StoredProcedure [dbo].[GetS1Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS1Condition
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS1Condition]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
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
			SpecialMentionActual 
     FROM S1Condition
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO
