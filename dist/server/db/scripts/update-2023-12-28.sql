/*********** Script Update Date: 2023-12-28  ***********/
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

/****** Object:  StoredProcedure [dbo].[ChSaveSolutionLotDetail]    Script Date: 28/12/2566 2:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[ChSaveSolutionLotDetail] (
  @solutionlot nvarchar(10)
, @solutionid int
, @recipeorder int
, @recipe nvarchar(15)
, @mixorder int
, @chemicalno nvarchar(5)
, @weightcal decimal(8,4)
, @weightactual decimal(8,4)
, @weightmc nvarchar(50)
, @weightdate datetime
, @weightby int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM  [dbo].[SolutionLotDetail]
                    WHERE [SolutionLot] = @solutionlot
					and [Recipe] = @recipe
					and [ChemicalNo] = @chemicalno)
        BEGIN
            UPDATE [dbo].[SolutionLotDetail] 
               SET  [WeightCal]= COALESCE(@weightcal, [WeightCal])
                 , [WeightActual] = COALESCE(@weightactual, [WeightActual])
                 , [WeightMc] = COALESCE(@weightmc, [WeightMc])
                 , [WeightDate] = COALESCE(@weightdate, [WeightDate])
                 , [WeightBy] = COALESCE(@weightby, [WeightBy])
                 
             WHERE [SolutionLot] = @solutionlot
					and [Recipe] = @recipe
					and [ChemicalNo] = @chemicalno
        END
        ELSE
        BEGIN
			INSERT INTO [dbo].[SolutionLotDetail]
		    (
                [SolutionLot] ,[SolutionID] ,[RecipeOrder] ,[Recipe] ,[MixOrder] ,[ChemicalNo]
				, [WeightCal], [WeightActual],[WeightMc], [WeightDate], [WeightBy])
                
			VALUES
			( @solutionlot,@solutionid, @recipeorder, @recipe,@mixorder,@chemicalno
			,@weightcal,@weightactual,@weightmc,@weightdate,@weightby ) ;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO

