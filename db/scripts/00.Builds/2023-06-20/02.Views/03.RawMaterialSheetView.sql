/****** Object:  View [dbo].[RawMaterialSheetView]    Script Date: 11/27/2022 10:10:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW RawMaterialSheetView
AS
	SELECT A.RawMaterialSheetId
	     , A.MCCode
	     , A.CordProductPkId
         , B.ProductLotNo
         , B.CustomerCode
         , B.CustomerName
         , B.ItemYarn
         , B.ItemCode
         , B.Item400
         , B.Color
         , B.TargetQty
         , B.ActualQty
	     , A.DeleteFlag
		 , A.FinishFlag
	  FROM RawMaterialSheet A LEFT OUTER JOIN CordProduct B ON A.CordProductPkId = B.CordProductPkId

GO
