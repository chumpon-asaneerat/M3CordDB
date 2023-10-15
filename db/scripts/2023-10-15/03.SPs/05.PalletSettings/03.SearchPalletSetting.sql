/****** Object:  StoredProcedure [dbo].[SearchPalletSetting]    Script Date: 10/15/2023 12:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchPalletSetting
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchPalletSetting NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchPalletSetting]
(
  @PalletCode nvarchar(30)
)
AS
BEGIN
    SELECT *
     FROM PalletSetting
     WHERE UPPER(LTRIM(RTRIM(PalletCode))) = UPPER(LTRIM(RTRIM(@PalletCode)))

END

GO
