USE [M3Cord]
GO
/****** Object:  StoredProcedure [dbo].[GetDIPMCs]    Script Date: 10/24/2023 16:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPMCs
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPMCs NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPMCs]
(
  @ProcessName nvarchar(30) = NULL
, @MCCode nvarchar(30) = NULL  
)
AS
BEGIN
    SELECT MCCode
         , ProcessName
         , StartCore
         , EndCore
      FROM DIPMC
     WHERE UPPER(LOWER(ProcessName)) = UPPER(LOWER(COALESCE(@ProcessName, ProcessName)))
       AND UPPER(LOWER(MCCode)) = UPPER(LOWER(COALESCE(@MCCode, MCCode)))
     ORDER BY ProcessName, MCCode;
END

GO
