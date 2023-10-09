/****** Object:  View [dbo].[PalletSettingView]    Script Date: 11/27/2022 10:10:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW PalletSettingView
AS
	SELECT A.PalletId
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
	  FROM PalletSetting A 
	  LEFT JOIN PCTwist1View B ON B.PCTwist1Id = A.PCTwist1Id

GO
