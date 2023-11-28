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
CREATE PROCEDURE [dbo].[SaveItemCode] (
  @ItemCode nvarchar(30)
, @ItemWeaving nvarchar(30)
, @ItemYarn nvarchar(30)
, @ItemGroup nvarchar(30)
, @ItemPrepare nvarchar(30)
, @YarnCode nvarchar(5)
, @WidthCode nvarchar(30) = NULL
, @ItemWidth decimal(16, 3) = 0.0
, @CoreWeight decimal(16, 3) = 0.0
, @FullWeight decimal(16, 3) = 0.0
, @WidthWeaving decimal(16, 3) = 0.0
, @WeaveType nvarchar(20) = NULL
, @PkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ItemCode WHERE PkId = @PkId)
        BEGIN
            UPDATE ItemCode 
               SET ItemCode = @ItemCode
                 , ItemWeaving = @ItemWeaving
                 , ItemYarn = @ItemYarn
                 , ItemGroup = @ItemGroup
                 , ItemPrepare = @ItemPrepare
                 , YarnCode = @YarnCode
                 , WidthCode = @WidthCode
                 , ItemWidth = @ItemWidth
                 , CoreWeight = @CoreWeight
                 , FullWeight = @FullWeight
                 , WidthWeaving = @WidthWeaving
                 , WeaveType = @WeaveType
             WHERE PkId = @PkId
        END
        ELSE
        BEGIN
			INSERT INTO ItemCode
			(
                   ItemCode
                 , ItemWeaving
                 , ItemYarn
                 , ItemGroup
                 , ItemPrepare
                 , YarnCode
                 , WidthCode
                 , ItemWidth
                 , CoreWeight
                 , FullWeight
                 , WidthWeaving
                 , WeaveType
			)
			VALUES
			(
                   @ItemCode
                 , @ItemWeaving
                 , @ItemYarn
                 , @ItemGroup
                 , @ItemPrepare
                 , @YarnCode
                 , @WidthCode
                 , @ItemWidth
                 , @CoreWeight
                 , @FullWeight
                 , @WidthWeaving
                 , @WeaveType
			);

			SET @PkId = @@IDENTITY;
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
