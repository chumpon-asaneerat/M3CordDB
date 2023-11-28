/****** Object:  StoredProcedure [dbo].[GetProductItemCodes]    Script Date: 11/27/2022 10:15:25 PM ******/
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
CREATE PROCEDURE GetProductItemCodes
(
  @unused nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM ProductItemCode
END

GO
