/****** Object:  StoredProcedure [dbo].[DeletePCTwist1]    Script Date: 8/17/2023 8:34:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	DeletePCTwist1
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[DeletePCTwist1] (
  @PCTwist1Id int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PCTwist1 WHERE PCTwist1Id = @PCTwist1Id)
        BEGIN
            UPDATE PCTwist1 
               SET DeleteFlag = 1
             WHERE PCTwist1Id = @PCTwist1Id
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
