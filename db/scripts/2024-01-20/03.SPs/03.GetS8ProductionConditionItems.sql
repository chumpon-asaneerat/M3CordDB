/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditionItems]    Script Date: 1/20/2024 12:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8ProductionConditionItems]
(
  @ProductCode nvarchar(30) = NULL
, @LotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode 
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
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
	   AND LotNo = COALESCE(@LotNo, LotNo)
     ORDER BY ProductCode ,DoffingNo;

END;

GO
