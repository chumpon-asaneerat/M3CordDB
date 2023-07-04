/****** Object:  StoredProcedure [dbo].[GetRawMaterialSheet]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSheet
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetRawMaterialSheet NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetRawMaterialSheet]
(
  @MCCode nvarchar(10)
)
AS
BEGIN
	SELECT RawMaterialSheetId
	     , MCCode
	     , CordProductPkId
         , ProductLotNo
         , CustomerCode
         , CustomerName
         , ItemYarn
         , ItemCode
         , Item400
         , Color
         , TargetQty
         , ActualQty
	     , DeleteFlag
		 , FinishFlag
      FROM RawMaterialSheetView
     WHERE UPPER(LTRIM(RTRIM(MCCode))) = UPPER(LTRIM(RTRIM(@MCCode)))
	   AND (DeleteFlag IS NULL OR DeleteFlag = 0)
	   AND (FinishFlag IS NULL OR FinishFlag = 0)
END

GO
