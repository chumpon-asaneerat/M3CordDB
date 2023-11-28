/****** Object:  StoredProcedure [dbo].[SaveTwist1CheckSheetItem]    Script Date: 10/9/2023 4:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveTwist1CheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveTwist1CheckSheetItem] (
  @Twist1CheckId int
, @SPNo int
, @RawB bit
, @RawE bit
, @CrossB bit
, @CrossE bit
, @FormB bit
, @FormE bit
, @KebaB bit
, @KebaE bit
, @StainB bit
, @StainE bit
, @PaperTubeB bit
, @PaperTubeE bit
, @YarnNoB bit
, @YarnNoE bit
, @BBMarkB bit
, @BBMarkE bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Twist1CheckSheetItem 
                    WHERE Twist1CheckId = @Twist1CheckId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE Twist1CheckSheetItem 
               SET RawB = @RawB
                 , RawE = @RawE
                 , CrossB = @CrossB
                 , CrossE = @CrossE
                 , FormB = @FormB
                 , FormE = @FormE
                 , KebaB = @KebaB
                 , KebaE = @KebaE
                 , StainB = @StainB
                 , StainE = @StainE
                 , PaperTubeB = @PaperTubeB
                 , PaperTubeE = @PaperTubeE
                 , YarnNoB = @YarnNoB
                 , YarnNoE = @YarnNoE
                 , BBMarkB = @BBMarkB
                 , BBMarkE = @BBMarkE
             WHERE Twist1CheckId = @Twist1CheckId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO Twist1CheckSheetItem
		    (
                  Twist1CheckId
                , SPNo
                , RawB
                , RawE
                , CrossB
                , CrossE
                , FormB
                , FormE
                , KebaB
                , KebaE
                , StainB
                , StainE
                , PaperTubeB
                , PaperTubeE
                , YarnNoB
                , YarnNoE
                , BBMarkB
                , BBMarkE
			)
			VALUES
			(
                  @Twist1CheckId
                , @SPNo
                , @RawB
                , @RawE
                , @CrossB
                , @CrossE
                , @FormB
                , @FormE
                , @KebaB
                , @KebaE
                , @StainB
                , @StainE
                , @PaperTubeB
                , @PaperTubeE
                , @YarnNoB
                , @YarnNoE
                , @BBMarkB
                , @BBMarkE
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
