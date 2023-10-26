/****** Object:  StoredProcedure [dbo].[GetS9CleanCheckSheets]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS9CleanCheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS9CleanCheckSheets NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS9CleanCheckSheets]
(
  @DIPPCId int = NULL
, @CleanId int = NULL
)
AS
BEGIN
    SELECT CleanId
         , DIPPCId
         , CheckDate
         , MCCode
         , ShiftName
         , UserName
      FROM S9CleanCheckSheet 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND CleanId = COALESCE(@CleanId, CleanId)
     ORDER BY CheckDate;

END

GO
