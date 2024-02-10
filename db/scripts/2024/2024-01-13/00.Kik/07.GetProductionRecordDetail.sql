/****** Object:  StoredProcedure [dbo].[GetProductionRecordDetail]    Script Date: 14/1/2567 2:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetProductionRecordDetail]
(
  @ProductCode nvarchar(30) = NULL
  ,@LotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
        LotNo ,
		DoffingDate ,
		DoffingNo ,
		StretchD ,
		StretchH ,
		StretchN ,
		TempD ,
		TempHN ,
		Speed ,
		Treat ,
		DoffingLength ,
		[Weight] ,
		Spindle ,
		ProductionGood ,
		ProductionTotal ,
		ProductionCut ,
		PositionCordCutCreel ,
		PositionCordCutCS ,
		PositionCordCutWinder ,
		PositionCordCutWasteYarn ,
		CheckTimeStart ,
		CheckTimeFinish ,
		CheckTimeRecord ,
		Opertor ,
		Leader 
     FROM ProductionRecordDetail
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
	 And LotNo = COALESCE(@LotNo, LotNo)
     ORDER BY ProductCode ,DoffingNo;

END;

GO
