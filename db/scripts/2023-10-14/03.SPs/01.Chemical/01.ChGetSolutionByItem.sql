/****** Object:  StoredProcedure [dbo].[ChGetSolutionByItem]    Script Date: 14/10/2566 10:55:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[ChGetSolutionByItem]
(
  @productcode nvarchar(30) = NULL
)
AS
BEGIN
	select p.ProductCode , a.*
	from [dbo].[SolutionRecipe] a, [dbo].[Product] p
	where a.ProductId = p.ProductId
	and p.ProductCode = COALESCE(@productcode, p.ProductCode)
END

GO

