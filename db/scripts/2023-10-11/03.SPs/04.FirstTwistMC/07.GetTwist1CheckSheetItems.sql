/****** Object:  StoredProcedure [dbo].[GetTwist1CheckSheetItems]    Script Date: 10/13/2023 15:31:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetTwist1CheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetTwist1CheckSheetItems NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetTwist1CheckSheetItems]
(
  @Twist1CheckId int = NULL
)
AS
BEGIN
    SELECT Twist1CheckId
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
      FROM Twist1CheckSheetItem
     WHERE Twist1CheckId = @Twist1CheckId
     ORDER BY Twist1CheckId, SPNo;
END

GO
