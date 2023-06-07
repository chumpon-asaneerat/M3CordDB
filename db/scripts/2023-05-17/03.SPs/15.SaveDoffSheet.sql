/****** Object:  StoredProcedure [dbo].[SaveDoffSheet]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDoffSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDoffSheet] (
  @CordProductPkId int
, @PaperTubeColor nvarchar(100)
, @ProcessFlow nvarchar(100)
, @FinishFlag bit
, @DeleteFlag bit
, @DoffSheetId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DoffSheet WHERE DoffSheetId = @DoffSheetId)
        BEGIN
            UPDATE DoffSheet 
               SET CordProductPkId = @CordProductPkId
                 , PaperTubeColor = @PaperTubeColor
                 , ProcessFlow = @ProcessFlow
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE DoffSheetId = @DoffSheetId
        END
        ELSE
        BEGIN
			INSERT INTO DoffSheet
		    (
                  CordProductPkId
                , PaperTubeColor
                , ProcessFlow
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
                  @CordProductPkId
                , @PaperTubeColor
                , @ProcessFlow
                , @FinishFlag
                , @DeleteFlag
			);

			SET @DoffSheetId = @@IDENTITY;
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
