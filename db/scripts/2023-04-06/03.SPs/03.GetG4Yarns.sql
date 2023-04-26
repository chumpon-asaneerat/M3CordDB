/****** Object:  StoredProcedure [dbo].[GetMAges]    Script Date: 11/27/2022 9:58:05 PM ******/
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
CREATE PROCEDURE [dbo].[GetG4Yarns]
(
  @traceNo nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4Yarn
	 WHERE UPPER(LTRIM(RTRIM(TraceNo))) = UPPER(LTRIM(RTRIM(COALESCE(@traceNo, TraceNo))))
END

GO
