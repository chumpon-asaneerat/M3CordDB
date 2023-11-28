/****** Object:  StoredProcedure [dbo].[GetPCTwist1]    Script Date: 10/15/2023 16:35:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetPCTwist1
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPCTwist1 NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetPCTwist1]
(
  @PCTwist1Id int
)
AS
BEGIN
    SELECT PCTwist1Id
         , IssueDate
         , IssueBy
         , CheckBy
         , ApproveBy
         , SectionHead
         , SectionMgr
         , MCCode
         , PaperTubeColor
         , ActualQty
         , Remark
         , LastTestNo
         , LastDoffNo
         , FinishFlag
         , DeleteFlag
         , PCId
         , PINo
         , PCDate
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TwistSpec
         , ProductLotNo
         , ProductLotNo
         , TargetQty
      FROM PCTwist1View
     WHERE PCTwist1Id = @PCTwist1Id
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY PCDate;

END

GO
