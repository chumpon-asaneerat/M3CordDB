/****** Object:  StoredProcedure [dbo].[G4IssueYarnReceive]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	G4IssueYarnReceive
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[G4IssueYarnReceive] (
  @G4IssueYarnPkId int
, @Receive bit = 1
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM G4IssueYarn WHERE G4IssueYarnPkId = @G4IssueYarnPkId)
        BEGIN
            IF (@Receive = 1)
            BEGIN
                UPDATE G4IssueYarn 
                   SET WHReceiveFlag = @Receive
                     , WHReceiveDate = GETDATE()
                 WHERE G4IssueYarnPkId = @G4IssueYarnPkId
            END
            ELSE
            BEGIN
                UPDATE G4IssueYarn 
                   SET WHReceiveFlag = @Receive
                     , WHReceiveDate = NULL
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
