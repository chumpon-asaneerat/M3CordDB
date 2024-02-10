/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditionItemStdBRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8ProductionConditionItemStdBRow]
(
  @DIPPCId int
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

		 , PositionCordCutCS 
		 , PositionCordCutWinder 
		 , PositionCordCutWasteYarn 
		 
         , CheckTimeStart 
		 , CheckTimeFinish 
		 , CheckTimeRecord 

		 , Opertor 
		 , Leader 
      FROM S8ProductionConditionItem
     WHERE DIPPCId = @DIPPCId
       AND RowType = -1
       AND LotNo IS NOT NULL
     ORDER BY DIPPCId, RowType, DoffingDate, DoffingNo;

END

GO
