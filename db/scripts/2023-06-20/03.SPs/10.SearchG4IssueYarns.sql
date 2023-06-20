/****** Object:  StoredProcedure [dbo].[SearchG4IssueYarns]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchG4IssueYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchG4IssueYarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchG4IssueYarns]
(
  @IssueDate datetime = NULL
, @ItemYarn nvarchar(30) = NULL
, @Item400 nvarchar(30) = NULL
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
         , I.[Remark]
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.Item400
		 , Y.ReceiveDate
		 , Y.ReceiveBy
		 , Y.Verify
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y
     WHERE DATEADD(dd, 0, DATEDIFF(dd, 0, I.IssueDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @IssueDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, I.IssueDate)))
       AND UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, Y.ItemYarn))))
       AND UPPER(LTRIM(RTRIM(Y.Item400))) = UPPER(LTRIM(RTRIM(COALESCE(@Item400, Y.Item400))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.WHReceiveFlag IS NULL OR I.WHReceiveFlag = 0)
       AND (I.IssueDate IS NOT NULL)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO
