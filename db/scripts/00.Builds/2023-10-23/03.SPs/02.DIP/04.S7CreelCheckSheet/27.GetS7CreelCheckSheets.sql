/****** Object:  StoredProcedure [dbo].[GetS7CreelCheckSheets]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS7CreelCheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS7CreelCheckSheets NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS7CreelCheckSheets]
(
  @DIPPCId int = NULL
, @CreelId int = NULL
)
AS
BEGIN
    SELECT CreelId
         , DIPPCId
         , CheckDate
         , MCCode
         , ShiftName
         , UserName
      FROM S7CreelCheckSheet 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND CreelId = COALESCE(@CreelId, CreelId)
     ORDER BY CheckDate;

END

GO
