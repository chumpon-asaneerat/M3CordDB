/****** Object:  StoredProcedure [dbo].[GetYarnLoadSheets]    Script Date: 8/17/2023 8:37:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetYarnLoadSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetWarehouseYarns NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetYarnLoadSheets]
(
  @MCCode nvarchar(10) = NULL
)
AS
BEGIN
    SELECT I.YarnLoadSheetId -- FROM YarnLoadSheet
         , I.CordProductPkId
         , I.MCCode
         , I.FinishFlag
         , I.DeleteFlag
         , P.ProductLotNo
         , P.CustomerCode
         , P.CustomerName
         , P.ItemYarn
         , P.ItemCode
         , P.Item400
         , P.Color
         , P.TargetQty
         , P.ActualQty
         --, P.ProcessingFlag
         , M.ProcessName
         , M.DeckPerCore
         , M.StartCore
         , M.EndCore
      FROM YarnLoadSheet I, CordProduct P, FirstTwistMC M
     WHERE UPPER(LTRIM(RTRIM(I.MCCode))) = UPPER(LTRIM(RTRIM(COALESCE(@MCCode, I.MCCode))))
       AND I.MCCode = M.MCCode
       AND I.CordProductPkId = P.CordProductPkId
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
     ORDER BY I.CordProductPkId, I.MCCode;

END


GO
