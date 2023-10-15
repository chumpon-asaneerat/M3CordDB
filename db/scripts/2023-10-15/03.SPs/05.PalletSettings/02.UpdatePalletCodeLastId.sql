/****** Object:  StoredProcedure [dbo].[UpdatePalletCodeLastId]    Script Date: 10/15/2023 12:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	UpdatePalletCodeLastId
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC UpdatePalletCodeLastId
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePalletCodeLastId]
(
  @MCCode nvarchar(10)
, @LastId int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
    BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PalletCode WHERE MCCode = @MCCode)
        BEGIN
            UPDATE PalletCode
                SET LastId = @LastId
            WHERE MCCode = @MCCode
        END
        ELSE
        BEGIN
            INSERT INTO PalletCode
            (
                MCCode
              , [Year]
              , LastId
            )
            VALUES
            (   @MCCode
              , YEAR(GETDATE())
              , @LastId
            )
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
