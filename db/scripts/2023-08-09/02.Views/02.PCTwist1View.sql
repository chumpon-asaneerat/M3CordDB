CREATE VIEW PCTwist1View
AS
    SELECT T1.PCTwist1Id
         , T1.IssueDate
         , T1.IssueBy
         , T1.CheckBy
         , T1.ApproveBy
         , T1.SectionHead
         , T1.SectionMgr
         , T1.MCCode
         , T1.PaperTubeColor
         , T1.ActualQty
         , T1.Remark
         , T1.FinishFlag
         , T1.DeleteFlag
         , PC.PCId
         , PC.PINo
         , PC.PCDate
         , PC.CustomerId
         , PC.CustomerName
         , PC.ProductCode
         , PC.ProductName
         , PC.ItemYarn
         , PC.CordStructure
         , PC.ProductLotNo
         , PC.TargetQty
      FROM PCTwist1 T1 
           LEFT OUTER JOIN PCCardView PC ON T1.PCId = PC.PCId

GO
