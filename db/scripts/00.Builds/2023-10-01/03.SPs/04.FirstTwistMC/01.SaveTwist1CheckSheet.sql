/****** Object:  StoredProcedure [dbo].[SaveTwist1CheckSheet]    Script Date: 10/9/2023 4:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveTwist1CheckSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveTwist1CheckSheet] (
  @PCTwist1Id int
, @TestFlag bit
, @DoffNo int
, @ShiftName nvarchar(10)
, @UserId int
, @Chief nvarchar(100)
, @Remark nvarchar(100)
, @Twist1CheckId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Twist1CheckSheet 
                    WHERE Twist1CheckId = @Twist1CheckId)
        BEGIN
            UPDATE Twist1CheckSheet 
               SET PCTwist1Id = @PCTwist1Id
                 , TestFlag = @TestFlag
                 , DoffNo = @DoffNo
                 , ShiftName = @ShiftName
                 , UserId = @UserId
                 , Chief = @Chief
                 , [Remark] = @Remark
             WHERE Twist1CheckId = @Twist1CheckId
        END
        ELSE
        BEGIN
			INSERT INTO Twist1CheckSheet
		    (
                  PCTwist1Id
                , TestFlag
                , DoffNo
                , ShiftName
                , UserId
                , Chief
                , [Remark]
			)
			VALUES
			(
                  @PCTwist1Id
                , @TestFlag
                , @DoffNo
                , @ShiftName
                , @UserId
                , @Chief
                , @Remark
			);

			SET @Twist1CheckId = @@IDENTITY;
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
