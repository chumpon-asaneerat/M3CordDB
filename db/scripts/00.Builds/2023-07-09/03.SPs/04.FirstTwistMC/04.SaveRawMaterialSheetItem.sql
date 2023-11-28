/****** Object:  StoredProcedure [dbo].[SaveRawMaterialSheetItem]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveRawMaterialSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveRawMaterialSheetItem] (
  @RawMaterialSheetId int = NULL out
, @ProductionDate datetime
, @ItemYarn nvarchar(30)
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @InputCH int
, @DoffNos nvarchar(50)
, @SPNos nvarchar(50)
, @Seq as int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @iMax int;
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM RawMaterialSheetItem 
                        WHERE RawMaterialSheetId = @RawMaterialSheetId 
                          AND Seq = @Seq)
        BEGIN
            SELECT @iMax = MAX(Seq) 
              FROM RawMaterialSheetItem 
             WHERE RawMaterialSheetId = @RawMaterialSheetId;

            IF (@iMax IS NULL OR @iMax < 1) 
            BEGIN
                SET @iMax = 0;
            END
            SET @Seq = @iMax + 1;

			INSERT INTO RawMaterialSheetItem
		    (
                  RawMaterialSheetId
                , Seq
                , ProductionDate
                , ItemYarn
                , PalletNo
                , TraceNo
                , InputCH
                , DoffNos
                , SPNos
			)
			VALUES
			(
                  @RawMaterialSheetId
                , @Seq
                , @ProductionDate
                , @ItemYarn
                , @PalletNo
                , @TraceNo
                , @InputCH
                , @DoffNos
                , @SPNos
			);
        END
        ELSE
        BEGIN
            UPDATE RawMaterialSheetItem
               SET ProductionDate = @ProductionDate
                 , ItemYarn = @ItemYarn
                 , PalletNo = @PalletNo
                 , TraceNo = @TraceNo
                 , InputCH = @InputCH
                 , DoffNos = @DoffNos
                 , SPNos = @SPNos
             WHERE RawMaterialSheetId = @RawMaterialSheetId
               AND Seq = @Seq
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
