/****** Object:  StoredProcedure [dbo].[SaveTwist1LoadRecordItem]    Script Date: 9/11/2023 0:44:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveTwist1LoadRecordItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveTwist1LoadRecordItem] (
  @Twist1LoadId int
, @SPNo int
, @DeckNo int
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @YarnBarcode nvarchar(100)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Twist1LoadRecordItem 
                    WHERE Twist1LoadId = @Twist1LoadId
                      AND SPNo = @SPNo
                      AND DeckNo = @DeckNo)
        BEGIN
            UPDATE Twist1LoadRecordItem 
               SET PalletNo = @PalletNo
                 , TraceNo = @TraceNo
                 , YarnBarcode = @YarnBarcode
             WHERE Twist1LoadId = @Twist1LoadId
               AND SPNo = @SPNo
               AND DeckNo = @DeckNo
        END
        ELSE
        BEGIN
			INSERT INTO Twist1LoadRecordItem
		    (
                  Twist1LoadId
                , SPNo
                , DeckNo
                , PalletNo
                , TraceNo
                , YarnBarcode
			)
			VALUES
			(
                  @Twist1LoadId
                , @SPNo
                , @DeckNo
                , @PalletNo
                , @TraceNo
                , @YarnBarcode
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
