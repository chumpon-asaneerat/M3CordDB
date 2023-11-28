/****** Object:  StoredProcedure [dbo].[SearchPCTwist1ByLotNo]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchPCTwist1
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchPCTwist1ByLotNo NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchPCTwist1ByLotNo]
(
  @ProductLotNo nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM PCTwist1View
	 WHERE UPPER(LTRIM(RTRIM(ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, ProductLotNo))))
     ORDER BY PCDate, ProductLotNo
END

GO
