/****** Object:  StoredProcedure [dbo].[GetCordProducts]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCordProducts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetCordProducts]
(
  @CustomerName datetime = NULL
, @ProductLotNo nvarchar(30) = NULL
, @ItemYarn nvarchar(30) = NULL
)
AS
BEGIN
    SELECT I.CordProductPkId -- FROM CordProduct
         , I.ProductLotNo
         , I.CustomerCode
         , I.CustomerName
         , I.ItemYarn
         , I.Item400
         , I.TargetQty
         , I.ActualQty
         , I.FinishFlag
         , I.DeleteFlag
      FROM CordProduct I
     WHERE UPPER(LTRIM(RTRIM(I.CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, I.CustomerName))))
       AND UPPER(LTRIM(RTRIM(I.ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, I.ProductLotNo))))
       AND UPPER(LTRIM(RTRIM(I.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, I.ItemYarn))))
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
     ORDER BY I.ItemYarn, I.ProductLotNo;

END

GO
