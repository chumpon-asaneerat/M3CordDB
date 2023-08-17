/****** Object:  StoredProcedure [dbo].[SavePCCard]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SavePCCard
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SavePCCard] (
  @PINo nvarchar(50)
, @PCDate datetime
, @CustomerId int
, @ProductCode nvarchar(30)
, @ProductLotNo nvarchar(30)
, @TargetQty decimal(16,3)
, @FinishFlag bit
, @DeleteFlag bit
, @PCId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PCCard WHERE PCId = @PCId)
        BEGIN
            UPDATE PCCard 
               SET PINo = @PINo
                 , PCDate = @PCDate
                 , CustomerId = @CustomerId
                 , ProductCode = @ProductCode
                 , ProductLotNo = @ProductLotNo
                 , TargetQty = @TargetQty
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE PCId = @PCId
        END
        ELSE
        BEGIN
			INSERT INTO PCCard
		    (
                  PINo
                , PCDate
                , CustomerId
                , ProductCode
                , ProductLotNo
                , TargetQty
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
                  @PINo
                , @PCDate
                , @CustomerId
                , @ProductCode
                , @ProductLotNo
                , @TargetQty
                , @FinishFlag
                , @DeleteFlag
			);

			SET @PCId = @@IDENTITY;
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
