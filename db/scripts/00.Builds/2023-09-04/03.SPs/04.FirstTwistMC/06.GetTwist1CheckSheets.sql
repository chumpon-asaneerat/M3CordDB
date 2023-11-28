/****** Object:  StoredProcedure [dbo].[GetTwist1CheckSheets]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetTwist1CheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetTwist1CheckSheets NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetTwist1CheckSheets]
(
  @Twist1LoadId int = NULL
)
AS
BEGIN
    SELECT Twist1LoadId
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
      FROM Twist1CheckSheet
     WHERE Twist1LoadId = COALESCE(@Twist1LoadId, Twist1LoadId)
     ORDER BY Twist1LoadId, SPNo;
END

GO
