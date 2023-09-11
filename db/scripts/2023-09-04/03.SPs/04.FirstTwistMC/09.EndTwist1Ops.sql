/****** Object:  StoredProcedure [dbo].[EndTwist1Ops]    Script Date: 9/11/2023 0:44:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	EndTwist1Ops
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[EndTwist1Ops] (
  @PCTwist1Id int
, @ProductionDate datetime
, @TestFlag bit
, @DoffNo int
, @UnitWeight decimal(18,3)
, @OutputCH decimal(18,3)
, @ProductWeight decimal(18,3)
, @WasteWeight decimal(18,3)
, @EndTime datetime
, @Remark nvarchar(100)
, @PCTwist1OpId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PCTwist1Operation WHERE PCTwist1OpId = @PCTwist1OpId)
        BEGIN
            UPDATE PCTwist1Operation 
               SET PCTwist1Id = @PCTwist1Id
                 , ProductionDate = @ProductionDate
                 , TestFlag = @TestFlag
                 , DoffNo = @DoffNo
                 , UnitWeight = @UnitWeight
                 , OutputCH = @OutputCH
                 , ProductWeight = @ProductWeight
                 , WasteWeight = @WasteWeight
                 , EndTime = @EndTime
                 , [Remark] = @Remark
             WHERE PCTwist1OpId = @PCTwist1OpId
        END
        ELSE
        BEGIN
			INSERT INTO PCTwist1Operation
		    (
                  PCTwist1Id
                , ProductionDate
                , TestFlag
                , DoffNo
                , UnitWeight
                , OutputCH
                , ProductWeight
                , WasteWeight
                , EndTime
                , [Remark]
			)
			VALUES
			(
                  @PCTwist1Id
                , @ProductionDate
                , @TestFlag
                , @DoffNo
                , @UnitWeight
                , @OutputCH
                , @ProductWeight
                , @WasteWeight
                , @EndTime
                , @Remark
			);

			SET @PCTwist1OpId = @@IDENTITY;
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
