/****** Object:  StoredProcedure [dbo].[SearchG4YarnStock]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchG4YarnStock
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchG4YarnStock NULL, NULL, NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchG4YarnStock]
(
  @ItemYarn nvarchar(30) = NULL
, @EntryDate datetime = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, EntryDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @EntryDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, EntryDate)))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
       AND (ReceiveDate IS NOT NULL)
END

GO
