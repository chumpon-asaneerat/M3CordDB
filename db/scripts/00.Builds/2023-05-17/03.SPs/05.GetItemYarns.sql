/****** Object:  StoredProcedure [dbo].[GetItemYarns]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetItemYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetItemYarns NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetItemYarns]
(
  @unused nvarchar(30) = NULL
)
AS
BEGIN
	SELECT DISTINCT ItemYarn
	  FROM ItemCode
END

GO
