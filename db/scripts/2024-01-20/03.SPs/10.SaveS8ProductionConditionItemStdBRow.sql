/****** Object:  StoredProcedure [dbo].[SaveS8ProductionConditionItemStdBRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8ProductionConditionItemStdBRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @Date datetime,
    @DoffingNo int,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
--DECLARE @Today datetime = NULL
DECLARE @RowType int = -1
	BEGIN TRY
        IF (@LotNo IS NULL)
        BEGIN
            -- Update Error Status/Message
            SET @errNum = 100;
            SET @errMsg = 'Lot No Is null';
            RETURN
        END
        /*
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        */
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM S8ProductionConditionItem 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          --AND PeriodTime = @Today
                          AND DoffingDate = @Date
                          AND DoffingNo = @DoffingNo
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
			INSERT INTO S8ProductionConditionItem
		    (
                  DIPPCId
                , RowType
                , DoffingDate
                , DoffingNo
                , LotNo
                , ProductCode

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
			)
            SELECT DIPPCId = @DIPPCId
                , RowType = @RowType
                , DoffingDate = @Date
                , DoffingNo = @DoffingNo
                , LotNo = @LotNo
                ,[ProductCode]

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
            FROM S8ProductionConditionItemStd 
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
