/****** Object:  StoredProcedure [dbo].[GetPCCards]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetProducts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPCCards NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetPCCards]
(
  @CustomerName nvarchar(150) = NULL
, @ProductLotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT PCId
         , PINo
         , PCDate
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TreatRoute
         , TwistSpec
         , ProductLotNo
         , TargetQty
         , FinishFlag
         , DeleteFlag
      FROM PCCardView
     WHERE UPPER(LTRIM(RTRIM(CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, CustomerName))))
       AND UPPER(LTRIM(RTRIM(ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, ProductLotNo))))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY PCDate;

END

GO
