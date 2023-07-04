/****** Object:  StoredProcedure [dbo].[SaveCordProduct]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveCordProduct
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveCordProduct] (
  @ProductLotNo nvarchar(30)
, @CustomerCode nvarchar(30)
, @CustomerName nvarchar(150)
, @ItemYarn nvarchar(30)
, @Item400 nvarchar(30)
, @Color nvarchar(100)
, @TargetQty decimal(16, 3)
, @ActualQty decimal(16, 3)
, @FinishFlag bit
, @DeleteFlag bit
, @CordProductPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM CordProduct WHERE CordProductPkId = @CordProductPkId)
        BEGIN
            UPDATE CordProduct 
               SET ProductLotNo = @ProductLotNo
                 , CustomerCode = @CustomerCode
                 , CustomerName = @CustomerName
                 , ItemYarn = @ItemYarn
                 , Item400 = @Item400
                 , Color = @Color
                 , TargetQty = @TargetQty
                 , ActualQty = @ActualQty
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE @CordProductPkId = @CordProductPkId
        END
        ELSE
        BEGIN
			INSERT INTO CordProduct
		    (
                  ProductLotNo
                , CustomerCode
                , CustomerName
                , ItemYarn
                , Item400
                , Color
                , TargetQty
                , ActualQty
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
                  @ProductLotNo
                , @CustomerCode
                , @CustomerName
                , @ItemYarn
                , @Item400
                , @Color
                , @TargetQty
                , @ActualQty
                , @FinishFlag
                , @DeleteFlag
			);

			SET @CordProductPkId = @@IDENTITY;
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
