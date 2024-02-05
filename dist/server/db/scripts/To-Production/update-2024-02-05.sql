/*********** Script Update Date: 2024-02-05  ***********/
/****** Object:  StoredProcedure [dbo].[GetTwist1Opts]    Script Date: 2/2/2024 14:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetTwist1Opts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetTwist1Opts NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetTwist1Opts]
(
  @PCTwist1Id int = NULL
)
AS
BEGIN
    SELECT DISTINCT 
	       A.* ,
		   B.MCCode ,
		   B.ProductLotNo ,
		   B.CustomerName ,
		   B.ProductName ,
		   B.ItemYarn ,
		   B.CordStructure ,
		   B.TreatRoute ,
		   B.TwistSpec ,
		   B.PCDate ,
		   B.IssueDate ,
		   B.IssueBy 
      FROM PCTwist1Operation A, PCTwist1View B
     WHERE A.PCTwist1Id = B.PCTwist1Id
	   AND A.PCTwist1Id = @PCTwist1Id

END

GO


/*********** Script Update Date: 2024-02-05  ***********/
/****** Object:  StoredProcedure [dbo].[GetRawMaterialSummaries]    Script Date: 2/2/2024 15:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSummaries
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetRawMaterialSummaries NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetRawMaterialSummaries]
(
  @PCTwist1Id int
)
AS
BEGIN
		SELECT DISTINCT
		       A.Twist1LoadId
			 , A.PCTwist1Id
		     , A.ProductionDate
		     , A.ItemYarn
			 , B.PalletNo
			 , B.TraceNo
			 , COUNT(TraceNo) AS InputCH
			 , MIN(B.SPNo) AS SPNoMin
			 , MAX(B.SPNo) AS SPNoMax
		     , A.DoffNo
             , A.Keiba
             , A.Traverse
             , A.Crossing
             , A.ScrapeTube
             , A.Form
             , A.Stain
			 , A.ShiftName
             , A.UserName
             , A.Chief
             , A.Remark
             , C.ProductLotNo
             , C.CustomerName
             , C.ProductName
             , C.CordStructure
             , C.TreatRoute
             , C.TwistSpec
             , C.PCDate
             , C.IssueDate
             , C.IssueBy 
        FROM Twist1LoadRecord A, Twist1LoadRecordItem B, PCTwist1View C
       WHERE A.PCTwist1Id = C.PCTwist1Id
	     AND B.Twist1LoadId = A.Twist1LoadId
         AND A.PCTwist1Id =  @PCTwist1Id
       GROUP BY A.Twist1LoadId
              , A.PCTwist1Id
		      , A.ProductionDate
			  , A.ItemYarn
	          , B.PalletNo
			  , B.TraceNo
		      , A.DoffNo
              , A.Keiba
              , A.Traverse
              , A.Crossing
              , A.ScrapeTube
              , A.Form
              , A.Stain
			  , A.ShiftName
              , A.UserName
              , A.Chief
              , A.Remark
              , C.ProductLotNo
              , C.CustomerName
              , C.ProductName
              , C.CordStructure
              , C.TreatRoute
              , C.TwistSpec
              , C.PCDate
              , C.IssueDate
              , C.IssueBy 

END

GO

