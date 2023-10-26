/****** Object:  StoredProcedure [dbo].[FinishDIP]    Script Date: 10/24/2023 16:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	FinishDIP
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC FinishDIP NULL
-- =============================================
CREATE PROCEDURE [dbo].[FinishDIP]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    UPDATE DIPPCCard
       SET FinishTime = GETDATE()
         , FinishFlag = 1
     WHERE DIPPCId = @DIPPCId
END

GO
