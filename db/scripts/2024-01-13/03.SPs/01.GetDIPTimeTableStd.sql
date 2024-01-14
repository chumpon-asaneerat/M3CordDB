/****** Object:  StoredProcedure [dbo].[GetDIPTimeTableStd]    Script Date: 1/11/2024 1:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetDIPTimeTableStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
        S7BobbinSC,
        S8CoolingWaterSystemBath1SC,
        S8CoolingWaterSystemBath1Min,
        S8CoolingWaterSystemBath1Max,
        S8CoolingWaterSystemBath2SC,
        S8CoolingWaterSystemBath2Min,
        S8CoolingWaterSystemBath2Max,
        S8ChemicalWorkSC,
        S8ChemicalFilterSC,
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
        S9GlideStatusSC
     FROM DIPTimeTableStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO
