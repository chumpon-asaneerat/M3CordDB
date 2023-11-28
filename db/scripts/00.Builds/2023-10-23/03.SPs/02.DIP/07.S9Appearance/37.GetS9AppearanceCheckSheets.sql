/****** Object:  StoredProcedure [dbo].[GetS9AppearanceCheckSheets]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS9AppearanceCheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS9AppearanceCheckSheets NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS9AppearanceCheckSheets]
(
  @DIPPCId int = NULL
, @AppearId int = NULL
)
AS
BEGIN
    SELECT AppearId
         , DIPPCId
         , CheckDate
         , MCCode
         , ShiftName
         , UserName
      FROM S9AppearanceCheckSheet 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND AppearId = COALESCE(@AppearId, AppearId)
     ORDER BY CheckDate;

END

GO
