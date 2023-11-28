/****** Object:  StoredProcedure [dbo].[GetProductsByCustomerName]    Script Date: 11/7/2023 20:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetProductsByCustomerName]
(
  @CustomerName nvarchar(100) = NULL
)
AS
BEGIN
    SELECT ProductId
         , ProductCode
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
	 )
     ORDER BY ProductCode;

END

GO
