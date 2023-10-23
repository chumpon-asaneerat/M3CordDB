/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditionStd]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetS8BeforeConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
	LotNo,
	SolutionNameBath1,
	SolutionNameBath2,
	TempJacketDrumBath1SC,
	TempJacketDrumBath1,
	TempJacketDrumBath1Err,
	TempJacketDrumBath2SC,
	TempJacketDrumBath2,
	TempJacketDrumBath2Err,
	TempChemicalBath1SC,
	TempChemicalBath1,
	TempChemicalBath1Err,
	TempChemicalBath2SC,
	TempChemicalBath2,
	TempChemicalBath2Err,
	StretchDSC,
	StretchD,
	StretchDErr,
	StretchHSC,
	StretchH,
	StretchHErr,
	StretchNSC,
	StretchN,
	StretchNErr,
	TempDSC,
	TempD,
	TempDErr,
	TempHNSC,
	TempHN,
	TempHNErr,
	SpeedSC,
	Speed,
	SpeedErr,
	ExhaustFanDryerSC,
	ExhaustFanDryer,
	ExhaustFanHNSC,
	ExhaustFanHN,
	CleanBath1,
	CleanBath2,
	CleanFront,
	Cambox
     FROM S8BeforeConditionStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO
