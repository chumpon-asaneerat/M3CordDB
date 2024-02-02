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
