/****** Object:  StoredProcedure [dbo].[SaveS9AppearanceCheckSheetItem]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS9AppearanceCheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS9AppearanceCheckSheetItem] (
  @AppearId int
, @SPNo int
, @CheckGood bit
, @CheckBad bit
, @Check2Color bit
, @CheckKeiba bit
, @CheckWeight bit
, @CheckFrontTwist bit
, @CheckBackTwist bit
, @CheckSnarl bit
, @CheckTube bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S9AppearanceCheckSheetItem 
                    WHERE AppearId = @AppearId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE S9AppearanceCheckSheetItem 
               SET CheckGood = @CheckGood
                 , CheckBad = @CheckBad
                 , Check2Color = @Check2Color
                 , CheckKeiba = @CheckKeiba
                 , CheckWeight = @CheckWeight
                 , CheckFrontTwist = @CheckFrontTwist
                 , CheckBackTwist = @CheckBackTwist
                 , CheckSnarl = @CheckSnarl
                 , CheckTube = @CheckTube
             WHERE AppearId = @AppearId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO S9AppearanceCheckSheetItem
		    (
                  AppearId
                , SPNo
                , CheckGood
                , CheckBad
                , Check2Color
                , CheckKeiba
                , CheckWeight
                , CheckFrontTwist
                , CheckBackTwist
                , CheckSnarl
                , CheckTube
			)
			VALUES
			(
                  @AppearId
                , @SPNo
                , @CheckGood
                , @CheckBad
                , @Check2Color
                , @CheckKeiba
                , @CheckWeight
                , @CheckFrontTwist
                , @CheckBackTwist
                , @CheckSnarl
                , @CheckTube
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
