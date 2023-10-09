/****** Object:  StoredProcedure [dbo].[SavePalletSetting]    Script Date: 10/9/2023 4:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SavePalletSetting
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SavePalletSetting] (
  @PCTwist1Id int
, @PalletCode nvarchar(30)
, @CreateDate datetime
, @Counter int
, @UserId int
, @PalletType int
, @PalletStatus int
, @PalletId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PalletSetting 
                    WHERE PalletId = @PalletId)
        BEGIN
            UPDATE PalletSetting 
               SET PCTwist1Id = @PCTwist1Id
                 , PalletCode = @PalletCode
                 , CreateDate = @CreateDate
                 , [Counter] = @Counter
                 , UserId = @UserId
                 , PalletType = @PalletType
                 , PalletStatus = @PalletStatus
             WHERE PalletId = @PalletId
        END
        ELSE
        BEGIN
			INSERT INTO PalletSetting
		    (
                  PCTwist1Id
                , PalletCode
                , CreateDate
                , [Counter]
                , UserId
                , PalletType
                , PalletStatus
			)
			VALUES
			(
                  @PCTwist1Id
                , @PalletCode
                , @CreateDate
                , @Counter
                , @UserId
                , @PalletType
                , @PalletStatus
			);
        END

        SET @PalletId = @@IDENTITY;

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
