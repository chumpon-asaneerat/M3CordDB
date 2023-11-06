/****** Object:  StoredProcedure [dbo].[SaveDIPPalletSlip]    Script Date: 11/7/2023 3:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPPalletSlip
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPPalletSlip] (
  @DIPPCId int
, @PalletCode nvarchar(30)
, @CreateDate datetime
, @TwistNo nvarchar(100)
, @Counter int
, @ActualQty decimal(18, 3)
, @ActualWeight decimal(18, 3)
, @UserName nvarchar(100)
, @PalletStatus int
, @PalletId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPPalletSlip 
                    WHERE PalletId = @PalletId)
        BEGIN
            UPDATE DIPPalletSlip 
               SET DIPPCId = @DIPPCId
                 , PalletCode = @PalletCode
                 , CreateDate = @CreateDate
                 , TwistNo = @TwistNo
                 , [Counter] = @Counter
                 , UserName = @UserName
                 , PalletStatus = @PalletStatus
             WHERE PalletId = @PalletId
        END
        ELSE
        BEGIN
			INSERT INTO DIPPalletSlip
		    (
                  DIPPCId
                , PalletCode
                , CreateDate
                , TwistNo
                , [Counter]
                , UserName
                , PalletStatus
			)
			VALUES
			(
                  @DIPPCId
                , @PalletCode
                , @CreateDate
                , @TwistNo
                , @Counter
                , @UserName
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
