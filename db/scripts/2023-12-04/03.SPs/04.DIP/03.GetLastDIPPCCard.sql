/****** Object:  StoredProcedure [dbo].[GetLastDIPPCCard]    Script Date: 12/4/2023 10:58:49 ******/
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
ALTER PROCEDURE [dbo].[GetLastDIPPCCard]
(
  @MCCode nvarchar(10) = NULL
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
         , MCCode
	     , DoffNo
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
         , CreateBy
         , CreateDate
      FROM DIPPCCardView 
     WHERE MCCode = @MCCode 
	   AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
	   AND (   StartTime IS NULL 
	        OR EndTime IS NULL 
			OR FinishTime IS NULL)
     ORDER BY DIPPCId DESC;

END

GO
