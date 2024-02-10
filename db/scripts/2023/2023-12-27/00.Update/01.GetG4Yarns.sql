/****** Object:  StoredProcedure [dbo].[GetG4Yarns]    Script Date: 12/27/2023 21:02:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4Yarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetG4Yarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetG4Yarns]
(
  @traceNo nvarchar(30) = NULL
, @itemYarn nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(TraceNo))) = UPPER(LTRIM(RTRIM(COALESCE(@traceNo, TraceNo))))
       AND UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
       AND (ReceiveDate IS NULL) -- Only no receive date.
END

GO
