/****** Object:  StoredProcedure [dbo].[GetS8BeforeStdBRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8BeforeStdBRow]
(
  @DIPPCId int
)
AS
BEGIN
    SELECT  ProductCode
           ,DIPPCId
           ,RowType -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
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
     WHERE DIPPCId = @DIPPCId
       AND RowType = -1
     ORDER BY DIPPCId, LotNo, RowType;

END

GO
