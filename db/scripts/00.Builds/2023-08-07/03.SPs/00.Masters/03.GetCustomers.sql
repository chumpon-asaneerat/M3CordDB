/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 11/27/2022 10:15:25 PM ******/
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
CREATE PROCEDURE GetCustomers
(
  @unused nvarchar(100) = NULL
)
AS
BEGIN
	SELECT *
	  FROM Customer
END

GO
