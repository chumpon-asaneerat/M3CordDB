/****** Object:  StoredProcedure [dbo].[SaveItemCode]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveItemCode
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveItemCode] (
  @Item400 nvarchar(30)
, @ItemYarn nvarchar(30)
, @ItemGroup nvarchar(30)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ItemCode WHERE Item400 = @Item400)
        BEGIN
            UPDATE ItemCode 
               SET ItemYarn = @ItemYarn
                 , ItemGroup = @ItemGroup
             WHERE Item400 = @Item400
        END
        ELSE
        BEGIN
			INSERT INTO ItemCode
			(
                   Item400
                 , ItemYarn
                 , ItemGroup
			)
			VALUES
			(
                   @Item400
                 , @ItemYarn
                 , @ItemGroup
			);
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
