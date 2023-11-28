/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 11/19/2023 15:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCustomers
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
ALTER PROCEDURE [dbo].[GetCustomers]
(
  @unused nvarchar(100) = NULL
)
AS
BEGIN
	SELECT *
	  FROM Customer
     ORDER BY CustomerName
END

