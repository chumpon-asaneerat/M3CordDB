/****** Object:  StoredProcedure [dbo].[SearchG4AgeingPallet]    Script Date: 11/29/2023 1:27:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchPCTwist1
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchG4AgeingPallet NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchG4AgeingPallet]
(
  @PalletOrTraceNo nvarchar(30) = NULL
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
	 WHERE (UPPER(LTRIM(RTRIM(Y.TraceNo))) = UPPER(LTRIM(RTRIM(COALESCE(@PalletOrTraceNo, Y.TraceNo))))
	    OR UPPER(LTRIM(RTRIM(Y.PalletNo))) = UPPER(LTRIM(RTRIM(COALESCE(@PalletOrTraceNo, Y.PalletNo)))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.IsAgeing IS NULL OR I.IsAgeing = 0)
       AND (I.WHReceiveFlag  = 1)
     ORDER BY I.IssueDate , I.PalletNo;
END

GO
