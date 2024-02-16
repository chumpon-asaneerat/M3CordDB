/****** Object:  StoredProcedure [dbo].[SaveS8WetPickup]    Script Date: 1/20/2024 13:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8WetPickup] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @CustomerName nvarchar(30)
, @FirstDip1 nvarchar(50)
, @SolutionName nvarchar(50)
, @FirstDip2 nvarchar(50)
, @SolutionLotNo nvarchar(50)
, @SpeedSet decimal(18, 3) 
, @SpeedActual decimal(18, 3) 
, @StretchD decimal(18, 3) 
, @StretchH decimal(18, 3) 
, @StretchN decimal(18, 3) 
, @TempD decimal(18, 3) 
, @TempHN decimal(18, 3) 
, @AMV1 decimal(18, 3) 
, @AMV2 decimal(18, 3) 
, @AMV3 decimal(18, 3) 
, @AMV4 decimal(18, 3) 
, @AMAmp1 decimal(18, 3) 
, @AMAmp2 decimal(18, 3) 
, @AMAmp3 decimal(18, 3) 
, @AMAmp4 decimal(18, 3) 
, @AMBearing1 bit 
, @AMBearing2 bit 
, @AMBearing3 bit 
, @AMBearing4 bit 
, @AMMotorNoise1 bit 
, @AMMotorNoise2 bit 
, @AMMotorNoise3 bit 
, @AMMotorNoise4 bit 
, @AMNoVibration1 bit 
, @AMNoVibration2 bit 
, @AMNoVibration3 bit 
, @AMNoVibration4 bit 
, @BurnerD bit 
, @BurnerHN bit 
, @GasLeakD bit 
, @GasLeakHN bit 
, @GasPresureD decimal(18, 3) 
, @GasPresureHN decimal(18, 3) 
, @AirPresureD decimal(18, 3) 
, @AirPresureHN decimal(18, 3) 
, @ACMotorExhaustFanD bit 
, @ACMotorExhaustFanHN bit 
, @ACMotorSupplyD bit 
, @ACMotorSupplyHN bit 
, @ExhaustFan1 bit 
, @ExhaustFan2 bit 
, @ExhaustFanSupply1 bit 
, @ExhaustFanSupply2 bit 
, @Remark nvarchar(200)
, @Opertor nvarchar (100) 
, @Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8WetPickup 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
                      --AND DoffingNo = @DoffingNo
                  )
        BEGIN
            UPDATE S8WetPickup 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , CustomerName = @CustomerName
                 , FirstDip1 = @FirstDip1
                 , SolutionName = @SolutionName
                 , FirstDip2 = @FirstDip2
                 , SolutionLotNo = @SolutionLotNo
                 , SpeedSet = @SpeedSet
                 , SpeedActual = @SpeedActual
                 , StretchD = @StretchD
                 , StretchH = @StretchH
                 , StretchN = @StretchN
                 , TempD = @TempD
                 , TempHN = @TempHN
                 , AMV1 = @AMV1
                 , AMV2 = @AMV2
                 , AMV3 = @AMV3
                 , AMV4 = @AMV4
                 , AMAmp1 = @AMAmp1
                 , AMAmp2 = @AMAmp2
                 , AMAmp3 = @AMAmp3
                 , AMAmp4 = @AMAmp4
                 , AMBearing1 = @AMBearing1
                 , AMBearing2 = @AMBearing2
                 , AMBearing3 = @AMBearing3
                 , AMBearing4 = @AMBearing4
                 , AMMotorNoise1 = @AMMotorNoise1
                 , AMMotorNoise2 = @AMMotorNoise2
                 , AMMotorNoise3 = @AMMotorNoise3
                 , AMMotorNoise4 = @AMMotorNoise4
                 , AMNoVibration1 = @AMNoVibration1
                 , AMNoVibration2 = @AMNoVibration2
                 , AMNoVibration3 = @AMNoVibration3
                 , AMNoVibration4 = @AMNoVibration4
                 , BurnerD = @BurnerD
                 , BurnerHN = @BurnerHN
                 , GasLeakD = @GasLeakD
                 , GasLeakHN = @GasLeakHN
                 , GasPresureD = @GasPresureD
                 , GasPresureHN = @GasPresureHN
                 , AirPresureD = @AirPresureD
                 , AirPresureHN = @AirPresureHN
                 , ACMotorExhaustFanD = @ACMotorExhaustFanD
                 , ACMotorExhaustFanHN = @ACMotorExhaustFanHN
                 , ACMotorSupplyD = @ACMotorSupplyD
                 , ACMotorSupplyHN = @ACMotorSupplyHN
                 , ExhaustFan1 = @ExhaustFan1
                 , ExhaustFan2 = @ExhaustFan2
                 , ExhaustFanSupply1 = @ExhaustFanSupply1
                 , ExhaustFanSupply2 = @ExhaustFanSupply2
                 , Remark = @Remark
				 , Opertor = @Opertor 
				 , Leader = @Leader   
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
        END
        ELSE
        BEGIN
			INSERT INTO S8WetPickup
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , CustomerName
                , FirstDip1
                , SolutionName
                , FirstDip2
                , SolutionLotNo
                , SpeedSet
                , SpeedActual
                , StretchD
                , StretchH
                , StretchN
                , TempD
                , TempHN
                , AMV1
                , AMV2
                , AMV3
                , AMV4
                , AMAmp1
                , AMAmp2
                , AMAmp3
                , AMAmp4
                , AMBearing1
                , AMBearing2
                , AMBearing3
                , AMBearing4
                , AMMotorNoise1
                , AMMotorNoise2
                , AMMotorNoise3
                , AMMotorNoise4
                , AMNoVibration1
                , AMNoVibration2
                , AMNoVibration3
                , AMNoVibration4
                , BurnerD
                , BurnerHN
                , GasLeakD
                , GasLeakHN
                , GasPresureD
                , GasPresureHN
                , AirPresureD
                , AirPresureHN
                , ACMotorExhaustFanD
                , ACMotorExhaustFanHN
                , ACMotorSupplyD
                , ACMotorSupplyHN
                , ExhaustFan1
                , ExhaustFan2
                , ExhaustFanSupply1
                , ExhaustFanSupply2
                , Remark
				, Opertor 
		        , Leader 
			)
			VALUES
			(
                  @ProductCode
                , @LotNo
                , @DoffingDate
                , @CustomerName
                , @FirstDip1
                , @SolutionName
                , @FirstDip2
                , @SolutionLotNo
                , @SpeedSet
                , @SpeedActual
                , @StretchD
                , @StretchH
                , @StretchN
                , @TempD
                , @TempHN
                , @AMV1
                , @AMV2
                , @AMV3
                , @AMV4
                , @AMAmp1
                , @AMAmp2
                , @AMAmp3
                , @AMAmp4
                , @AMBearing1
                , @AMBearing2
                , @AMBearing3
                , @AMBearing4
                , @AMMotorNoise1
                , @AMMotorNoise2
                , @AMMotorNoise3
                , @AMMotorNoise4
                , @AMNoVibration1
                , @AMNoVibration2
                , @AMNoVibration3
                , @AMNoVibration4
                , @BurnerD
                , @BurnerHN
                , @GasLeakD
                , @GasLeakHN
                , @GasPresureD
                , @GasPresureHN
                , @AirPresureD
                , @AirPresureHN
                , @ACMotorExhaustFanD
                , @ACMotorExhaustFanHN
                , @ACMotorSupplyD
                , @ACMotorSupplyHN
                , @ExhaustFan1
                , @ExhaustFan2
                , @ExhaustFanSupply1
                , @ExhaustFanSupply2
                , @Remark
				, @Opertor 
		        , @Leader 
			);
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO
