/****** Object:  StoredProcedure [dbo].[GetLabelCHS9Summary]    Script Date: 1/26/2024 3:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetLabelCHS9Summary
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetLabelCHS9Summary NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetLabelCHS9Summary]
(
  @LotNo nvarchar(50) = NULL
)
AS
BEGIN
    SELECT A.DIPPCId
         , A.CustomerName
         , A.ProductCode
         , A.ItemYarn
         , A.MCCode 
         , B.AppearId
		 , MIN(C.SPNo) AS SPStart
		 , MAX(C.SPNo) AS SPEnd
         , Count(C.CheckGood) AS TotalGood
     FROM DIPPCCardView A
         , S9AppearanceCheckSheet B
         , S9AppearanceCheckSheetItem C  
     WHERE B.DIPPCId = A.DIPPCId
       AND C.AppearId = B.AppearId
       AND C.CheckGood = 1
       AND A.DIPLotNo = @LotNo
     GROUP BY A.DIPPCId
            , A.CustomerName
            , A.ProductCode
            , A.ItemYarn
            , A.MCCode 
            , B.AppearId

END

GO

