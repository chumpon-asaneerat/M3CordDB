/****** Object:  StoredProcedure [dbo].[GetTwist1LoadRecords]    Script Date: 8/17/2023 8:42:14 ******/
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
CREATE PROCEDURE [dbo].[GetTwist1LoadRecords]
(
  @PCTwist1Id int
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
         , Chief
         , [Remark]
         , Keiba
         , Traverse
         , Crossing
         , ScrapeTube
         , Form
         , Stain
      FROM Twist1LoadRecord
     WHERE PCTwist1Id = @PCTwist1Id
     ORDER BY ProductionDate;

END

GO
