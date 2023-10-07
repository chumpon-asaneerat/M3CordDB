/****** Object:  StoredProcedure [dbo].[GetS4x2ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x2ConditionStd
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x2ConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
	FullPackageModeSC ,
	FullPackageMode ,
	LengthSC ,
	[Length] ,
	LengthErr ,
	WindAngleShiftFunctionSC ,
	WindAngleShiftFunction ,
	AmountOfDisturbSC ,
	AmountOfDisturb ,
	WindAngleSC ,
	WindAngle ,
	DistuebAccelerationTimeSC ,
	DistuebAccelerationTime ,
	DistuebDccelerationTimeSC ,
	DistuebDccelerationTime ,
	TensorSettingSC ,
	TensorSetting ,
	FeedRollerSettingSC ,
	FeedRollerSetting ,
	BollonSettingSC ,
	BollonSetting ,
	MethodOfKnotSC ,
	MethodOfKnot ,
	WindQuantitySC ,
	WindQuantity ,
	WindQuantityErr ,
	DoffTimeSC ,
	DoffTime ,
	DoffTimeErr ,
	ProductQuantitySC ,
	ProductQuantity ,
	ProductQuantityErr ,
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
      FROM S4x2ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO
