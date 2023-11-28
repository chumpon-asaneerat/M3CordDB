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
