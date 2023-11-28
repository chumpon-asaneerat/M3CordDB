/****** Object:  StoredProcedure [dbo].[GetPalletSettings]    Script Date: 10/15/2023 22:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetPalletSettings
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPalletSettings NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetPalletSettings]
(
  @PalletStatus int = NULL
)
AS
BEGIN
	SELECT *
	  FROM PalletSettingView
	 WHERE PalletStatus = COALESCE(@PalletStatus, PalletStatus)
     ORDER BY CreateDate, ProductLotNo
END

GO
