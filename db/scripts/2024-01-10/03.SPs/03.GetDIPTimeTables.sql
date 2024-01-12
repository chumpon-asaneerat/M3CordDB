/****** Object:  StoredProcedure [dbo].[GetDIPTimeTables]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetDIPTimeTables]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPTimeTableId
           DIPPCId,
           ProductCode,
           RowType, -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
           PeriodTime,
           S7BobbinSC,
           S7Bobbin,
           S8CoolingWaterSystemBath1SC,
           S8CoolingWaterSystemBath1,
           S8CoolingWaterSystemBath1Err,
           S8CoolingWaterSystemBath1Value,
           S8CoolingWaterSystemBath2SC,
           S8CoolingWaterSystemBath2,
           S8CoolingWaterSystemBath2Err,
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
           [Remark]
     FROM DIPTimeTable
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
     ORDER BY RowType, PeriodTime;

END

GO
