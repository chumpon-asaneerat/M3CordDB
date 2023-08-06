/****** Object:  View [dbo].[RawMaterialSheetView]    Script Date: 8/6/2023 23:41:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[RawMaterialSheetView]
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
