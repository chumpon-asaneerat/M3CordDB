/****** Object:  StoredProcedure [dbo].[GetRawMaterialSheetItems]    Script Date: 8/6/2023 23:39:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetRawMaterialSheetItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetRawMaterialSheetItems]
(
  @RawMaterialSheetId int
)
AS
BEGIN
	SELECT RawMaterialSheetId
	     , Seq
         , ProductionDate
         , ItemYarn
         , PalletNo
         , TraceNo
         , InputCH
         , DoffNos
         , SPNos
      FROM RawMaterialSheetItem
     WHERE RawMaterialSheetId = @RawMaterialSheetId

END

GO
