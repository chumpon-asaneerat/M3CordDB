/****** Object:  StoredProcedure [dbo].[SaveCordYarn]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveCordYarn
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveCordYarn] (
  @ItemYarn nvarchar(30)
, @PalletNo nvarchar(30)
, @WeightQty decimal(16, 3)
, @LotNo nvarchar(30)
, @TraceNo nvarchar(30)
, @ConeCH decimal(16, 3)
, @PalletType nvarchar(30)
, @Item400 nvarchar(30)
, @ReceiveDate datetime
, @ReceiveBy int
, @FinishFlag bit
, @DeleteFlag bit
, @CordYarnPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM CordYarn WHERE CordYarnPkId = @CordYarnPkId)
        BEGIN
            UPDATE CordYarn 
               SET ItemYarn = @ItemYarn
                 , PalletNo = @PalletNo
                 , WeightQty = @WeightQty
                 , LotNo = @LotNo
                 , TraceNo = @TraceNo
                 , ConeCH = @ConeCH
                 , PalletType = @PalletType
                 , Item400 = @Item400
                 , ReceiveDate = @ReceiveDate
                 , ReceiveBy = @ReceiveBy
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE CordYarnPkId = @CordYarnPkId
        END
        ELSE
        BEGIN
			INSERT INTO CordYarn
		    (
                  ItemYarn
                , PalletNo
                , WeightQty
                , LotNo
                , TraceNo
                , ConeCH
                , PalletType
                , Item400
                , ReceiveDate
                , ReceiveBy
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
                  @ItemYarn
                , @PalletNo
                , @WeightQty
                , @LotNo
                , @TraceNo
                , @ConeCH
                , @PalletType
                , @Item400
                , @ReceiveDate
                , @ReceiveBy
                , @FinishFlag
                , @DeleteFlag
			);

			SET @CordYarnPkId = @@IDENTITY;
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
