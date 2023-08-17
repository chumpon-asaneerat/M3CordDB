/****** Object:  StoredProcedure [dbo].[DeleteCordProduct]    Script Date: 8/17/2023 8:34:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	DeleteCordProduct
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[DeleteCordProduct] (
  @CordProductPkId int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM CordProduct WHERE CordProductPkId = @CordProductPkId)
        BEGIN
            UPDATE CordProduct 
               SET DeleteFlag = 1
             WHERE CordProductPkId = @CordProductPkId
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
