/****** Object:  StoredProcedure [dbo].[UpdatePalletCodeLastId]    Script Date: 1/10/2024 12:32:19 ******/
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
ALTER PROCEDURE [dbo].[UpdatePalletCodeLastId]
(
  @MCCode nvarchar(10)
, @year int
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
				  , [Year] = @year
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

/****** Object:  StoredProcedure [dbo].[GetPalletCode]    Script Date: 1/10/2024 12:31:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetPalletCode
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPalletCode NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetPalletCode]
(
  @MCCode nvarchar(10)
, @Year int
)
AS
BEGIN
DECLARE @currYear int
DECLARE @currId int
    SELECT TOP 1 @currYear = [Year], @currId = LastId
      FROM PalletCode
     WHERE MCCode = @MCCode
    IF (@currYear IS NULL OR @currYear < @year)
    BEGIN
        EXEC UpdatePalletCodeLastId @MCCode,  @year, 0
    END

    SELECT  MCCode ,
			[Year] ,
	        LastID
     FROM PalletCode
     WHERE MCCode = @MCCode

END

GO
