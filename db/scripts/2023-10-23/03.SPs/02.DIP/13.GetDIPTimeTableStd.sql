/****** Object:  StoredProcedure [dbo].[GetDIPTimeTableStd]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetDIPTimeTableStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
	S7Bobbin,
	S8CoolingWaterSystemBath1SC,
	S8CoolingWaterSystemBath1,
	S8CoolingWaterSystemBath1Err,
	S8CoolingWaterSystemBath2SC,
	S8CoolingWaterSystemBath2,
	S8CoolingWaterSystemBath2Err,
	S8ChemicalWork,
	S8ChemicalFilter,
	S8SpeedSC,
	S8Speed,
	S8SpeedErr,
	S8StretchDSC,
	S8StretchD,
	S8StretchDErr,
	S8StretchHSC,
	S8StretchH,
	S8StretchHErr,
	S8StretchNSC,
	S8StretchN,
	S8StretchNErr,
	S8TempDSC,
	S8TempD,
	S8TempDErr,
	S8TempHNSC,
	S8TempHN,
	S8TempHNErr,
	S9GlideStatus
     FROM DIPTimeTableStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO
