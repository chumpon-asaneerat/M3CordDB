/****** Object:  View [dbo].[UserInfoView]    Script Date: 11/27/2022 10:10:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW G4YarnView
AS
	SELECT A.G4YarnPkId
	     , A.EntryDate
	     , A.TraceNo
	     , A.PalletNo
		 , A.LotNo
		 , A.ItemYarn
		 , A.PalletType
		 , A.Item400
		 , A.ConeCH
		 , A.Unit
		 , A.KgPerCH
		 , A.WeightQty
		 , A.RemainQty
		 , A.ReceiveDate
		 , A.ReceiveBy
		 , A.UpdateDate
		 , A.MovementDate
         , A.ExpiredDate
         , A.DirectionNo
		 , A.Verify
		 , A.Packing
		 , A.Clean
		 , A.Tearing
		 , A.Falldown
		 , A.Certification
		 , A.Invoice
		 , A.IdentifyArea
		 , A.AmountPallet
		 , A.Other
		 , A.[Action]
		 , A.FinishFlag
		 , A.UpdateFlag
		 , A.DeleteFlag
		 , B.RoleId
		 , B.RoleName
		 , B.FullName AS ReceiveByFullName
		 , B.UserName AS ReceiveByUserName
	  FROM G4Yarn A LEFT OUTER JOIN UserInfoView B ON A.ReceiveBy = B.UserID

GO
