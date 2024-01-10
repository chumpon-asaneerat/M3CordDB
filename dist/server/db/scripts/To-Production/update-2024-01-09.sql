/*********** Script Update Date: 2024-01-09  ***********/
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


/*********** Script Update Date: 2024-01-09  ***********/
/****** Object:  View [dbo].[PalletSettingView]    Script Date: 1/10/2024 3:02:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[PalletSettingView]
AS
	SELECT DISTINCT A.PalletId
	     , A.PCTwist1Id
		 , A.PalletCode
		 , A.CreateDate
         , A.TwistNo
		 , A.[Counter]
         , A.Mts
		 , A.UserId
		 , A.PalletType
		 , A.PalletStatus
		 , B.PCId
		 , B.PCDate
		 , B.CustomerId
		 , B.CustomerName
		 , B.ProductCode
		 , B.ProductName
		 , B.ItemYarn
		 , B.CordStructure
		 , B.TreatRoute
		 , B.TwistSpec
		 , B.ProductLotNo
		 , B.MCCode
		 , B.ActualQty
		 , B.TargetQty
	  FROM PalletSetting A, PCTwist1View B 
	 WHERE B.PCTwist1Id = A.PCTwist1Id

GO

