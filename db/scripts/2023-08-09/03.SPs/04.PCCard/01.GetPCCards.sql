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
CREATE PROCEDURE [dbo].[GetPCCards]
(
  @unused bit = NULL
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
         , ProductLotNo
         , TargetQty
         , FinishFlag
         , DeleteFlag
      FROM PCCardView
     ORDER BY PCDate;

END

GO
