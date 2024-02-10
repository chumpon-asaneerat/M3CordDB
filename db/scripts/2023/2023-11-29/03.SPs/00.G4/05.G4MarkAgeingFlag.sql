/****** Object:  StoredProcedure [dbo].[G4MarkAgeingFlag]    Script Date: 11/29/2023 2:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	G4MarkAgeingFlag
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[G4MarkAgeingFlag] (
  @G4IssueYarnPkId int
, @IsAgeing bit = 1
, @AgeingBy nvarchar(100) = NULL
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM G4IssueYarn WHERE G4IssueYarnPkId = @G4IssueYarnPkId)
        BEGIN
            IF (@IsAgeing = 1)
            BEGIN
                UPDATE G4IssueYarn 
                   SET IsAgeing = @IsAgeing
                     , AgeingDate = GETDATE()
					 , AgeingBy = @AgeingBy
                 WHERE G4IssueYarnPkId = @G4IssueYarnPkId
            END
            ELSE
            BEGIN
                UPDATE G4IssueYarn 
                   SET IsAgeing = @IsAgeing
                     , AgeingDate = NULL
					 , AgeingBy = NULL
                 WHERE G4IssueYarnPkId = @G4IssueYarnPkId
            END
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
