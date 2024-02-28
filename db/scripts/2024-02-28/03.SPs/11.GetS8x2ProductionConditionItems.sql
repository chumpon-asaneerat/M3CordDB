/****** Object:  StoredProcedure [dbo].[GetS8x2ProductionConditionItems]    Script Date: 2/29/2024 6:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetS8x2ProductionConditionItems]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , RowType
         , ProductCode 
         , LotNo 
		 , DoffingDate 
		 , DoffingNo 

         , StretchDSC 
		 , StretchD 
		 , StretchDErr 
		 , StretchDValue 

		 , StretchHSC 
		 , StretchH 
		 , StretchHErr 
		 , StretchHValue 

		 , StretchNSC 
		 , StretchN 
		 , StretchNErr 
		 , StretchNValue 

		 , TempDSC 
		 , TempD 
		 , TempDErr 
		 , TempDValue 

		 , TempHNSC 
		 , TempHN 
		 , TempHNErr 
		 , TempHNValue 

		 , SpeedSC 
		 , Speed 
		 , SpeedErr 
		 , SpeedValue 

		 , TreatSC 
		 , Treat 
		 , TreatValue 

		 , DoffingLengthSC 
		 , DoffingLength 
		 , DoffingLengthValue 

		 , WeightSC 
		 , [Weight] 
		 , WeightValue

		 , SpindleSC 
		 , Spindle 
		 , SpindleValue 
		 
		 , ProductionGoodSC
		 , ProductionGood
         , ProductionGoodValue 

		 , ProductionTotalSC
		 , ProductionTotal 
		 , ProductionTotalValue

		 , ProductionCut 

		 , PositionCordCutCreel 
		 , PositionCordCutCreelKG 
		 , PositionCordCutCS 
		 , PositionCordCutCSKG 
		 , PositionCordCutWinder 
		 , PositionCordCutWinderKG 
		 , PositionCordCutWasteYarn 
		 , PositionCordCutWasteYarnKG 
		 
         , CheckTimeStart 
		 , CheckTimeFinish 
		 , CheckTimeRecord 

		 , Opertor 
		 , Leader 
      FROM S8x2ProductionConditionItem
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
	   AND LotNo IS NOT NULL
     ORDER BY DIPPCId, LotNo, DoffingNo;

END;

GO
