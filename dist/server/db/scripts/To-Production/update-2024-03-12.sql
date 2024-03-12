/*********** Script Update Date: 2024-03-12  ***********/
/****** Object:  StoredProcedure [dbo].[SearchG4YarnStockByTraceNo]    Script Date: 3/12/2024 16:52:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchG4YarnStockByTraceNo
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchG4YarnStockByTraceNo NULL, NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchG4YarnStockByTraceNo]
(
  @TraceNo nvarchar(30) = NULL
, @ItemYarn nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(TraceNo))) = UPPER(LTRIM(RTRIM(COALESCE(@TraceNo, TraceNo))))
       AND UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
       AND (ReceiveDate IS NOT NULL)
END

GO


