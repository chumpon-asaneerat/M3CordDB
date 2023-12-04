/****** Object:  StoredProcedure [dbo].[GetDIPPCCardsByMCCode]    Script Date: 12/4/2023 10:57:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*********** Script Update Date: 2023-11-03  ***********/
ALTER PROCEDURE [dbo].[GetDIPPCCardsByMCCode]
(
  @MCCode nvarchar(10) = NULL
)
AS
BEGIN
    SELECT DIPPCId
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
     FROM DIPPCCardView 
     WHERE MCCode = COALESCE(@mccode, MCCode)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

GO
