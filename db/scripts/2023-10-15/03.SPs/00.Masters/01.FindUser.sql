/****** Object:  StoredProcedure [dbo].[FindUser]    Script Date: 10/15/2023 22:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	FindUser
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC FindUser 1
-- =============================================
CREATE PROCEDURE [dbo].[FindUser]
(
  @UserId int,
  @Active int = NULL
)
AS
BEGIN
	SELECT *
	  FROM UserInfoView
	 WHERE UserId = @UserId
       AND Active = COALESCE(@Active, Active)
END

GO
