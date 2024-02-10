/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStdCFRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPTimeTableStdCFRow] (
    @ProductCode nvarchar (30) ,
    @Date datetime,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @Today datetime = NULL
DECLARE @RowType int = 0
	BEGIN TRY
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM DIPTimeTable 
                        WHERE ProductCode = @ProductCode
                          AND PeriodTime = @Today
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO DIPTimeTable
            (
                [RowType]
                ,[PeriodTime]
                ,[LotNo]
                ,[ProductCode]
                ,[S7BobbinSC]
                ,[S8CoolingWaterSystemBath1SC]
                ,[S8CoolingWaterSystemBath1Min]
                ,[S8CoolingWaterSystemBath1Max]
                ,[S8CoolingWaterSystemBath2SC]
                ,[S8CoolingWaterSystemBath2Min]
                ,[S8CoolingWaterSystemBath2Max]
                ,[S8ChemicalWorkSC]
                ,[S8ChemicalFilterSC]
                ,[S8SpeedSC]
                ,[S8Speed]
                ,[S8SpeedErr]
                ,[S8StretchDSC]
                ,[S8StretchD]
                ,[S8StretchDErr]
                ,[S8StretchHSC]
                ,[S8StretchH]
                ,[S8StretchHErr]
                ,[S8StretchNSC]
                ,[S8StretchN]
                ,[S8StretchNErr]
                ,[S8TempDSC]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            )
            SELECT RowType = @RowType
                , PeriodTime = @Today
                , LotNo = @LotNo
                ,[ProductCode]
                ,[S7BobbinSC]
                ,[S8CoolingWaterSystemBath1SC]
                ,[S8CoolingWaterSystemBath1Min]
                ,[S8CoolingWaterSystemBath1Max]
                ,[S8CoolingWaterSystemBath2SC]
                ,[S8CoolingWaterSystemBath2Min]
                ,[S8CoolingWaterSystemBath2Max]
                ,[S8ChemicalWorkSC]
                ,[S8ChemicalFilterSC]
                ,[S8SpeedSC]
                ,[S8Speed]
                ,[S8SpeedErr]
                ,[S8StretchDSC]
                ,[S8StretchD]
                ,[S8StretchDErr]
                ,[S8StretchHSC]
                ,[S8StretchH]
                ,[S8StretchHErr]
                ,[S8StretchNSC]
                ,[S8StretchN]
                ,[S8StretchNErr]
                ,[S8TempDSC]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            FROM DIPTimeTableStd 
            WHERE ProductCode = @ProductCode;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO
