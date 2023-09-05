ALTER VIEW PCCardView
AS
    SELECT PC.PCId
         , PC.PINo
         , PC.PCDate
         , PC.CustomerId
         , CM.CustomerName
         , PC.ProductCode
         , PD.ProductName
         , PD.ItemYarn
         , PD.CordStructure
         , PD.TreatRoute
         , PD.TwistSpec
         , PC.ProductLotNo
         , PC.TargetQty
         , PC.FinishFlag
         , PC.DeleteFlag
      FROM PCCard PC 
           LEFT OUTER JOIN Customer CM ON PC.CustomerId = CM.CustomerId
           LEFT OUTER JOIN Product PD ON LTRIM(RTRIM(PC.ProductCode)) = LTRIM(RTRIM(PD.ProductCode))

GO
