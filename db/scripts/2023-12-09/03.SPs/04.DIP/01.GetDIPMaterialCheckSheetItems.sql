/****** Object:  StoredProcedure [dbo].[GetDIPMaterialCheckSheetItems]    Script Date: 12/9/2023 16:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPMaterialCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPMaterialCheckSheetItems NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetDIPMaterialCheckSheetItems]
(
  @MaterialCheckId int = NULL
)
AS
BEGIN
    SELECT MaterialCheckId
         , SPNo
         , LotNo
         , DoffNo
         , CHNo
         , CheckYarnNo
         , CheckYanScrap
         , CheckYarnBall
         , CheckCover
         , CheckSensor
         , CheckDustFilter
      FROM DIPMaterialCheckSheetItem 
     WHERE MaterialCheckId = @MaterialCheckId
     ORDER BY MaterialCheckId, SPNo;

END

GO
