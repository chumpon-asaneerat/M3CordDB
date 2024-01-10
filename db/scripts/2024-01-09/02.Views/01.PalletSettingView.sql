/****** Object:  View [dbo].[PalletSettingView]    Script Date: 1/10/2024 3:02:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[PalletSettingView]
AS
	SELECT DISTINCT A.PalletId
	     , A.PCTwist1Id
		 , A.PalletCode
		 , A.CreateDate
         , A.TwistNo
		 , A.[Counter]
         , A.Mts
		 , A.UserId
		 , A.PalletType
		 , A.PalletStatus
		 , B.PCId
		 , B.PCDate
		 , B.CustomerId
		 , B.CustomerName
		 , B.ProductCode
		 , B.ProductName
		 , B.ItemYarn
		 , B.CordStructure
		 , B.TreatRoute
		 , B.TwistSpec
		 , B.ProductLotNo
		 , B.MCCode
		 , B.ActualQty
		 , B.TargetQty
	  FROM PalletSetting A, PCTwist1View B 
	 WHERE B.PCTwist1Id = A.PCTwist1Id

GO
