/****** Object:  StoredProcedure [dbo].[EndDIP]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	EndDIP
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC EndDIP NULL
-- =============================================
CREATE PROCEDURE [dbo].[EndDIP]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    UPDATE DIPPCCard
       SET EndTime = GETDATE()
     WHERE DIPPCId = @DIPPCId
END

GO
