/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 3/22/2024 1:43:21 ******/
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
-- EXEC GetCordProducts NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetProducts]
(
  @ProductCode nvarchar(30) = NULL
, @ItemYarn nvarchar(30) = NULL
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
		 , DIPProductCode
      FROM Product
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
       AND UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
     ORDER BY ProductCode;

END

GO
