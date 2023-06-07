/****** Object:  StoredProcedure [dbo].[GetG4ReceiveYarnInStock]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4ReceiveYarnInStock
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetG4ReceiveYarnInStock NULL, NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetG4ReceiveYarnInStock]
(
  @ItemYarn nvarchar(30) = NULL
, @ReceiveDate datetime = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, ReceiveDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @ReceiveDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, ReceiveDate)))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       --AND (FinishFlag IS NULL OR FinishFlag = 0)
END

GO
