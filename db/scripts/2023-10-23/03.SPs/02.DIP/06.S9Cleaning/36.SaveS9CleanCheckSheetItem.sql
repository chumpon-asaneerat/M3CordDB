/****** Object:  StoredProcedure [dbo].[SaveS9CleanCheckSheetItem]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS9CleanCheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS9CleanCheckSheetItem] (
  @CleanId int
, @SPNo int
, @CheckSplitter bit
, @CheckRollerCeramic bit
, @CheckSlidebar bit
, @CheckRollerCambox bit
, @CheckTopGuide bit
, @CheckBottomGuide bit
, @CheckRollerFrontS9 bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S9CleanCheckSheetItem 
                    WHERE CleanId = @CleanId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE S9CleanCheckSheetItem 
               SET CheckSplitter = @CheckSplitter
                 , CheckRollerCeramic = @CheckRollerCeramic
                 , CheckSlidebar = @CheckSlidebar
                 , CheckRollerCambox = @CheckRollerCambox
                 , CheckTopGuide = @CheckTopGuide
                 , CheckBottomGuide = @CheckBottomGuide
                 , CheckRollerFrontS9 = @CheckRollerFrontS9
             WHERE CleanId = @CleanId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO S9CleanCheckSheetItem
		    (
                  CleanId
                , SPNo
                , CheckSplitter
                , CheckRollerCeramic
                , CheckSlidebar
                , CheckRollerCambox
                , CheckTopGuide
                , CheckBottomGuide
                , CheckRollerFrontS9
			)
			VALUES
			(
                  @CleanId
                , @SPNo
                , @CheckSplitter
                , @CheckRollerCeramic
                , @CheckSlidebar
                , @CheckRollerCambox
                , @CheckTopGuide
                , @CheckBottomGuide
                , @CheckRollerFrontS9
			);

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
