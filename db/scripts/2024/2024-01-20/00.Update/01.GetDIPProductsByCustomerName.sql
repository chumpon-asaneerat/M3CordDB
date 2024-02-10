/****** Object:  StoredProcedure [dbo].[GetDIPProductsByCustomerName]    Script Date: 18/1/2567 11:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetDIPProductsByCustomerName]
(
  @CustomerName nvarchar(100) = NULL
)
AS
BEGIN
    SELECT DISTINCT 
	       ProductId
         , DIPProductCode AS ProductCode
         --, ProductCode AS TwistProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TreatRoute
         , TwistSpec
      FROM Product
     WHERE ProductCode IN 
	 (
		SELECT ProductCode 
		  FROM CustomerProduct
		 WHERE UPPER(LTRIM(RTRIM(CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, CustomerName))))
		   AND DIPProductCode IS NOT NULL
	 )
     ORDER BY ProductCode;

END

GO
