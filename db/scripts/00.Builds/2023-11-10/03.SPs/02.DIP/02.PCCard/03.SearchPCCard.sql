/****** Object:  StoredProcedure [dbo].[SearchPCCards]    Script Date: 11/19/2023 15:43:22 ******/
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
-- EXEC SearchPCCards NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchPCCards]
(
  @CustomerName nvarchar(150) = NULL
, @ProductLotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT A.PCId
         , A.PINo
         , A.PCDate
         , A.CustomerId
         , A.CustomerName
         , A.ProductCode
         , A.ProductName
         , A.ItemYarn
         , A.CordStructure
         , A.TreatRoute
         , A.TwistSpec
         , A.ProductLotNo
         , A.TargetQty
		 , B.ActualQty
         , A.FinishFlag
         , A.DeleteFlag
		 , B.FinishFlag AS Twist1FinishFlag
		 , B.DeleteFlag AS Twist1DeleteFlag
      FROM PCCardView A 
	  LEFT OUTER JOIN PCTwist1 B ON (B.PCId = A.PCId)
	 WHERE UPPER(LTRIM(RTRIM(A.CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, A.CustomerName))))
       AND UPPER(LTRIM(RTRIM(A.ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, A.ProductLotNo))))
       AND (A.DeleteFlag IS NULL OR A.DeleteFlag = 0)
       AND (B.DeleteFlag IS NULL OR B.DeleteFlag = 0)
       --AND (A.FinishFlag IS NULL OR A.FinishFlag = 0)
       --AND (B.FinishFlag IS NULL OR B.FinishFlag = 0)
     ORDER BY PCDate;

END

GO
