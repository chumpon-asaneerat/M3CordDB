/****** Object:  StoredProcedure [dbo].[SaveDIPMaterialCheckSheetItem]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPMaterialCheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPMaterialCheckSheetItem] (
  @MaterialCheckId int
, @SPNo int
, @LotNo nvarchar(30) 
, @CHNo int
, @CheckYarnNo bit
, @CheckYanScrap bit
, @CheckYarnBall bit
, @CheckCover bit
, @CheckSensor bit
, @CheckDustFilter bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPMaterialCheckSheetItem 
                    WHERE MaterialCheckId = @MaterialCheckId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE DIPMaterialCheckSheetItem 
               SET LotNo = @LotNo
                 , CHNo = @CHNo
                 , CheckYarnNo = @CheckYarnNo
                 , CheckYanScrap = @CheckYanScrap
                 , CheckYarnBall = @CheckYarnBall
                 , CheckCover = @CheckCover
                 , CheckSensor = @CheckSensor
                 , CheckDustFilter = @CheckDustFilter
             WHERE MaterialCheckId = @MaterialCheckId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO DIPMaterialCheckSheetItem
		    (
                  MaterialCheckId
                , SPNo
                , LotNo
                , CHNo
                , CheckYarnNo
                , CheckYanScrap
                , CheckYarnBall
                , CheckCover
                , CheckSensor
                , CheckDustFilter
			)
			VALUES
			(
                  @MaterialCheckId
                , @SPNo
                , @LotNo
                , @CHNo
                , @CheckYarnNo
                , @CheckYanScrap
                , @CheckYarnBall
                , @CheckCover
                , @CheckSensor
                , @CheckDustFilter
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
