/*********** Script Update Date: 2024-01-02  ***********/
ALTER TABLE [dbo].[SolutionLot] DROP CONSTRAINT PK_SolutionLot;

ALTER TABLE [dbo].[SolutionLot]
ALTER COLUMN SolutionId int NOT NULL ;


ALTER TABLE [dbo].[SolutionLot]
ADD PRIMARY KEY (SolutionLot, SolutionId);

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[ChGetSolutionLotDetail]
(
  @solutionlot nvarchar(30) = NULL
  ,@solutionid int = NULL
  ,@recipe nvarchar(15) = NULL
)
AS
BEGIN


	select s.* , isnull(c.ChemicalName, s.ChemicalNo) as ChemicalName , r.ChemicalType
	from  [dbo].[SolutionLotDetail] s 
	left join [dbo].[ChemicalMaster] c on s.ChemicalNo = c.ChemicalNo
	, [dbo].[SolutionRecipeDetailSpec] r
	where  s.[SolutionID] = r.[SolutionID]
	and s.[Recipe] = r.[Recipe]
	and s.[MixOrder] = r.[MixOrder]
	and s.[SolutionLot] = COALESCE(@solutionlot, s.[SolutionLot])
	and s.[SolutionID] = COALESCE(@solutionlot, s.[SolutionID])
	and s.[Recipe] = COALESCE(@recipe , s.[Recipe])
	order by s.[RecipeOrder] , s.[MixOrder] asc;

END

GO



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
					and [ChemicalNo] = @chemicalno
					and [SolutionID] = @solutionid )
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
					and [SolutionID] = @solutionid
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



/****** Object:  StoredProcedure [dbo].[ChGetSolutionById]    Script Date: 2/1/2567 11:37:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ChGetSolutionById]
(
  @solutionid int = NULL
)
AS
BEGIN
	select  p.DIPProductCode , r1.SolutionId ,r1.SolutionName , r1.Recipe1 as recipe
	from [dbo].[SolutionRecipe] r1, [dbo].[Product] p
	where r1.ProductId = p.ProductId
	and r1.SolutionId = COALESCE(@solutionid, r1.SolutionId)
	union all 
	select  p.DIPProductCode , r1.SolutionId ,r1.SolutionName , r1.Recipe2 as recipe
	from [dbo].[SolutionRecipe] r1, [dbo].[Product] p
	where r1.ProductId = p.ProductId
	and r1.SolutionId = COALESCE(@solutionid, r1.SolutionId)
	union all 
	select  p.DIPProductCode , r1.SolutionId ,r1.SolutionName , r1.Recipe3 as recipe
	from [dbo].[SolutionRecipe] r1, [dbo].[Product] p
	where r1.ProductId = p.ProductId
	and r1.SolutionId = COALESCE(@solutionid, r1.SolutionId)
	union all 
	select  p.DIPProductCode , r1.SolutionId ,r1.SolutionName , r1.Recipe4 as recipe
	from [dbo].[SolutionRecipe] r1, [dbo].[Product] p
	where r1.ProductId = p.ProductId
	and r1.SolutionId = COALESCE(@solutionid, r1.SolutionId)
END

GO

