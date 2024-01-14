/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditions]    Script Date: 1/12/2024 8:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetS8BeforeConditions]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT S8BeforeId
        ,DIPPCId
        ,ProductCode
        ,RowType -- -2 = STD (V)alue-- -1 = STD (B)ool, 0 = CONF, 1 = DATA
        ,LotNo
        ,SolutionNameBath1SC
        ,SolutionNameBath1
        ,SolutionNameBath1Value
        ,SolutionNameBath2SC
        ,SolutionNameBath2
        ,SolutionNameBath2Value
        ,TempJacketDrumBath1SC
        ,TempJacketDrumBath1Min
        ,TempJacketDrumBath1Max
        ,TempJacketDrumBath1
        ,TempJacketDrumBath2SC
        ,TempJacketDrumBath2Min
        ,TempJacketDrumBath2Max
        ,TempJacketDrumBath2
        ,TempChemicalBath1SC
        ,TempChemicalBath1Min
        ,TempChemicalBath1Max
        ,TempChemicalBath1
        ,TempChemicalBath2SC
        ,TempChemicalBath2Min
        ,TempChemicalBath2Max
        ,TempChemicalBath2
        ,StretchDSC
        ,StretchD
        ,StretchDErr
        ,StretchDValue
        ,StretchHSC
        ,StretchH
        ,StretchHErr
        ,StretchHValue
        ,StretchNSC
        ,StretchN
        ,StretchNErr
        ,StretchNValue
        ,TempDSC
        ,TempD
        ,TempDErr
        ,TempDValue
        ,TempHNSC
        ,TempHN
        ,TempHNErr
        ,TempHNValue
        ,SpeedSC
        ,Speed
        ,SpeedErr
        ,SpeedValue
        ,ExhaustFanDryerSC
        ,ExhaustFanDryer
        ,ExhaustFanDryerValue
        ,ExhaustFanHNSC
        ,ExhaustFanHN
        ,ExhaustFanHNValue
        ,CleanBath1SC
        ,CleanBath1
        ,CleanBath2SC
        ,CleanBath2
        ,CleanFrontSC
        ,CleanFront
        ,CamboxSC
        ,Cambox
        ,CheckBy
        ,CheckDate
        ,VerifyBy
        ,VerifyDate
    FROM S8BeforeCondition
   WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
   ORDER BY RowType;

END

GO
