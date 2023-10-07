/****** Object:  StoredProcedure [dbo].[GetS4x2Condition]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x2Condition
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x2Condition]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
	FullPackageModeSC ,
	FullPackageMode ,
	FullPackageModeActual ,
	LengthSC ,
	[Length] ,
	LengthActual ,
	LengthErr ,
	LengthErrActual ,
	WindAngleShiftFunctionSC ,
	WindAngleShiftFunction ,
	WindAngleShiftFunctionActual ,
	AmountOfDisturbSC ,
	AmountOfDisturb ,
	AmountOfDisturbActual ,
	WindAngleSC ,
	WindAngle ,
	WindAngleActual ,
	DistuebAccelerationTimeSC ,
	DistuebAccelerationTime ,
	DistuebAccelerationTimeActual ,
	DistuebDccelerationTimeSC ,
	DistuebDccelerationTime ,
	DistuebDccelerationTimeActual ,
	TensorSettingSC ,
	TensorSetting ,
	TensorSettingActual ,
	FeedRollerSettingSC ,
	FeedRollerSetting ,
	FeedRollerSettingActual ,
	BollonSettingSC ,
	BollonSetting ,
	BollonSettingActual ,
	MethodOfKnotSC ,
	MethodOfKnot ,
	MethodOfKnotActual ,
	WindQuantitySC ,
	WindQuantity ,
	WindQuantityActual ,
	WindQuantityErr ,
	WindQuantityErrActual ,
	DoffTimeSC ,
	DoffTime ,
	DoffTimeActual ,
	DoffTimeErr ,
	DoffTimeErrActual ,
	ProductQuantitySC ,
	ProductQuantity ,
	ProductQuantityActual ,
	ProductQuantityErr ,
	ProductQuantityErrActual ,
	CalculatedTwistingNumberSC ,
	CalculatedTwistingNumber ,
	CalculatedTwistingNumberActual ,
	CalculatedTwistingNumberErr ,
	CalculatedTwistingNumberErrActual ,
	NumberOfSpindleRotationSC ,
	NumberOfSpindleRotation ,
	NumberOfSpindleRotationActual ,
	NumberOfSpindleRotationErr ,
	NumberOfSpindleRotationErrActual ,
	YarnSpeedSC ,
	YarnSpeed ,
	YarnSpeedActual ,
	YarnSpeedErr ,
	YarnSpeedErrActual ,
	SpecialMentionSC ,
	SpecialMention ,
	SpecialMentionActual 
      FROM S4x2Condition
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO
