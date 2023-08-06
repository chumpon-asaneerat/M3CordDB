/****** Object:  StoredProcedure [dbo].[GetYarnLoadSheets]    Script Date: 8/7/2023 0:57:18 ******/
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
         , I.RecordDate
         , I.MCCode
         , I.DoffNos
         , I.Shift
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
         , P.FinishFlag
         , P.DeleteFlag
         , M.ProcessName
         , M.DeckPerCore
         , M.StartCore
         , M.EndCore
      FROM YarnLoadSheet I, CordProduct P, FirstTwistMC M
     WHERE UPPER(LTRIM(RTRIM(I.MCCode))) = UPPER(LTRIM(RTRIM(COALESCE(@MCCode, I.MCCode))))
       AND I.MCCode = M.MCCode
       AND I.CordProductPkId = P.CordProductPkId
     ORDER BY I.RecordDate;

END

GO
