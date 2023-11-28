/****** Object:  View [dbo].[PalletSettingView]    Script Date: 11/7/2023 3:53:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[DIPPalletSlipView]
AS
	SELECT A.PalletId
	     , A.DIPPCId
		 , A.PalletCode
		 , A.CreateDate
         , A.TwistNo
		 , A.[Counter]
		 , A.ActualQty
         , A.ActualWeight
		 , A.UserName
		 , A.PalletStatus
		 , B.CustomerId
		 , B.CustomerName
		 , B.ProductCode
		 , B.ProductName
		 , B.ItemYarn
		 , B.CordStructure
		 , B.TreatRoute
		 , B.TwistSpec
		 , B.DIPLotNo
		 , B.MCCode AS S7MCCode
         , B.DoffNo
	  FROM DIPPalletSlip A 
	  LEFT JOIN DIPPCCardView B ON B.DIPPCId = A.DIPPCId

GO
