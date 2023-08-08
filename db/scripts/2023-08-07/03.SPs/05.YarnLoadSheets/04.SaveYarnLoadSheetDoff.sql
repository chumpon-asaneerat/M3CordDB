/****** Object:  StoredProcedure [dbo].[SaveYarnLoadSheetDoff]    Script Date: 8/7/2023 4:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveYarnLoadSheetDoff
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveYarnLoadSheetDoff] (
  @YarnLoadSheetId int
, @RecordDate datetime
, @DoffNos nvarchar(50)
, @Shift nvarchar(10)
, @YarnLoadSheetDoffId int = null out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM YarnLoadSheetDoff WHERE YarnLoadSheetDoffId = @YarnLoadSheetDoffId)
        BEGIN
			INSERT INTO YarnLoadSheetDoff
		    (
                  YarnLoadSheetId
                , RecordDate
                , DoffNos
                , Shift
            )
			VALUES
			(
                  @YarnLoadSheetId
                , @RecordDate
                , @DoffNos
                , @Shift
			);

			SET @YarnLoadSheetDoffId = @@IDENTITY;
        END
        ELSE
        BEGIN
            UPDATE YarnLoadSheetDoff
               SET YarnLoadSheetId = @YarnLoadSheetId
                 , RecordDate = @RecordDate
                 , DoffNos = @DoffNos
                 , Shift = @Shift
             WHERE YarnLoadSheetDoffId = @YarnLoadSheetDoffId;
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
