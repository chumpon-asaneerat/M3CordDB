/****** Object:  StoredProcedure [dbo].[GetCordSamplingDetails]    Script Date: 1/26/2024 3:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetQACordSamplingDetails
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetQACordSamplingDetails NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetQACordSamplingDetails]
(
  @Date datetime = NULL,
  @LotNo nvarchar(50) = NULL
)
AS
BEGIN
    SELECT SamplingId,
			SamplingDate,
	        TwistYarn,
	        TwistYarn,
			CordDipping,
			Rawmaterial,
			CustomerName,
			ProductCode,
			CordStructure,
			LotNo,
			ProductionSituationTwisting,
			ProductionSituationHeatSet,
			ProductionSituationDipCord,
			ProductionSituationJointing,
			StandardOfTwisting,
			MCCode,
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
			Sender,
			SenderTime,
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
			RemarkSum,
			RemarkOther,
			Tester,
			TesterTime,
			TestResult
     FROM CordSamplingDetails
     WHERE DATEADD(dd, 0, DATEDIFF(dd, 0, SamplingDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @Date)), DATEADD(dd, 0, DATEDIFF(dd, 0, SamplingDate)))
	   AND UPPER(LTRIM(RTRIM(LotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@LotNo, LotNo))))
     ORDER BY SamplingDate, LotNo;

END

GO

