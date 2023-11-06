/****** Object:  StoredProcedure [dbo].[SearchDIPPCByLotNo]    Script Date: 11/7/2023 4:40:31 ******/
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
-- EXEC SearchDIPPCByLotNo NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchDIPPCByLotNo]
(
  @DIPLotNo nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM DIPPCCardView
	 WHERE UPPER(LTRIM(RTRIM(DIPLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@DIPLotNo, DIPLotNo))))
     ORDER BY CreateDate, DIPLotNo
END

GO
