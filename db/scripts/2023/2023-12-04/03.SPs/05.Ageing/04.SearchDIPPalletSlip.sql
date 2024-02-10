/****** Object:  StoredProcedure [dbo].[SearchDIPPalletSlip]    Script Date: 12/5/2023 19:28:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchDIPPalletSlip
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchDIPPalletSlip NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchDIPPalletSlip]
(
  @PalletCode nvarchar(30)
, @PalletStatus int = NULL
)
AS
BEGIN
    SELECT *
     FROM DIPPalletSlipView
     WHERE UPPER(LTRIM(RTRIM(PalletCode))) = UPPER(LTRIM(RTRIM(COALESCE(@PalletCode, PalletCode))))
	   AND PalletStatus = COALESCE(@PalletStatus, PalletStatus)
     ORDER BY CreateDate, DIPLotNo
END

GO
