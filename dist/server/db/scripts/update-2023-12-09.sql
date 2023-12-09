/*********** Script Update Date: 2023-12-09  ***********/
ALTER TABLE DIPMaterialCheckSheetItem ADD DoffNo int NULL;
GO



/*********** Script Update Date: 2023-12-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPMaterialCheckSheetItems]    Script Date: 12/9/2023 16:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPMaterialCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPMaterialCheckSheetItems NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetDIPMaterialCheckSheetItems]
(
  @MaterialCheckId int = NULL
)
AS
BEGIN
    SELECT MaterialCheckId
         , SPNo
         , LotNo
         , DoffNo
         , CHNo
         , CheckYarnNo
         , CheckYanScrap
         , CheckYarnBall
         , CheckCover
         , CheckSensor
         , CheckDustFilter
      FROM DIPMaterialCheckSheetItem 
     WHERE MaterialCheckId = @MaterialCheckId
     ORDER BY MaterialCheckId, SPNo;

END

GO


/*********** Script Update Date: 2023-12-09  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPMaterialCheckSheetItem]    Script Date: 12/9/2023 16:36:58 ******/
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
ALTER PROCEDURE [dbo].[SaveDIPMaterialCheckSheetItem] (
  @MaterialCheckId int
, @SPNo int
, @LotNo nvarchar(30) 
, @DoffNo int
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
                 , DoffNo = @DoffNo
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
                , DoffNo
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
                , @DoffNo
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


/*********** Script Update Date: 2023-12-09  ***********/

