SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetProductionRecordStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
        StretchDSC ,
		StretchD ,
		StretchDErr ,
		StretchHSC ,
		StretchH ,
		StretchHErr ,
		StretchNSC ,
		StretchN ,
		StretchNErr ,
		TempDSC ,
		TempD ,
		TempDErr ,
		TempHNSC ,
		TempHN ,
		TempHNErr ,
		SpeedSC ,
		Speed ,
		SpeedErr ,
		TreatSC ,
		Treat ,
		DoffingLengthSC ,
		DoffingLength ,
		WeightSC ,
		[Weight] ,
		SpindleSC ,
		Spindle ,
		ProductionGoodSC ,
		ProductionGood ,
		ProductionTotalSC ,
		ProductionTotal 
     FROM ProductionRecordStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO
