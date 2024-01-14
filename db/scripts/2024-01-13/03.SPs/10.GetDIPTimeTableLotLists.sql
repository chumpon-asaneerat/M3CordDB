/****** Object:  StoredProcedure [dbo].[GetDIPTimeTableLotLists]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetDIPTimeTableLotLists]
(
  @Date datetime
)
AS
BEGIN
DECLARE @Today int
DECLARE @Nextday int
DECLARE @StartTime datetime
DECLARE @EndTime datetime

    SET @StartTime = NULL;
    SET @EndTime = NULL;

    IF (@Date IS NOT NULL)
    BEGIN
        SET @Today = DATEDIFF(dd, 0, @Date);
        SET @Nextday = DATEDIFF(dd, -1, @Date);

        SET @StartTime = DATEADD(HH, 8, @Today);
        SET @EndTime = DATEADD(HH, 8, @Nextday);
    END

    SELECT DISTINCT
           LotNo
     FROM DIPTimeTable
     WHERE PeriodTime >= @StartTime AND PeriodTime < @EndTime

END

GO
