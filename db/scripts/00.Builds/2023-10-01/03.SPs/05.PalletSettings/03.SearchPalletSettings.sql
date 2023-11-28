/****** Object:  StoredProcedure [dbo].[SearchPalletSettings]    Script Date: 11/27/2022 9:58:05 PM ******/
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
-- EXEC SearchPalletSettings NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchPalletSettings]
(
  @ProductLotNo nvarchar(30) = NULL
, @beginDate datetime = NULL
, @endDate datetime = NULL
, @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM PalletSettingView
	 WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
       AND UPPER(LTRIM(RTRIM(ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, ProductLotNo))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)) >= COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @beginDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)) <= COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @endDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)))
     ORDER BY CreateDate, ProductLotNo
END

GO
