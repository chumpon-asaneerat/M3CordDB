/****** Object:  StoredProcedure [dbo].[SaveYarnLoadSheet]    Script Date: 8/17/2023 8:35:49 ******/
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
, @MCCode nvarchar(10)
, @FinishFlag bit
, @DeleteFlag bit
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
                , MCCode
                , FinishFlag
                , DeleteFlag
            )
			VALUES
			(
                  @CordProductPkId
                , @MCCode
                , @FinishFlag
                , @DeleteFlag
			);

			SET @YarnLoadSheetId = @@IDENTITY;
        END
        ELSE
        BEGIN

            UPDATE YarnLoadSheet
               SET CordProductPkId = @CordProductPkId
                 , MCCode = @MCCode
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
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

