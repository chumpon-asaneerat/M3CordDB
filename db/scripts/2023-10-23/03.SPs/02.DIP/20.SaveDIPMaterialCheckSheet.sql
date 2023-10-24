/****** Object:  StoredProcedure [dbo].[SaveDIPMaterialCheckSheet]    Script Date: 10/24/2023 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPMaterialCheckSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPMaterialCheckSheet] (
  @DIPPCId int
, @CheckDate datetime  
, @DoffNo int
, @ShiftName nvarchar(10)
, @UserName nvarchar(100)
, @MaterialCheckId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPMaterialCheckSheet 
                    WHERE MaterialCheckId = @MaterialCheckId)
        BEGIN
            UPDATE DIPMaterialCheckSheet 
               SET DIPPCId = @DIPPCId
                 , CheckDate = @CheckDate
                 , DoffNo = @DoffNo
                 , ShiftName = @ShiftName
                 , UserName = @UserName
             WHERE MaterialCheckId = @MaterialCheckId
        END
        ELSE
        BEGIN
			INSERT INTO DIPMaterialCheckSheet
		    (
                  DIPPCId
                , CheckDate
                , DoffNo
                , ShiftName
                , UserName
			)
			VALUES
			(
                  @DIPPCId
                , @CheckDate
                , @DoffNo
                , @ShiftName
                , @UserName
			);

			SET @MaterialCheckId = @@IDENTITY;
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
