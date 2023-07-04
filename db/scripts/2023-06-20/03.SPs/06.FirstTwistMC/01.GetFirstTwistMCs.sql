/****** Object:  StoredProcedure [dbo].[GetFirstTwistMCs]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetFirstTwistMCs
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetFirstTwistMCs NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetFirstTwistMCs]
AS
BEGIN
    SELECT MCCode
         , ProcessName
         , DeckPerCore
         , StartCore
         , EndCore
      FROM FirstTwistMC
     ORDER BY ProcessName, MCCode;
END

GO
