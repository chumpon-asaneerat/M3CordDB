/****** Object:  StoredProcedure [dbo].[GetLabelCHS9Items]    Script Date: 1/26/2024 3:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetLabelCHS9Items
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetLabelCHS9Items NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetLabelCHS9Items]
(
  @LotNo nvarchar(50) = NULL
, @SPStart int = NULL
, @SPEnd int = NULL
)
AS
BEGIN
DECLARE @minSP int
DECLARE @maxSP int
    IF (@SPStart IS NULL) 
        SET @minSP = 1;
    ELSE SET @minSP = @SPStart;

    IF (@SPEnd IS NULL) 
        SET @maxSP = 200;
    ELSE SET @maxSP = @SPEnd;

    SELECT A.DIPLotNo
         , A.ProductCode
		 , C.SPNo
     FROM DIPPCCardView A
         , S9AppearanceCheckSheet B
         , S9AppearanceCheckSheetItem C  
     WHERE B.DIPPCId = A.DIPPCId
       AND C.AppearId = B.AppearId
       AND C.CheckGood = 1
       AND A.DIPLotNo = @LotNo
     ORDER BY C.SPNo

END

GO
