/****** Object:  StoredProcedure [dbo].[GetS9CleanCheckSheetItems]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS9CleanCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS9CleanCheckSheetItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS9CleanCheckSheetItems]
(
  @CleanId int = NULL
)
AS
BEGIN
    SELECT CleanId
         , SPNo
         , CheckSplitter
         , CheckRollerCeramic
         , CheckSlidebar
         , CheckRollerCambox
         , CheckTopGuide
         , CheckBottomGuide
         , CheckRollerFrontS9
      FROM S9CleanCheckSheetItem 
     WHERE CleanId = @CleanId
     ORDER BY CleanId, SPNo;

END

GO
