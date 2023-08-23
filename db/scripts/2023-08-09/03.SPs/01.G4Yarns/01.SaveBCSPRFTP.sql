/****** Object:  StoredProcedure [dbo].[SaveBCSPRFTP]    Script Date: 8/23/2023 13:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveBCSPRFTP
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveBCSPRFTP] (
  @DTTRA datetime  -- MovementDate
, @DTINP datetime  -- EntryDate
, @CDCON nvarchar(30) -- Pallet No
, @BLELE nvarchar(30) -- Weight Qty
, @CDUM0 nvarchar(20) -- Unit
, @CDKE1 nvarchar(30) -- ItemCode400
, @CDLOT nvarchar(30) -- Lot No
, @CDQUA nvarchar(30) -- N/A
, @TECU1 decimal(16, 3) = 0.0
, @TECU2 decimal(16, 3) = 0.0
, @TECU3 decimal(16, 3) = 0.0 -- ConeCH
, @TECU4 decimal(16, 3) = 0.0
, @TECU5 nvarchar(30) = NULL -- DirectNo
, @TECU6 nvarchar(30) = NULL -- Trace No
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @ItemYarn nvarchar(30)
DECLARE @iCnt int
DECLARE @KgPerCH decimal(16, 3) 
	BEGIN TRY
        SELECT @ItemYarn = ItemYarn 
          FROM ItemCode 
         WHERE Item400 = @CDKE1

        --IF (@ItemYarn IS NULL)
        --BEGIN
        --    SET @ItemYarn = @CDKE1
        --    INSERT INTO ItemCode (ItemCode400, ItemYarn) VALUES (@CDKE1, @ItemYarn)
        --END

        SELECT @iCnt = COUNT(*)
          FROM G4Yarn
         WHERE PALLETNO = @CDCON;

        SET @KgPerCH = @BLELE / @TECU3; -- CALC Kg Per CH
        
        IF (@iCnt = 0)
        BEGIN

			INSERT INTO G4Yarn
			(
                   EntryDate
                 , TraceNo
                 , PalletNo
                 , ItemYarn
                 , LotNo
                 , Item400
                 , Unit
                 , ConeCH
                 , WeightQty
                 , MovementDate
                 , KgPerCH
                 , DirectionNo
			)
			VALUES
			(
                   @DTINP
                 , @TECU6
                 , @CDCON
                 , @ItemYarn
                 , @CDLOT
                 , @CDKE1
                 , @CDUM0
                 , @TECU3
                 , @BLELE
                 , @DTTRA
                 , @KgPerCH
                 , @TECU5
			);
        END
        ELSE
        BEGIN
            UPDATE G4Yarn 
               SET EntryDate = COALESCE(@DTINP, EntryDate)
                 , TraceNo = COALESCE(@TECU6, TraceNo)
                 , PalletNo = COALESCE(@CDCON, PalletNo)
                 , ItemYarn = COALESCE(@ItemYarn, ItemYarn)
                 , LotNo = COALESCE(@CDLOT, LotNo)
                 , Item400 = COALESCE(@CDKE1, Item400)
                 , Unit = COALESCE(@CDUM0, Unit)
                 , ConeCH = COALESCE(@TECU3, ConeCH)
                 , WeightQty = COALESCE(@BLELE, WeightQty)
                 , MovementDate = COALESCE(@DTTRA, MovementDate)
                 , KgPerCH = COALESCE(@KgPerCH, KgPerCH)
                 , DirectionNo = COALESCE(@TECU5, DirectionNo)
             WHERE PalletNo = @CDCON;
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
