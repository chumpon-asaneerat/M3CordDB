/****** Object:  StoredProcedure [dbo].[GetTwist1LoadRecordItems]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetTwist1LoadRecordItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetTwist1LoadRecordItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetTwist1LoadRecordItems]
(
  @Twist1LoadId int = NULL
)
AS
BEGIN
    SELECT Twist1LoadId
         , SPNo
         , DeckNo
         , PalletNo
         , TraceNo
         , YarnBarcode
      FROM Twist1LoadRecordItem
     WHERE Twist1LoadId = COALESCE(@Twist1LoadId, Twist1LoadId)
     ORDER BY Twist1LoadId, SPNo, DeckNo;
END

GO
