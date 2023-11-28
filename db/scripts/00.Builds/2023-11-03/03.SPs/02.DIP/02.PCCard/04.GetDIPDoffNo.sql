/****** Object:  StoredProcedure [dbo].[GetDIPDoffNo]    Script Date: 11/6/2023 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPDoffNo
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPDoffNo NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPDoffNo]
(
  @MCCode nvarchar(10)
, @CreateDate datetime
)
AS
DECLARE @lastDoff int
BEGIN
    SELECT @lastDoff = MAX(DoffNo)
      FROM DIPPCCardView
     WHERE MCCode = @MCCode
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @CreateDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)))

    IF (@lastDoff IS NULL OR @lastDoff = 0)
    BEGIN
        SET @lastDoff = 0
    END

    SELECT @lastDoff AS LastDoffNo
END

GO
