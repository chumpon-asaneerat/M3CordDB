/****** Object:  StoredProcedure [dbo].[GetS7CreelCheckSheetItems]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS7CreelCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS7CreelCheckSheetItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS7CreelCheckSheetItems]
(
  @CreelId int = NULL
)
AS
BEGIN
    SELECT CreelId
         , SPNo
         , CheckUnstable
         , CheckNotReachEnd
         , CheckNotStraight
         , CheckHasSound
      FROM S7CreelCheckSheetItem 
     WHERE CreelId = @CreelId
     ORDER BY CreelId, SPNo;

END

GO
