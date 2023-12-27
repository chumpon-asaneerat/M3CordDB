/*********** Script Update Date: 2023-12-27  ***********/
/****** Object:  StoredProcedure [dbo].[GetG4Yarns]    Script Date: 12/27/2023 21:02:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4Yarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetG4Yarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetG4Yarns]
(
  @traceNo nvarchar(30) = NULL
, @itemYarn nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(TraceNo))) = UPPER(LTRIM(RTRIM(COALESCE(@traceNo, TraceNo))))
       AND UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
       AND (ReceiveDate IS NULL) -- Only no receive date.
END

GO


/*********** Script Update Date: 2023-12-27  ***********/
/****** Object:  StoredProcedure [dbo].[SearchWarehouseStockYarns]    Script Date: 12/27/2023 21:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchWarehouseStockYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
-- <2023-09-14> :
--	- Add parameter Request No
--	- Comment parameter @IssueDate  
--
-- [== Example ==]
--
-- EXEC SearchWarehouseStockYarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchWarehouseStockYarns]
(
  @ItemYarn nvarchar(30) = NULL
, @RequestNo nvarchar(30) = NULL
, @WHReceiveDate datetime = NULL
)
AS
BEGIN
    SELECT I.G4IssueYarnPkId -- FROM G4IssueYarn
         , I.RequestNo
         , I.IssueDate
         , I.IssueBy
         , I.TraceNo
         , I.PalletNo
         , I.WeightQty
         , I.ConeCH
         , I.PalletType
         , I.DeleteFlag
         , I.FinishFlag
         , I.WHReceiveFlag
         , I.WHReceiveDate
         , I.[Remark]
         , I.UsedCH
         , I.IsAgeing
         , I.AgeingDate
         , I.AgeingBy
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.Item400
		 , Y.ReceiveDate
		 , Y.ReceiveBy
         , Y.ExpiredDate
		 , Y.Verify
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y
     WHERE UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, Y.ItemYarn))))
	   AND UPPER(LTRIM(RTRIM(I.RequestNo))) = UPPER(LTRIM(RTRIM(COALESCE(@RequestNo, I.RequestNo))))
	   AND DATEADD(dd, 0, DATEDIFF(dd, 0, I.WHReceiveDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @WHReceiveDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, I.WHReceiveDate)))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.WHReceiveFlag  = 1)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO

