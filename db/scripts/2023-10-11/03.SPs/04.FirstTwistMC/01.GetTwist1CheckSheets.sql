/****** Object:  StoredProcedure [dbo].[GetTwist1CheckSheets]    Script Date: 10/13/2023 11:37:20 ******/
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
  @PCTwist1Id int = NULL
, @Twist1CheckId int = NULL
)
AS
BEGIN
    SELECT Twist1CheckId
         , PCTwist1Id
         , ProductionDate
         , ConditionDate
         , TestFlag
         , DoffNo
         , ItemYarn
         , ShiftName
         , UserName
         , Chief
         , [Remark]
      FROM Twist1CheckSheet
     WHERE PCTwist1Id = COALESCE(@PCTwist1Id, PCTwist1Id)
       AND Twist1CheckId = COALESCE(@Twist1CheckId, Twist1CheckId)
     ORDER BY Twist1CheckId
END

GO
