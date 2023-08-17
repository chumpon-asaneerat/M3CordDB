/****** Object:  StoredProcedure [dbo].[GetProductItemCodes]    Script Date: 8/17/2023 9:03:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetProductItemCodes
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
CREATE PROCEDURE [dbo].[GetProductItemCodes]
(
  @unused nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM ProductItemCode
END


GO
