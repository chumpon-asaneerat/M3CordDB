/****** Object:  StoredProcedure [dbo].[ChSearchSolutionLot]    Script Date: 14/10/2566 10:55:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ChSearchSolutionLot]
(
  @solutionlot nvarchar(30) = NULL
)
AS
BEGIN
	select l.* 
         , p.ProductCode
         , a.SolutionName
	from SolutionLot l, 
         SolutionRecipe a, 
         Product p
	where l.SolutionId = a.SolutionId
	and a.ProductId = p.ProductId
	and l.SolutionLot = COALESCE(@solutionlot, l.SolutionLot)
END

GO
