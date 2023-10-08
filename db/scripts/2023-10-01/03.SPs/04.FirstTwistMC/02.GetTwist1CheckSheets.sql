/****** Object:  StoredProcedure [dbo].[GetTwist1CheckSheets]    Script Date: 10/9/2023 4:50:37 ******/
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
  @Twist1CheckId int = NULL
)
AS
BEGIN
    SELECT Twist1CheckId
         , PCTwist1Id
         , TestFlag
         , DoffNo
         , ShiftName
         , UserId
         , [Remark]
      FROM Twist1CheckSheet
     WHERE Twist1CheckId = COALESCE(@Twist1CheckId, Twist1CheckId)
     ORDER BY Twist1CheckId
END

GO
