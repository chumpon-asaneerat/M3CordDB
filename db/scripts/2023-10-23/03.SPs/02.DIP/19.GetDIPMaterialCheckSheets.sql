/****** Object:  StoredProcedure [dbo].[GetDIPMaterialCheckSheets]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPMaterialCheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPCards NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPMaterialCheckSheets]
(
  @DIPPCId int = NULL
, @MaterialCheckId int = NULL
)
AS
BEGIN
    SELECT MaterialCheckId
         , DIPPCId
         , CheckDate
         , MCCode
         , DoffNo
         , ShiftName
         , UserName
      FROM DIPMaterialCheckSheet 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND MaterialCheckId = COALESCE(@MaterialCheckId, MaterialCheckId)
     ORDER BY CheckDate;

END

GO
