/****** Object:  StoredProcedure [dbo].[UpdatePalletSettingStatus]    Script Date: 10/15/2023 12:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	UpdatePalletSettingStatus
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC UpdatePalletSettingStatus NULL
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePalletSettingStatus]
(
  @PalletId int
, @PalletStatus int
)
AS
BEGIN
    UPDATE PalletSetting
       SET PalletStatus = @PalletStatus
     WHERE PalletId = @PalletId
END

GO
