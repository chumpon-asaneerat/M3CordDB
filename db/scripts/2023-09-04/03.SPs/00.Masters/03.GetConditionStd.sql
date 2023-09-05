/****** Object:  StoredProcedure [dbo].[GetConditionStds]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetConditionStds
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetConditionStds NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetConditionStds]
(
  @ProcessName nvarchar(30)
, @ProductCode nvarchar(30)
, @ParamName nvarchar(50) = NULL
)
AS
BEGIN
    SELECT ProcessName
         , ProductCode
         , ParamName
         , ParamType
         , SC
         , StdValueS
         , StdValueD
         , StdValueE
      FROM ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProcessName))) = UPPER(LTRIM(RTRIM(@ProcessName)))
       AND UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(@ProductCode)))
       AND UPPER(LTRIM(RTRIM(ParamName))) = UPPER(LTRIM(RTRIM(COALESCE(@ParamName, ParamName))))
     ORDER BY ProcessName, ProductCode, ParamName

END

GO
