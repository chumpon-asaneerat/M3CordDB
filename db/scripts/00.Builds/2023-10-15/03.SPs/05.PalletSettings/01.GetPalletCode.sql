/****** Object:  StoredProcedure [dbo].[GetPalletCode]    Script Date: 10/15/2023 12:28:26 ******/
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
CREATE PROCEDURE [dbo].[GetPalletCode]
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
        EXEC UpdatePalletCodeLastId @MCCode,  0
    END

    SELECT  MCCode ,
			[Year] ,
	        LastID
     FROM PalletCode
     WHERE MCCode = @MCCode

END

GO
