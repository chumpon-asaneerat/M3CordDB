/****** Object:  StoredProcedure [dbo].[SaveDIPPCCard]    Script Date: 10/24/2023 16:37:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPPCCard
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPPCCard] (
  @CustomerId int = NULL out
, @ProductCode nvarchar(30)
, @DIPLotNo nvarchar(30)
, @ItemYarn nvarchar(30)
, @FinishFlag bit
, @DeleteFlag bit
, @DIPPCId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPPCCard WHERE DIPPCId = @DIPPCId)
        BEGIN
            UPDATE DIPPCCard  
               SET CustomerId = @CustomerId
			     , ProductCode = @ProductCode
                 , DIPLotNo = @DIPLotNo
                 , ItemYarn = @ItemYarn
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE DIPPCId = @DIPPCId
        END
        ELSE
        BEGIN
			INSERT INTO DIPPCCard 
		    (
			      CustomerId
                , ProductCode
                , DIPLotNo
                , ItemYarn
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
			      @CustomerId
                , @ProductCode
                , @DIPLotNo
                , @ItemYarn
                , @FinishFlag
                , @DeleteFlag
			);

			SET @DIPPCId = @@IDENTITY;
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
