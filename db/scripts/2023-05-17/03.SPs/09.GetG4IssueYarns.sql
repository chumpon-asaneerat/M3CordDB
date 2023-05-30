/****** Object:  StoredProcedure [dbo].[GetG4IssueYarns]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4IssueYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetG4IssueYarns NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetG4IssueYarns]
(
  @RequestNo nvarchar(30) = NULL
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
         , I.[Remark]
         , Y.G4YarnPkId -- FROM G4Yarn
         , Y.ItemYarn
         , Y.LotNo
         , Y.YarnType
         , Y.Item400
         , Y.EntryDate
         , Y.G4YarnPkId
      FROM G4IssueYarn I, G4Yarn Y
     WHERE UPPER(LTRIM(RTRIM(I.RequestNo))) = UPPER(LTRIM(RTRIM(COALESCE(@RequestNo, I.RequestNo))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO
