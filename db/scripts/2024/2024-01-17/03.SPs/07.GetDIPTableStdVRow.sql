/****** Object:  StoredProcedure [dbo].[GetDIPTableStdVRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetDIPTableStdVRow]
(
  @DIPPCId int
)
AS
BEGIN
    SELECT ProductCode,
           DIPPCId,
           RowType, -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
           PeriodTime,
           LotNo,
           S7BobbinSC,
           S7Bobbin,
           S8CoolingWaterSystemBath1SC,
           S8CoolingWaterSystemBath1Min,
           S8CoolingWaterSystemBath1Max,
           S8CoolingWaterSystemBath1Value,
           S8CoolingWaterSystemBath2SC,
           S8CoolingWaterSystemBath2Min,
           S8CoolingWaterSystemBath2Max,
           S8CoolingWaterSystemBath2Value,
           S8ChemicalWorkSC,
           S8ChemicalWork,
           S8ChemicalFilterSC,
           S8ChemicalFilter,
           S8SpeedSC,
           S8Speed,
           S8SpeedErr,
           S8SpeedValue,
           S8StretchDSC,
           S8StretchD,
           S8StretchDErr,
           S8StretchDValue,
           S8StretchHSC,
           S8StretchH,
           S8StretchHErr,
           S8StretchHValue,
           S8StretchNSC,
           S8StretchN,
           S8StretchNErr,
           S8StretchNValue,
           S8TempDSC,
           S8TempD,
           S8TempDErr,
           S8TempDValue,
           S8TempHNSC,
           S8TempHN,
           S8TempHNErr,
           S8TempHNValue,
           S9GlideStatusSC,
           S9GlideStatus,
           [Remark],
           CheckBy,
           CheckDate
     FROM DIPTimeTable
     WHERE DIPPCId = @DIPPCId
       AND RowType = -2
       AND LotNo IS NOT NULL
     ORDER BY DIPPCId, RowType, PeriodTime;

END

GO
