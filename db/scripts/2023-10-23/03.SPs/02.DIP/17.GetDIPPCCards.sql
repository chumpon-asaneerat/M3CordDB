/****** Object:  StoredProcedure [dbo].[GetDIPPCCards]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPPCCards
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPCards NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPPCCards]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , FinishFlag
         , DeleteFlag
      FROM DIPPCCardView 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

GO
