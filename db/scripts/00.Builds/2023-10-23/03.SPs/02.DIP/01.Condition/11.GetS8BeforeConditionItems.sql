/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditionItems]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetS8BeforeConditionItems]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT S8ConditionId,
	Seq,
	ProductCode,
	LotNo,
	SolutionNameBath1,
	SolutionNameBath2,
	TempJacketDrumBath1,
	TempJacketDrumBath2,
	TempChemicalBath1,
	TempChemicalBath2,
	StretchD,
	StretchH,
	StretchN,
	TempD,
	TempHN,
	Speed,
	ExhaustFanDryer,
	ExhaustFanHN,
	CleanBath1,
	CleanBath2,
	CleanFront,
	Cambox
     FROM S8BeforeConditionItem
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO
