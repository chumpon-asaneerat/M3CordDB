/****** Object:  StoredProcedure [dbo].[GetTwist1LoadRecords]    Script Date: 10/13/2023 13:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetProducts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPCCards NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetTwist1LoadRecords]
(
  @PCTwist1Id int = NULL 
, @Twist1LoadId int = NULL 
)
AS
BEGIN
    SELECT Twist1LoadId
         , PCTwist1Id
         , ProductionDate
         , TestFlag
         , DoffNo
         , ItemYarn
         , ShiftName
         , UserName
         , Chief
         , [Remark]
         , Keiba
         , Traverse
         , Crossing
         , ScrapeTube
         , Form
         , Stain
      FROM Twist1LoadRecord
     WHERE PCTwist1Id = COALESCE(@PCTwist1Id, PCTwist1Id)
       AND Twist1LoadId = COALESCE(@Twist1LoadId, Twist1LoadId)
     ORDER BY ProductionDate;

END

GO
