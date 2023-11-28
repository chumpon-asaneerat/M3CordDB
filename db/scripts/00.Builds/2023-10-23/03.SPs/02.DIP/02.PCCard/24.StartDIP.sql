/****** Object:  StoredProcedure [dbo].[StartDIP]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	StartDIP
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC StartDIP NULL
-- =============================================
CREATE PROCEDURE [dbo].[StartDIP]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    UPDATE DIPPCCard
       SET StartTime = GETDATE()
     WHERE DIPPCId = @DIPPCId
END

GO
