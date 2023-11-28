/****** Object:  StoredProcedure [dbo].[SavePalletSettingItem]    Script Date: 10/9/2023 4:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SavePalletSettingItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SavePalletSettingItem] (
  @PalletId int
, @DoffNo int
, @CH decimal(18,3)
, @SPNoStart int
, @SPNoEnd int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PalletSettingItem 
                    WHERE PalletId = @PalletId
                      AND DoffNo = @DoffNo)
        BEGIN
            UPDATE PalletSettingItem 
               SET CH = @CH
                 , SPNoStart = @SPNoStart
                 , SPNoEnd = @SPNoEnd
             WHERE PalletId = @PalletId
               AND DoffNo = @DoffNo
        END
        ELSE
        BEGIN
			INSERT INTO PalletSettingItem
		    (
                  PalletId
                , DoffNo
                , CH
                , SPNoStart
                , SPNoEnd
			)
			VALUES
			(
                  @PalletId
                , @DoffNo
                , @CH
                , @SPNoStart
                , @SPNoEnd
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
