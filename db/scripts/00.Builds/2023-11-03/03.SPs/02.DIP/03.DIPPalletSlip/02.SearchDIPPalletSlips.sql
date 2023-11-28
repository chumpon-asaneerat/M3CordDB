/****** Object:  StoredProcedure [dbo].[SearchDIPPalletSlips]    Script Date: 11/7/2023 3:51:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchPalletSettings
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchDIPPalletSlips NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchDIPPalletSlips]
(
  @DIPLotNo nvarchar(30) = NULL
, @beginDate datetime = NULL
, @endDate datetime = NULL
, @ProductCode nvarchar(30) = NULL
, @PalletStatus int = NULL
)
AS
BEGIN
	SELECT *
	  FROM DIPPalletSlipView
	 WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
       AND UPPER(LTRIM(RTRIM(DIPLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@DIPLotNo, DIPLotNo))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)) >= COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @beginDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)) <= COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @endDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)))
	   AND PalletStatus = COALESCE(@PalletStatus, PalletStatus)
     ORDER BY CreateDate, DIPLotNo
END

GO
