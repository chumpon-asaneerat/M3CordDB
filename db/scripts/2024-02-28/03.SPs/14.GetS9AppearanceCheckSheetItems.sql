/****** Object:  StoredProcedure [dbo].[GetS9AppearanceCheckSheetItems]    Script Date: 2/29/2024 7:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS9AppearanceCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS9AppearanceCheckSheetItems NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetS9AppearanceCheckSheetItems]
(
  @AppearId int = NULL
)
AS
BEGIN
    SELECT AppearId
         , SPNo
         , CheckGood
         , CheckBad
         , Check2Color
         , CheckKeiba
         , CheckWeight
         , CheckFrontTwist
         , CheckBackTwist
         , CheckSnarl
         , CheckTube
         , SPUnusable
      FROM S9AppearanceCheckSheetItem 
     WHERE AppearId = @AppearId
     ORDER BY AppearId, SPNo;

END

GO
