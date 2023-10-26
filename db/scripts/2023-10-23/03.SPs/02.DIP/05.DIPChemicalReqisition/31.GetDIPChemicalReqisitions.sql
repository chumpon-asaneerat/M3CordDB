/****** Object:  StoredProcedure [dbo].[GetDIPChemicalReqisitions]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPChemicalReqisitions
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPChemicalReqisitions NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPChemicalReqisitions]
(
  @DIPPCId int = NULL
, @ReqId int = NULL
)
AS
BEGIN
    SELECT ReqId
         , DIPPCId
         , ReqDate
         , ProductCode
         , DIPLotNo
         , SolutionName
         , TankNo
         , Quantity
         , S8LotNo
         , UserName
         , Chief
      FROM DIPChemicalReqisition 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND ReqId = COALESCE(@ReqId, ReqId)
     ORDER BY ReqDate;

END

GO
