/****** Object:  StoredProcedure [dbo].[GetS9AppearanceCheckSheetItems]    Script Date: 10/24/2023 16:28:37 ******/
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
CREATE PROCEDURE [dbo].[GetS9AppearanceCheckSheetItems]
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
      FROM S9AppearanceCheckSheetItem 
     WHERE AppearId = @AppearId
     ORDER BY AppearId, SPNo;

END

GO
