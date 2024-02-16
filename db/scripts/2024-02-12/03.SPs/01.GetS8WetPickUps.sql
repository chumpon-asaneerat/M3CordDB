/****** Object:  StoredProcedure [dbo].[GetS8WetPickUp]    Script Date: 1/20/2024 12:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE GetS8WetPickUp
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
         , A.SpeedSet
         , A.SpeedActual
         , A.StretchD
         , A.StretchH
         , A.StretchN
         , A.TempD
         , A.TempHN
         , A.AMV1
         , A.AMV2
         , A.AMV3
         , A.AMV4
         , A.AMAmp1
         , A.AMAmp2
         , A.AMAmp3
         , A.AMAmp4
         , A.AMBearing1
         , A.AMBearing2
         , A.AMBearing3
         , A.AMBearing4
         , A.AMMotorNoise1
         , A.AMMotorNoise2
         , A.AMMotorNoise3
         , A.AMMotorNoise4
         , A.AMNoVibration1
         , A.AMNoVibration2
         , A.AMNoVibration3
         , A.AMNoVibration4
         , A.BurnerD
         , A.BurnerHN
         , A.GasLeakD
         , A.GasLeakHN
         , A.GasPresureD
         , A.GasPresureHN
         , A.AirPresureD
         , A.AirPresureHN
         , A.ACMotorExhaustFanD
         , A.ACMotorExhaustFanHN
         , A.ACMotorSupplyD
         , A.ACMotorSupplyHN
         , A.ExhaustFan1
         , A.ExhaustFan2
         , A.ExhaustFanSupply1
         , A.ExhaustFanSupply2
         , A.Remark
      FROM S8WetPickup A
     WHERE A.DIPPCId = COALESCE(@DIPPCId, A.DIPPCId)
	   AND A.LotNo IS NOT NULL
     ORDER BY A.DoffingDate;

END;

GO
