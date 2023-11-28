/****** Object:  StoredProcedure [dbo].[SaveS7CreelCheckSheetItem]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS7CreelCheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS7CreelCheckSheetItem] (
  @CreelId int
, @SPNo int
, @CheckUnstable bit
, @CheckNotReachEnd bit
, @CheckNotStraight bit
, @CheckHasSound bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S7CreelCheckSheetItem 
                    WHERE CreelId = @CreelId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE S7CreelCheckSheetItem 
               SET CheckUnstable = @CheckUnstable
                 , CheckNotReachEnd = @CheckNotReachEnd
                 , CheckNotStraight = @CheckNotStraight
                 , CheckHasSound = @CheckHasSound
             WHERE CreelId = @CreelId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO S7CreelCheckSheetItem
		    (
                  CreelId
                , SPNo
                , CheckUnstable
                , CheckNotReachEnd
                , CheckNotStraight
                , CheckHasSound
			)
			VALUES
			(
                  @CreelId
                , @SPNo
                , @CheckUnstable
                , @CheckNotReachEnd
                , @CheckNotStraight
                , @CheckHasSound
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
