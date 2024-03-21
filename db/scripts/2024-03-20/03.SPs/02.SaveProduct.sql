/****** Object:  StoredProcedure [dbo].[SaveProduct]    Script Date: 3/22/2024 1:42:29 ******/
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
ALTER PROCEDURE [dbo].[SaveProduct] (
  @ProductCode nvarchar(30)
, @ProductName nvarchar(100)
, @ItemYarn nvarchar(30)
, @CordStructure nvarchar(100)
, @TreatRoute nvarchar(100) = NULL
, @TwistSpec nvarchar(100) = NULL
, @DIPProductCode nvarchar(30) = NULL
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
                 , TreatRoute = @TreatRoute
                 , TwistSpec = @TwistSpec
                 , DIPProductCode = @DIPProductCode
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
                , TreatRoute
                , TwistSpec
                , DIPProductCode
			)
			VALUES
			(
                  @ProductCode
                , @ProductName
                , @ItemYarn
                , @CordStructure
                , @TreatRoute
                , @TwistSpec
                , @DIPProductCode
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
