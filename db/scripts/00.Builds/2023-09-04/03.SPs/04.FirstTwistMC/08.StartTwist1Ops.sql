/****** Object:  StoredProcedure [dbo].[StartTwist1Ops]    Script Date: 9/11/2023 0:44:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	StartTwist1Ops
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[StartTwist1Ops] (
  @PCTwist1Id int
, @ProductionDate datetime
, @TestFlag bit
, @DoffNo int
, @StartTime datetime
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
                 , StartTime = @StartTime
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
                , StartTime
			)
			VALUES
			(
                  @PCTwist1Id
                , @ProductionDate
                , @TestFlag
                , @DoffNo
                , @StartTime
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
