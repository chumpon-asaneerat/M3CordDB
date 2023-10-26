/****** Object:  StoredProcedure [dbo].[GetLastDIPPCCard]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetLastDIPPCCard
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetLastDIPPCCard NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetLastDIPPCCard]
(
  @unused int = NULL
)
AS
BEGIN
    SELECT TOP 1 
	       DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
      FROM DIPPCCardView 
     WHERE (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
	   AND (   StartTime IS NULL 
	        OR EndTime IS NULL 
			OR FinishTime IS NULL)
     ORDER BY DIPPCId DESC;

END

GO
