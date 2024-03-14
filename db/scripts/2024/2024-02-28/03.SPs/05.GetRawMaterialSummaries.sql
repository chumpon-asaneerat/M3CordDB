/****** Object:  StoredProcedure [dbo].[GetRawMaterialSummaries]    Script Date: 2/29/2024 4:22:51 ******/
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
			 , COUNT(B.TraceNo) AS InputCH
			 , D.KgPerCH
			 , COUNT(B.TraceNo) * D.KgPerCH AS InputKG
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
        FROM Twist1LoadRecord A
		   , Twist1LoadRecordItem B
		   , PCTwist1View C
		   , G4YarnView D
       WHERE A.PCTwist1Id = C.PCTwist1Id
	     AND B.Twist1LoadId = A.Twist1LoadId
		 AND B.PalletNo = D.PalletNo
		 AND B.TraceNo = D.TraceNo
         AND A.PCTwist1Id =  @PCTwist1Id
       GROUP BY A.Twist1LoadId
              , A.PCTwist1Id
		      , A.ProductionDate
			  , A.ItemYarn
	          , B.PalletNo
			  , B.TraceNo
			  , D.KgPerCH
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
