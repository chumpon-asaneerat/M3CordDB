/****** Object:  StoredProcedure [dbo].[GetCordSamplingDetails]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCordSamplingDetails
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetCordSamplingDetails]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT TwistYarn,
			CordDipping,
			Rawmaterial,
			SamplingDate,
			CustomerName,
			ProductCode,
			CordStructure,
			LotNo,
			ProductionSituationTwisting,
			ProductionSituationHeatSet,
			ProductionSituationDipCord,
			ProductionSituationJointing,
			StandardOfTwisting,
			S1,
			S2,
			S4,
			S8,
			S19,
			Bobbin,
			Cheese,
			TaperBB,
			ContainerOthers,
			SpindleNo,
			Quantity,
			Polyester,
			Nylon66,
			MaterialOthers,
			YarnType,
			Process,
			Product,
			Special,
			Trial,
			[Shift],
			ShiftName,
			Remark,
			Direct,
			Relax,
			Relax_k,
			Relax_n,
			Necessary,
			NotNecessary,
			SpecialMentionJointing,
			SpecialMentionNoJointing,
			TensileR1,
			TensileL1,
			TensileR2,
			TensileL2,
			TensileR3,
			TensileL3,
			TensileR4,
			TensileL4,
			TensileR5,
			TensileL5,
			TensileRSum,
			TensileLSum,
			FirstTwistingR1,
			FirstTwistingL1,
			FirstTwistingR2,
			FirstTwistingL2,
			FirstTwistingR3,
			FirstTwistingL3,
			FirstTwistingR4,
			FirstTwistingL4,
			FirstTwistingR5,
			FirstTwistingL5,
			FirstTwistingRSum,
			FirstTwistingLSum,
			SecondTwistingR1,
			SecondTwistingL1,
			SecondTwistingR2,
			SecondTwistingL2,
			SecondTwistingR3,
			SecondTwistingL3,
			SecondTwistingR4,
			SecondTwistingL4,
			SecondTwistingR5,
			SecondTwistingL5,
			SecondTwistingRSum,
			SecondTwistingLSum,
			Remark1,
			Remark2,
			Remark3,
			Remark4,
			Remark5,
			RemarkSum
     FROM CordSamplingDetails
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO
