/****** Object:  StoredProcedure [dbo].[SaveProduct]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveProduct
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveProduct] (
  @ProductCode nvarchar(30)
, @ProductName nvarchar(100)
, @ItemYarn nvarchar(30)
, @CordStructure nvarchar(100)
, @ProductId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Product WHERE ProductId = @ProductId)
        BEGIN
            UPDATE Product 
               SET ProductCode = @ProductCode
                 , ProductName = @ProductName
                 , ItemYarn = @ItemYarn
                 , CordStructure = @CordStructure
             WHERE ProductId = @ProductId
        END
        ELSE
        BEGIN
			INSERT INTO Product
		    (
                  ProductCode
                , ProductName
                , ItemYarn
                , CordStructure
			)
			VALUES
			(
                  @ProductCode
                , @ProductName
                , @ItemYarn
                , @CordStructure
			);

			SET @ProductId = @@IDENTITY;
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
