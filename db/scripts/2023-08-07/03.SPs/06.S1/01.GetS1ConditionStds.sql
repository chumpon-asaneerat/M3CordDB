/****** Object:  StoredProcedure [dbo].[GetS1ConditionStds]    Script Date: 11/27/2022 10:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS1ConditionStds
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
CREATE PROCEDURE GetS1ConditionStds
(
  @CustomerName nvarchar(100) = NULL
, @ItemCode nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM S1ConditionStd
     WHERE UPPER(LTRIM(RTRIM(CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, CustomerName))))
       AND UPPER(LTRIM(RTRIM(ItemCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemCode, ItemCode))))
END

GO
