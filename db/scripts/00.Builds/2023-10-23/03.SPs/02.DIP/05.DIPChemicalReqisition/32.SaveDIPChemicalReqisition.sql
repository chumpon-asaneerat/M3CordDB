/****** Object:  StoredProcedure [dbo].[SaveDIPChemicalReqisition]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPChemicalReqisition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPChemicalReqisition] (
  @DIPPCId int
, @ReqDate datetime  
, @ProductCode nvarchar(30)
, @DIPLotNo nvarchar(30)
, @SolutionName nvarchar(30)
, @TankNo nvarchar(30)
, @Quantity decimal(18, 3)
, @S8LotNo nvarchar(30)
, @UserName nvarchar(100)
, @Chief nvarchar(100)
, @ReqId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPChemicalReqisition 
                    WHERE ReqId = @ReqId)
        BEGIN
            UPDATE DIPChemicalReqisition 
               SET ReqDate = @ReqDate
                 , ProductCode = @ProductCode
                 , DIPLotNo = @DIPLotNo
                 , SolutionName = @SolutionName
                 , TankNo = @TankNo
                 , Quantity = @Quantity
                 , S8LotNo = @S8LotNo
                 , UserName = @UserName
                 , Chief = @Chief
             WHERE ReqId = @ReqId
        END
        ELSE
        BEGIN
			INSERT INTO DIPChemicalReqisition
		    (
                  DIPPCId
                , ReqDate
                , ProductCode
                , DIPLotNo
                , SolutionName
                , TankNo
                , Quantity
                , S8LotNo
                , UserName
                , Chief
			)
			VALUES
			(
                  @DIPPCId
                , @ReqDate
                , @ProductCode
                , @DIPLotNo
                , @SolutionName
                , @TankNo
                , @Quantity
                , @S8LotNo
                , @UserName
                , @Chief
			);

			SET @ReqId = @@IDENTITY;
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
