SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveYarnLoadSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveYarnLoadSheet] (
  @CordProductPkId int
, @RecordDate datetime
, @MCCode nvarchar(10)
, @DoffNos nvarchar(50)
, @Shift nvarchar(10)
, @YarnLoadSheetId int = null out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM YarnLoadSheet WHERE YarnLoadSheetId = @YarnLoadSheetId)
        BEGIN
			INSERT INTO YarnLoadSheet
		    (
                  CordProductPkId
                , RecordDate
                , MCCode
                , DoffNos
                , Shift
            )
			VALUES
			(
                  @CordProductPkId
                , @RecordDate
                , @MCCode
                , @DoffNos
                , @Shift
			);

			SET @YarnLoadSheetId = @@IDENTITY;
        END
        ELSE
        BEGIN

            UPDATE YarnLoadSheet
               SET CordProductPkId = @CordProductPkId
                 , RecordDate = @RecordDate
                 , MCCode = @MCCode
                 , DoffNos = @DoffNos
                 , Shift = @Shift
             WHERE YarnLoadSheetId = @YarnLoadSheetId;
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
