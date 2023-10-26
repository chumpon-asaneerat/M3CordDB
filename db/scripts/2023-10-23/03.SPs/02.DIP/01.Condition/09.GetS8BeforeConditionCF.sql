/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditionCF]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetS8BeforeConditionCF]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
	SolutionNameBath1,
	SolutionNameBath2,
	TempJacketDrumBath1SC,
	TempJacketDrumBath1,
	TempJacketDrumBath2SC,
	TempJacketDrumBath2,
	TempChemicalBath1SC,
	TempChemicalBath1,
	TempChemicalBath2SC,
	TempChemicalBath2,
	StretchDSC,
	StretchD,
	StretchHSC,
	StretchH,
	StretchNSC,
	StretchN,
	TempDSC,
	TempD,
	TempHNSC,
	TempHN,
	SpeedSC,
	Speed,
	ExhaustFanDryerSC,
	ExhaustFanDryer,
	ExhaustFanHNSC,
	ExhaustFanHN,
	CleanBath1,
	CleanBath2,
	CleanFront,
	Cambox
     FROM S8BeforeConditionCF
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO
