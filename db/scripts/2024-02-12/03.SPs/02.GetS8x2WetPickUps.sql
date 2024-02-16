/****** Object:  StoredProcedure [dbo].[GetS8WetPickUp]    Script Date: 1/20/2024 12:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE GetS8x2WetPickUp
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT A.DIPPCId
         , A.ProductCode
         , A.LotNo
         , A.DoffingDate
         , A.DoffingNo
         , A.FirstDip1
         , A.SolutionName
         , A.FirstDip2
         , A.SolutionLotNo
         , A.PullMotorActSpeed1
         , A.PullMotorActSpeed2
         , A.PullMotorActSpeed3
         , A.PullMotorActSpeed4
         , A.PullMotorActSpeed5
         , A.PullMotorActSpeed6
         , A.PullMotorSpeedSetPoint1
         , A.PullMotorSpeedSetPoint2
         , A.PullMotorSpeedSetPoint3
         , A.PullMotorSpeedSetPoint4
         , A.PullMotorSpeedSetPoint5
         , A.PullMotorSpeedSetPoint6
         , A.PullMotorActCurrent1
         , A.PullMotorActCurrent2
         , A.PullMotorActCurrent3
         , A.PullMotorActCurrent4
         , A.PullMotorActCurrent5
         , A.PullMotorActCurrent6
         , A.PullMotorPctCurrent1
         , A.PullMotorPctCurrent2
         , A.PullMotorPctCurrent3
         , A.PullMotorPctCurrent4
         , A.PullMotorPctCurrent5
         , A.PullMotorPctCurrent6
         , A.OvenCirculatingFanActSpeed1
         , A.OvenCirculatingFanActSpeed2
         , A.OvenExhaustFanActSpeed1
         , A.OvenExhaustFanActSpeed2
         , A.OvenExhaustFanFrontActSpeed
         , A.OvenExhaustFanBackActSpeed
         , A.OvenCirculatingFanSpeedSetpoint1
         , A.OvenCirculatingFanSpeedSetpoint2
         , A.OvenExhaustFanSpeedSetpoint1
         , A.OvenExhaustFanSpeedSetpoint2
         , A.OvenExhaustFanFrontSpeedSetpoint
         , A.OvenExhaustFanBackSpeedSetpoint
         , A.OvenCirculatingFanActCurrent1
         , A.OvenCirculatingFanActCurrent2
         , A.OvenExhaustFanActCurrent1
         , A.OvenExhaustFanActCurrent2
         , A.OvenExhaustFanFrontActCurrent
         , A.OvenExhaustFanBackActCurrent
         , A.OvenCirculatingFanPctCurrent1
         , A.OvenCirculatingFanPctCurrent2
         , A.OvenExhaustFanPctCurrent1
         , A.OvenExhaustFanPctCurrent2
         , A.OvenExhaustFanFrontPctCurrent
         , A.OvenExhaustFanBackPctCurrent
         , A.MotorActStretch1x2
         , A.MotorActStretch3x4
         , A.MotorActStretch4x5
         , A.MotorActStretch1x6
         , A.MotorSetPoint1x2
         , A.MotorSetPoint3x4
         , A.MotorSetPoint4x5
         , A.MotorSetPoint1x6
         , A.MotorActTensionTotal1x2
         , A.MotorActTensionTotal3x4
         , A.MotorActTensionTotal4x5
         , A.MotorActTensionTotal1x6
         , A.MotorSingleTension1x2
         , A.MotorSingleTension3x4
         , A.MotorSingleTension4x5
         , A.MotorSingleTension1x6
         , A.Remark
      FROM S8x2WetPickup A
     WHERE A.DIPPCId = COALESCE(@DIPPCId, A.DIPPCId)
	   AND A.LotNo IS NOT NULL
     ORDER BY A.DoffingDate;

END;

GO
