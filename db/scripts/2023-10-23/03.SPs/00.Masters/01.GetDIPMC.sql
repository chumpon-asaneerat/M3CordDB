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
AS
BEGIN
    SELECT MCCode
         , ProcessName
         , StartCore
         , EndCore
      FROM DIPMC
     ORDER BY ProcessName, MCCode;
END

GO
