/****** Object:  Table [dbo].[SolutionLotDetail]    Script Date: 12/12/2566 13:11:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionLotDetail]') AND type in (N'U'))
DROP TABLE [dbo].[SolutionLotDetail]
GO

/****** Object:  Table [dbo].[SolutionLotDetail]    Script Date: 12/12/2566 13:11:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SolutionLotDetail](
	[SolutionLot] [nvarchar](15) NOT NULL,
	[Recipe] [nvarchar](15) NULL,
	[MixOrder] [int] NULL,
	[ChemicalNo] [nvarchar](5) NULL,
	[WeightCal] [decimal](8, 4) NULL,
	[WeightActual] [decimal](8, 4) NULL,
	[WeightMc] [nvarchar](50) NULL,
	[WeightDate] [datetime] NULL,
	[WeightBy] [int] NULL
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[SolutionRecipe]    Script Date: 12/12/2566 13:12:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionRecipe]') AND type in (N'U'))
DROP TABLE [dbo].[SolutionRecipe]
GO

/****** Object:  Table [dbo].[SolutionRecipe]    Script Date: 12/12/2566 13:12:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SolutionRecipe](
	[SolutionId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SolutionName] [nvarchar](30) NULL,
	[Recipe1] [nvarchar](15) NULL,
	[Recipe2] [nvarchar](15) NULL,
	[Recipe3] [nvarchar](15) NULL,
	[Recipe4] [nvarchar](15) NULL,
	[Remark] [nvarchar](30) NULL,
	[QtySpec] [decimal](6, 2) NULL,
	[Compound] [nvarchar](30) NULL,
 CONSTRAINT [PK_SolutionRecipe] PRIMARY KEY CLUSTERED 
(
	[SolutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



SET IDENTITY_INSERT [dbo].[SolutionRecipe] ON 
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (1, 0, N'CT-7-I 27.5%', N'EPOXY', N'FINAL', NULL, NULL, N'P671TT', CAST(1000.00 AS Decimal(6, 2)), N'EPOXY')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (2, 0, N'CT-7-I 27.5%', N'EPOXY', N'FINAL', NULL, NULL, N'P1501T', CAST(1000.00 AS Decimal(6, 2)), NULL)
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (3, 0, N'PX 03 13%', N'PL', N'RF', N'FINAL', NULL, N'PX-03', CAST(1000.00 AS Decimal(6, 2)), NULL)
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (4, 9, N'PX 03 5% +FN 5 2%', N'PL', N'RF', N'FINAL', NULL, N'P1100TT', CAST(1000.00 AS Decimal(6, 2)), N'PL & RF')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (5, 9, N'KT-02 1.3%', N'E-SOLUTION', NULL, NULL, NULL, N'P1100TT', CAST(1000.00 AS Decimal(6, 2)), N'E - solution')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (6, 0, N'PX 03  5%', N'PL', N'RF', N'FINAL', NULL, N'P1671T', CAST(1000.00 AS Decimal(6, 2)), N'PL & RF')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (7, 0, N'KT-02 1.3%', N'E-SOLUTION', NULL, NULL, NULL, N'P1671T', CAST(1000.00 AS Decimal(6, 2)), N'E - solution')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (8, 12, N'AX-09PV3 V1.  2.5%', N'RF', N'RFL', N'P-RFL', NULL, N'P1670T1R', CAST(100.00 AS Decimal(6, 2)), N'RF & RFL')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (9, 0, N'MX520D Rev3  10%', N'RFL', N'P-RFL', NULL, NULL, N'KT9S71', CAST(1000.00 AS Decimal(6, 2)), NULL)
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (10, 7, N'MX520D Rev3  10%', N'RFL', N'P-RFL', NULL, NULL, N'KT3R16', CAST(100.00 AS Decimal(6, 2)), N'RFL & P-RFL')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (11, 11, N'MX-03BR  12%', N'SF', N'SFL', N'FINAL', NULL, N'P1402TRH', CAST(1000.00 AS Decimal(6, 2)), N'FINAL')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (12, 10, N'ISO rev.3 (10%)', N'FINAL', NULL, NULL, NULL, N'P1100ZFT', CAST(1000.00 AS Decimal(6, 2)), NULL)
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (13, 10, N'KT-02 1.3%', N'E-SOLUTION', NULL, NULL, NULL, N'P1100ZFT', CAST(1000.00 AS Decimal(6, 2)), NULL)
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (14, 18, N'AX-09PV3 V7. 10.0%', N'RF', N'RFL', N'FINAL', NULL, N'4673', CAST(1000.00 AS Decimal(6, 2)), N'RF& RFL ( THC-NJ )')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (15, 16, N'AX-09PV3 V7. 10.0%', N'RF', N'RFL', N'FINAL', NULL, N'8335', CAST(1000.00 AS Decimal(6, 2)), N'RF& RFL ( THC-NJ )')
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (16, 0, N'MX 03A (5%)', N'RF', N'RFL', N'P-RFL', N'FINAL', N'P1003', CAST(1000.00 AS Decimal(6, 2)), NULL)
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec], [Compound]) VALUES (17, 8, N'MX520D Rev3 (10%)', N'RFL', N'P-RFL', NULL, NULL, N'KT3S71', CAST(100.00 AS Decimal(6, 2)), N'RFL & P-RFL')
GO
SET IDENTITY_INSERT [dbo].[SolutionRecipe] OFF
GO

/****** Object:  StoredProcedure [dbo].[ChGetSolutionByItem]    Script Date: 12/12/2566 13:15:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[ChGetSolutionByItem]
(
  @productcode nvarchar(30) = NULL
)
AS
BEGIN
	select p.DIPProductCode , a.*
	from [dbo].[SolutionRecipe] a, [dbo].[Product] p
	where a.ProductId = p.ProductId
	and p.DIPProductCode = COALESCE(@productcode, p.DIPProductCode)
END

GO


/****** Object:  StoredProcedure [dbo].[ChGetSolutionRecipeDetailSpec]    Script Date: 12/12/2566 13:16:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ChGetSolutionRecipeDetailSpec]
(
  @solutionid int
  ,@recipe nvarchar(5) = NULL
)
AS
BEGIN
	select s.* , isnull(c.ChemicalName, s.ChemicalNo)
	from  SolutionRecipeDetailSpec s 
	left join [dbo].[ChemicalMaster] c on s.ChemicalNo = c.ChemicalNo
	where  s.SolutionID = @solutionid
	and s.Recipe = @recipe
	order by s.MixOrder asc;
	
END

GO


/****** Object:  StoredProcedure [dbo].[ChSaveSolutionLotDetail]    Script Date: 12/12/2566 13:17:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[ChSaveSolutionLotDetail] (
  @solutionlot nvarchar(10)
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
                 , [WeightDate] = COALESCE(@weightmc, [WeightDate])
                 , [WeightBy] = COALESCE(@weightby, [WeightBy])
                 
             WHERE [SolutionLot] = @solutionlot
					and [Recipe] = @recipe
					and [ChemicalNo] = @chemicalno
        END
        ELSE
        BEGIN
			INSERT INTO [dbo].[SolutionLotDetail]
		    (
                [SolutionLot] ,[Recipe] ,[MixOrder] ,[ChemicalNo], [WeightCal], [WeightActual],[WeightMc], [WeightDate], [WeightBy])
                
			VALUES
			( @solutionlot,@recipe,@mixorder,@chemicalno,@weightcal,@weightactual,@weightmc,@weightdate,@weightby ) ;
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

/****** Object:  Table [dbo].[SolutionLotDetail]    Script Date: 13/12/2566 13:33:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionLotDetail]') AND type in (N'U'))
DROP TABLE [dbo].[SolutionLotDetail]
GO

/****** Object:  Table [dbo].[SolutionLotDetail]    Script Date: 13/12/2566 13:33:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SolutionLotDetail](
	[SolutionLot] [nvarchar](15) NOT NULL,
	[SolutionID] int NOT NULL,
	[RecipeOrder] int NULL,
	[Recipe] [nvarchar](15) NULL,
	[MixOrder] [int] NULL,
	[ChemicalNo] [nvarchar](5) NULL,
	[WeightCal] [decimal](8, 4) NULL,
	[WeightActual] [decimal](8, 4) NULL,
	[WeightMc] [nvarchar](50) NULL,
	[WeightDate] [datetime] NULL,
	[WeightBy] [int] NULL
) ON [PRIMARY]
GO


/****** Object:  StoredProcedure [dbo].[ChSaveSolutionLotDetail]    Script Date: 13/12/2566 13:44:06 ******/
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
                 , [WeightDate] = COALESCE(@weightmc, [WeightDate])
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


/****** Object:  StoredProcedure [dbo].[ChGetSolutionLotDetail]    Script Date: 13/12/2566 14:28:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ChGetSolutionLotDetail]
(
  @solutionlot nvarchar(30) = NULL
)
AS
BEGIN
	select s.* , isnull(c.ChemicalName, s.ChemicalNo) , r.ChemicalType
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

/****** Object:  StoredProcedure [dbo].[ChGetSolutionRecipeDetailSpec]    Script Date: 26/12/2566 15:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[ChGetSolutionRecipeDetailSpec]
(
  @solutionid int
  ,@recipe nvarchar(5) = NULL
)
AS
BEGIN
	select s.* , isnull(c.ChemicalName, s.ChemicalNo) AS ChemicalName
	from  SolutionRecipeDetailSpec s 
	left join [dbo].[ChemicalMaster] c on s.ChemicalNo = c.ChemicalNo
	where  s.SolutionID = @solutionid
	and s.Recipe = @recipe
	order by s.MixOrder asc;
	
END

GO
