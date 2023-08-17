/****** Object:  StoredProcedure [dbo].[AddPC1Twist]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	AddPC1Twist
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[AddPC1Twist] (
  @PCId int
, @MCCode nvarchar(10)
, @PaperTubeColor nvarchar(100)
, @Remark nvarchar(200)
, @PCTwist1Id int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM PCTwist1 WHERE PCId = @PCId AND MCCode = @MCCode)
        BEGIN
			INSERT INTO PCTwist1
		    (
                  PCId
                , MCCode
                , PaperTubeColor
                , [Remark]
			)
			VALUES
			(
                  @PCId
                , @MCCode
                , @PaperTubeColor
                , @Remark
			);

			SET @PCTwist1Id = @@IDENTITY;
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
