/****** Object:  StoredProcedure [dbo].[SaveProductItemCode]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveProductItemCode
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE SaveProductItemCode (
  @ItemCode nvarchar(30)
, @ItemId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ProductItemCode WHERE ItemId = @ItemId)
        BEGIN
            UPDATE ProductItemCode 
               SET ItemCode = @ItemCode
             WHERE ItemId = @ItemId
        END
        ELSE
        BEGIN
			INSERT INTO ProductItemCode
			(
                   ItemCode
			)
			VALUES
			(
                   @ItemCode
			);

            SET @ItemId = @@IDENTITY;
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
