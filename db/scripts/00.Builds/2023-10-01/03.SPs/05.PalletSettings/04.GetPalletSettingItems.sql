/****** Object:  StoredProcedure [dbo].[GetPalletSettingItems]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetPalletSettingItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPalletSettingItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetPalletSettingItems]
(
  @PalletId int = NULL
)
AS
BEGIN
	SELECT PalletId
         , DoffNo
         , CH
         , SPNoStart
         , SPNoEnd
	  FROM PalletSettingItem
     WHERE PalletId = COALESCE(@PalletId, PalletId)
     ORDER BY PalletId, DoffNo
END

GO
