/****** Object:  StoredProcedure [dbo].[SaveS9CleanCheckSheet]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS9CleanCheckSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS9CleanCheckSheet] (
  @DIPPCId int
, @CheckDate datetime  
, @MCCode nvarchar(10)
, @ShiftName nvarchar(10)
, @UserName nvarchar(100)
, @CleanId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S9CleanCheckSheet 
                    WHERE CleanId = @CleanId)
        BEGIN
            UPDATE S9CleanCheckSheet 
               SET DIPPCId = @DIPPCId
                 , CheckDate = @CheckDate
                 , MCCode = @MCCode
                 , ShiftName = @ShiftName
                 , UserName = @UserName
             WHERE CleanId = @CleanId
        END
        ELSE
        BEGIN
			INSERT INTO S9CleanCheckSheet
		    (
                  DIPPCId
                , CheckDate
                , MCCode
                , ShiftName
                , UserName
			)
			VALUES
			(
                  @DIPPCId
                , @CheckDate
                , @MCCode
                , @ShiftName
                , @UserName
			);

			SET @CleanId = @@IDENTITY;
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
