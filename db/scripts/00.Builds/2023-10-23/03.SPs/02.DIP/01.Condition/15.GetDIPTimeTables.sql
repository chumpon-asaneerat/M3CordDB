/****** Object:  StoredProcedure [dbo].[GetDIPTimeTables]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetDIPTimeTables]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
	S7Bobbin,
	S8CoolingWaterSystemBath1,
	S8CoolingWaterSystemBath2,
	S8ChemicalWork,
	S8ChemicalFilter,
	S8Speed,
	S8StretchD,
	S8StretchH,
	S8StretchN,
	S8TempD,
	S8TempHN,
	S9GlideStatus,
	Remark
     FROM DIPTimeTable
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO
