/****** Object:  StoredProcedure [dbo].[NewRawMaterialSheet]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	NewRawMaterialSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[NewRawMaterialSheet] (
  @MCCode nvarchar(10)
, @CordProductPkId int = NULL
, @RawMaterialSheetId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM RawMaterialSheet WHERE CordProductPkId = @CordProductPkId)
        BEGIN
			INSERT INTO RawMaterialSheet
		    (
                  MCCode
                , CordProductPkId
			)
			VALUES
			(
                  @MCCode
                , @CordProductPkId
			);

			SET @RawMaterialSheetId = @@IDENTITY;

            UPDATE CordProduct
               SET ProcessingFlag = 1
             WHERE CordProductPkId = @CordProductPkId;
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
