/****** Object:  StoredProcedure [dbo].[ChSearchSolutionLot]    Script Date: 27/12/2566 15:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ChSearchSolutionLot]
(
  @solutionlot nvarchar(30) = NULL
)
AS
BEGIN
	select l.* 
         , p.ProductCode
         , a.SolutionName
		 , a.Compound
	from SolutionLot l, 
         SolutionRecipe a, 
         Product p
	where l.SolutionId = a.SolutionId
	and a.ProductId = p.ProductId
	and l.SolutionLot = COALESCE(@solutionlot, l.SolutionLot)
END

GO

/****** Object:  StoredProcedure [dbo].[ChGetSolutionLotDetail]    Script Date: 27/12/2566 15:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[ChGetSolutionLotDetail]
(
  @solutionlot nvarchar(30) = NULL
)
AS
BEGIN


	select s.* , isnull(c.ChemicalName, s.ChemicalNo) AS ChemicalName, r.ChemicalType
	from  [dbo].[SolutionLotDetail] s 
	left join [dbo].[ChemicalMaster] c on s.ChemicalNo = c.ChemicalNo
	, [dbo].[SolutionRecipeDetailSpec] r
	where  s.[SolutionID] = r.[SolutionID]
	and s.[Recipe] = r.[Recipe]
	and s.[MixOrder] = r.[MixOrder]
	and s.[SolutionLot] = @solutionlot
	order by s.[RecipeOrder] , s.[MixOrder] asc;

END

GO
