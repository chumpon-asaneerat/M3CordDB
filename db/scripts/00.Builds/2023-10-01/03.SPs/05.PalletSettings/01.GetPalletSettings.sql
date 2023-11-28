/****** Object:  StoredProcedure [dbo].[GetPalletSettings]    Script Date: 11/27/2022 9:58:05 PM ******/
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
CREATE PROCEDURE [dbo].[GetPalletSettings]
(
  @unused bit = NULL
)
AS
BEGIN
	SELECT *
	  FROM PalletSettingView
     ORDER BY CreateDate, ProductLotNo
END

GO
