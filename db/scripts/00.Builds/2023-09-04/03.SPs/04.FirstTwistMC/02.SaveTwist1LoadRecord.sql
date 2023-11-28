/****** Object:  StoredProcedure [dbo].[SaveTwist1LoadRecord]    Script Date: 9/11/2023 0:44:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveTwist1LoadRecord
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveTwist1LoadRecord] (
  @PCTwist1Id int
, @ProductionDate datetime
, @TestFlag bit
, @DoffNo int
, @ItemYarn nvarchar(30)
, @ShiftName nvarchar(10)
, @Chief nvarchar(100)
, @Remark nvarchar(100)
, @Keiba bit
, @Traverse bit
, @Crossing bit
, @ScrapeTube bit
, @Form bit
, @Stain bit
, @Twist1LoadId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Twist1LoadRecord WHERE Twist1LoadId = @Twist1LoadId)
        BEGIN
            UPDATE Twist1LoadRecord 
               SET PCTwist1Id = @PCTwist1Id
                 , ProductionDate = @ProductionDate
                 , TestFlag = @TestFlag
                 , DoffNo = @DoffNo
                 , ItemYarn = @ItemYarn
                 , ShiftName = @ShiftName
                 , Chief = @Chief
                 , [Remark] = @Remark
                 , Keiba = @Keiba
                 , Traverse = @Traverse
                 , Crossing = @Crossing
                 , ScrapeTube = @ScrapeTube
                 , Form = @Form
                 , Stain = @Stain
             WHERE Twist1LoadId = @Twist1LoadId
        END
        ELSE
        BEGIN
			INSERT INTO Twist1LoadRecord
		    (
                  PCTwist1Id
                , ProductionDate
                , TestFlag
                , DoffNo
                , ItemYarn
                , ShiftName
                , Chief
                , [Remark]
                , Keiba
                , Traverse
                , Crossing
                , ScrapeTube
                , Form
                , Stain
			)
			VALUES
			(
                  @PCTwist1Id
                , @ProductionDate
                , @TestFlag
                , @DoffNo
                , @ItemYarn
                , @ShiftName
                , @Chief
                , @Remark
                , @Keiba
                , @Traverse
                , @Crossing
                , @ScrapeTube
                , @Form
                , @Stain
			);

			SET @Twist1LoadId = @@IDENTITY;

			IF (@TestFlag = 0)
			BEGIN
				SELECT LastDoffNo = @LastNo FROM PCTwist1 WHERE PCTwist1Id = @PCTwist1Id
				IF (@LastNo IS NULL) SET @LastNo = 0
				UPDATE PCTwist1
				   SET LastDoffNo = @LastNo + 1
				 WHERE PCTwist1Id = @PCTwist1Id
			END
			ELSE
			BEGIN
				SELECT LastTestNo = @LastNo FROM PCTwist1 WHERE PCTwist1Id = @PCTwist1Id
				IF (@LastNo IS NULL) SET @LastNo = 0
				UPDATE PCTwist1
				   SET LastTestNo = @LastNo + 1
				 WHERE PCTwist1Id = @PCTwist1Id
			END
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
