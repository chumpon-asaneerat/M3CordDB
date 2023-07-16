SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveYarnLoadRecord
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
/*
CREATE PROCEDURE [dbo].[SaveYarnLoadRecord] (
  @CordProductPkId int
, @RecordDate datetime
, @MCCode nvarchar(10)
, @SPNos nvarchar(50)
, @DoffNo int
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @TotalWeight decimal(16, 3)
, @TotalCH decimal(16, 0)
, @YarnLoadRecordId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM YarnLoadRecord WHERE YarnLoadRecordId = @YarnLoadRecordId)
        BEGIN
			INSERT INTO YarnLoadRecord
		    (
                  CordProductPkId
                , RecordDate
                , MCCode
                , SPNos
                , DoffNo
                , PalletNo
                , TraceNo
                , TotalWeight
                , TotalCH
            )
			VALUES
			(
                  @CordProductPkId
                , @RecordDate
                , @MCCode
                , @SPNos
                , @DoffNo
                , @PalletNo
                , @TraceNo
                , @TotalWeight
                , @TotalCH
			);

			SET @YarnLoadRecordId = @@IDENTITY;
        END
        ELSE
        BEGIN

            UPDATE YarnLoadRecord
               SET CordProductPkId = @CordProductPkId
                 , RecordDate = @RecordDate
                 , MCCode = @MCCode
                 , SPNos = @SPNos
                 , DoffNo = @DoffNo
                 , PalletNo = @PalletNo
                 , TraceNo = @TraceNo
                 , TotalWeight = @TotalWeight
                 , TotalCH = @TotalCH
             WHERE YarnLoadRecordId = @YarnLoadRecordId;
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
*/