/****** Object:  StoredProcedure [dbo].[GetItemCodes]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetItemCodes
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetItemCodes NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetItemCodes]
(
  @unused nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM ItemCode
END

GO
