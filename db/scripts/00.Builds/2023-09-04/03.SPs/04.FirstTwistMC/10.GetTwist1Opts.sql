/****** Object:  StoredProcedure [dbo].[GetPCTwist1s]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetPCTwist1s
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPCTwist1s NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetTwist1Opts]
(
  @PCTwist1Id int = NULL
)
AS
BEGIN
    SELECT *
      FROM PCTwist1Operation
     WHERE PCTwist1Id = @PCTwist1Id

END

GO
