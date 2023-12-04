/****** Object:  View [dbo].[DIPPCCardView]    Script Date: 12/4/2023 10:54:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[DIPPCCardView]
AS
    SELECT PC.DIPPCId
         , PC.CustomerId
         , CM.CustomerName
         , PC.ProductCode
         , PD.ProductName
         , PD.ItemYarn
	     , PC.MCCode
	     , PC.DoffNo
         , PD.CordStructure
         , PD.TreatRoute
         , PD.TwistSpec
         , PC.DIPLotNo
         , PC.StartTime
         , PC.EndTime
         , PC.FinishTime
         , PC.FinishFlag
         , PC.DeleteFlag
         , PC.CreateBy
         , PC.CreateDate
      FROM DIPPCCard PC 
           LEFT OUTER JOIN Customer CM ON PC.CustomerId = CM.CustomerId
           LEFT OUTER JOIN Product PD ON LTRIM(RTRIM(PC.ProductCode)) = LTRIM(RTRIM(PD.DIPProductCode))



GO
