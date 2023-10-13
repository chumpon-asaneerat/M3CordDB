/****** Object:  StoredProcedure [dbo].[GetCurrentTwist1Op]    Script Date: 10/13/2023 14:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSummaries
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCurrentTwist1Op NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetCurrentTwist1Op]
(
  @PCTwist1Id int
)
AS
BEGIN
    SELECT TOP 1 
          PCTwist1OpId
        , PCTwist1Id
        , ProductionDate
        , TestFlag
        , DoffNo
        , UnitWeight
        , OutputCH
        , ProductWeight
        , WasteWeight
        , StartTime
        , EndTime
        , [Remark] 
     FROM PCTwist1Operation
    WHERE PCTwist1Id = @PCTwist1Id
    ORDER BY PCTwist1OpId DESC

END

GO
