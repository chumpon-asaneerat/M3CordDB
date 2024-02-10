/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditionStd]    Script Date: 1/12/2024 1:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetS8BeforeConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
    SolutionNameBath1SC,
	SolutionNameBath1,
    SolutionNameBath2SC,
	SolutionNameBath2,
	TempJacketDrumBath1SC,
    TempJacketDrumBath1Min,
	TempJacketDrumBath1Max,
	TempJacketDrumBath2SC,
    TempJacketDrumBath2Min,
	TempJacketDrumBath2Max,
	TempChemicalBath1SC,
	TempChemicalBath1Min,
	TempChemicalBath1Max,
	TempChemicalBath2SC,
	TempChemicalBath2Min,
	TempChemicalBath2Max,
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
	CleanBath1SC,
	CleanBath2SC,
	CleanFrontSC,
	CamboxSC
     FROM S8BeforeConditionStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO
