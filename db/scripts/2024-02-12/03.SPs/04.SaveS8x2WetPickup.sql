/****** Object:  StoredProcedure [dbo].[SaveS8x2WetPickup]    Script Date: 1/20/2024 13:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8x2WetPickup] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @CustomerName nvarchar(30)
, @FirstDip1 nvarchar(50)
, @SolutionName nvarchar(50)
, @FirstDip2 nvarchar(50)
, @SolutionLotNo nvarchar(50)
, @PullMotorActSpeed1 decimal(18, 3) 
, @PullMotorActSpeed2 decimal(18, 3) 
, @PullMotorActSpeed3 decimal(18, 3) 
, @PullMotorActSpeed4 decimal(18, 3) 
, @PullMotorActSpeed5 decimal(18, 3) 
, @PullMotorActSpeed6 decimal(18, 3) 
, @PullMotorSpeedSetPoint1 decimal(18, 3) 
, @PullMotorSpeedSetPoint2 decimal(18, 3) 
, @PullMotorSpeedSetPoint3 decimal(18, 3) 
, @PullMotorSpeedSetPoint4 decimal(18, 3) 
, @PullMotorSpeedSetPoint5 decimal(18, 3) 
, @PullMotorSpeedSetPoint6 decimal(18, 3) 
, @PullMotorActCurrent1 decimal(18, 3) 
, @PullMotorActCurrent2 decimal(18, 3) 
, @PullMotorActCurrent3 decimal(18, 3) 
, @PullMotorActCurrent4 decimal(18, 3) 
, @PullMotorActCurrent5 decimal(18, 3) 
, @PullMotorActCurrent6 decimal(18, 3) 
, @PullMotorPctCurrent1 decimal(18, 3) 
, @PullMotorPctCurrent2 decimal(18, 3) 
, @PullMotorPctCurrent3 decimal(18, 3) 
, @PullMotorPctCurrent4 decimal(18, 3) 
, @PullMotorPctCurrent5 decimal(18, 3) 
, @PullMotorPctCurrent6 decimal(18, 3) 
, @OvenCirculatingFanActSpeed1 decimal(18, 3) 
, @OvenCirculatingFanActSpeed2 decimal(18, 3) 
, @OvenExhaustFanActSpeed1 decimal(18, 3) 
, @OvenExhaustFanActSpeed2 decimal(18, 3) 
, @OvenExhaustFanFrontActSpeed decimal(18, 3) 
, @OvenExhaustFanBackActSpeed decimal(18, 3) 
, @OvenCirculatingFanSpeedSetpoint1 decimal(18, 3) 
, @OvenCirculatingFanSpeedSetpoint2 decimal(18, 3) 
, @OvenExhaustFanSpeedSetpoint1 decimal(18, 3) 
, @OvenExhaustFanSpeedSetpoint2 decimal(18, 3) 
, @OvenExhaustFanFrontSpeedSetpoint decimal(18, 3) 
, @OvenExhaustFanBackSpeedSetpoint decimal(18, 3) 
, @OvenCirculatingFanActCurrent1 decimal(18, 3) 
, @OvenCirculatingFanActCurrent2 decimal(18, 3) 
, @OvenExhaustFanActCurrent1 decimal(18, 3) 
, @OvenExhaustFanActCurrent2 decimal(18, 3) 
, @OvenExhaustFanFrontActCurrent decimal(18, 3) 
, @OvenExhaustFanBackActCurrent decimal(18, 3) 
, @OvenCirculatingFanPctCurrent1 decimal(18, 3) 
, @OvenCirculatingFanPctCurrent2 decimal(18, 3) 
, @OvenExhaustFanPctCurrent1 decimal(18, 3) 
, @OvenExhaustFanPctCurrent2 decimal(18, 3) 
, @OvenExhaustFanFrontPctCurrent decimal(18, 3) 
, @OvenExhaustFanBackPctCurrent decimal(18, 3) 
, @MotorActStretch1x2 decimal(18, 3) 
, @MotorActStretch3x4 decimal(18, 3) 
, @MotorActStretch4x5 decimal(18, 3) 
, @MotorActStretch1x6 decimal(18, 3) 
, @MotorSetPoint1x2 decimal(18, 3) 
, @MotorSetPoint3x4 decimal(18, 3) 
, @MotorSetPoint4x5 decimal(18, 3) 
, @MotorSetPoint1x6 decimal(18, 3) 
, @MotorActTensionTotal1x2 decimal(18, 3) 
, @MotorActTensionTotal3x4 decimal(18, 3) 
, @MotorActTensionTotal4x5 decimal(18, 3) 
, @MotorActTensionTotal1x6 decimal(18, 3) 
, @MotorSingleTension1x2 decimal(18, 3) 
, @MotorSingleTension3x4 decimal(18, 3) 
, @MotorSingleTension4x5 decimal(18, 3) 
, @MotorSingleTension1x6 decimal(18, 3) 
, @Remark nvarchar(200)
, @Opertor nvarchar (100) 
, @Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2WetPickup 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
                      --AND DoffingNo = @DoffingNo
                  )
        BEGIN
            UPDATE S8x2WetPickup 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , CustomerName = @CustomerName
                 , FirstDip1 = @FirstDip1
                 , SolutionName = @SolutionName
                 , FirstDip2 = @FirstDip2
                 , SolutionLotNo = @SolutionLotNo
                 , PullMotorActSpeed1 = @PullMotorActSpeed1
                 , PullMotorActSpeed2 = @PullMotorActSpeed2
                 , PullMotorActSpeed3 = @PullMotorActSpeed3
                 , PullMotorActSpeed4 = @PullMotorActSpeed4
                 , PullMotorActSpeed5 = @PullMotorActSpeed5
                 , PullMotorActSpeed6 = @PullMotorActSpeed6
                 , PullMotorSpeedSetPoint1 = @PullMotorSpeedSetPoint1
                 , PullMotorSpeedSetPoint2 = @PullMotorSpeedSetPoint2
                 , PullMotorSpeedSetPoint3 = @PullMotorSpeedSetPoint3
                 , PullMotorSpeedSetPoint4 = @PullMotorSpeedSetPoint4
                 , PullMotorSpeedSetPoint5 = @PullMotorSpeedSetPoint5
                 , PullMotorSpeedSetPoint6 = @PullMotorSpeedSetPoint6
                 , PullMotorActCurrent1 = @PullMotorActCurrent1
                 , PullMotorActCurrent2 = @PullMotorActCurrent2
                 , PullMotorActCurrent3 = @PullMotorActCurrent3
                 , PullMotorActCurrent4 = @PullMotorActCurrent4
                 , PullMotorActCurrent5 = @PullMotorActCurrent5
                 , PullMotorActCurrent6 = @PullMotorActCurrent6
                 , PullMotorPctCurrent1 = @PullMotorPctCurrent1
                 , PullMotorPctCurrent2 = @PullMotorPctCurrent2
                 , PullMotorPctCurrent3 = @PullMotorPctCurrent3
                 , PullMotorPctCurrent4 = @PullMotorPctCurrent4
                 , PullMotorPctCurrent5 = @PullMotorPctCurrent5
                 , PullMotorPctCurrent6 = @PullMotorPctCurrent6
                 , OvenCirculatingFanActSpeed1 = @OvenCirculatingFanActSpeed1
                 , OvenCirculatingFanActSpeed2 = @OvenCirculatingFanActSpeed2
                 , OvenExhaustFanActSpeed1 = @OvenExhaustFanActSpeed1
                 , OvenExhaustFanActSpeed2 = @OvenExhaustFanActSpeed2
                 , OvenExhaustFanFrontActSpeed = @OvenExhaustFanFrontActSpeed
                 , OvenExhaustFanBackActSpeed = @OvenExhaustFanBackActSpeed
                 , OvenCirculatingFanSpeedSetpoint1 = @OvenCirculatingFanSpeedSetpoint1
                 , OvenCirculatingFanSpeedSetpoint2 = @OvenCirculatingFanSpeedSetpoint2
                 , OvenExhaustFanSpeedSetpoint1 = @OvenExhaustFanSpeedSetpoint1
                 , OvenExhaustFanSpeedSetpoint2 = @OvenExhaustFanSpeedSetpoint2
                 , OvenExhaustFanFrontSpeedSetpoint = @OvenExhaustFanFrontSpeedSetpoint
                 , OvenExhaustFanBackSpeedSetpoint = @OvenExhaustFanBackSpeedSetpoint
                 , OvenCirculatingFanActCurrent1 = @OvenCirculatingFanActCurrent1
                 , OvenCirculatingFanActCurrent2 = @OvenCirculatingFanActCurrent2
                 , OvenExhaustFanActCurrent1 = @OvenExhaustFanActCurrent1
                 , OvenExhaustFanActCurrent2 = @OvenExhaustFanActCurrent2
                 , OvenExhaustFanFrontActCurrent = @OvenExhaustFanFrontActCurrent
                 , OvenExhaustFanBackActCurrent = @OvenExhaustFanBackActCurrent
                 , OvenCirculatingFanPctCurrent1 = @OvenCirculatingFanPctCurrent1
                 , OvenCirculatingFanPctCurrent2 = @OvenCirculatingFanPctCurrent2
                 , OvenExhaustFanPctCurrent1 = @OvenExhaustFanPctCurrent1
                 , OvenExhaustFanPctCurrent2 = @OvenExhaustFanPctCurrent2
                 , OvenExhaustFanFrontPctCurrent = @OvenExhaustFanFrontPctCurrent
                 , OvenExhaustFanBackPctCurrent = @OvenExhaustFanBackPctCurrent
                 , MotorActStretch1x2 = @MotorActStretch1x2
                 , MotorActStretch3x4 = @MotorActStretch3x4
                 , MotorActStretch4x5 = @MotorActStretch4x5
                 , MotorActStretch1x6 = @MotorActStretch1x6
                 , MotorSetPoint1x2 = @MotorSetPoint1x2
                 , MotorSetPoint3x4 = @MotorSetPoint3x4
                 , MotorSetPoint4x5 = @MotorSetPoint4x5
                 , MotorSetPoint1x6 = @MotorSetPoint1x6
                 , MotorActTensionTotal1x2 = @MotorActTensionTotal1x2
                 , MotorActTensionTotal3x4 = @MotorActTensionTotal3x4
                 , MotorActTensionTotal4x5 = @MotorActTensionTotal4x5
                 , MotorActTensionTotal1x6 = @MotorActTensionTotal1x6
                 , MotorSingleTension1x2 = @MotorSingleTension1x2
                 , MotorSingleTension3x4 = @MotorSingleTension3x4
                 , MotorSingleTension4x5 = @MotorSingleTension4x5
                 , MotorSingleTension1x6 = @MotorSingleTension1x6
                 , Remark = @Remark
				 , Opertor = @Opertor 
				 , Leader = @Leader   
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
        END
        ELSE
        BEGIN
			INSERT INTO S8x2WetPickup
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , CustomerName
                , FirstDip1
                , SolutionName
                , FirstDip2
                , SolutionLotNo
                , PullMotorActSpeed1
                , PullMotorActSpeed2
                , PullMotorActSpeed3
                , PullMotorActSpeed4
                , PullMotorActSpeed5
                , PullMotorActSpeed6
                , PullMotorSpeedSetPoint1
                , PullMotorSpeedSetPoint2
                , PullMotorSpeedSetPoint3
                , PullMotorSpeedSetPoint4
                , PullMotorSpeedSetPoint5
                , PullMotorSpeedSetPoint6
                , PullMotorActCurrent1
                , PullMotorActCurrent2
                , PullMotorActCurrent3
                , PullMotorActCurrent4
                , PullMotorActCurrent5
                , PullMotorActCurrent6
                , PullMotorPctCurrent1
                , PullMotorPctCurrent2
                , PullMotorPctCurrent3
                , PullMotorPctCurrent4
                , PullMotorPctCurrent5
                , PullMotorPctCurrent6
                , OvenCirculatingFanActSpeed1
                , OvenCirculatingFanActSpeed2
                , OvenExhaustFanActSpeed1
                , OvenExhaustFanActSpeed2
                , OvenExhaustFanFrontActSpeed
                , OvenExhaustFanBackActSpeed
                , OvenCirculatingFanSpeedSetpoint1
                , OvenCirculatingFanSpeedSetpoint2
                , OvenExhaustFanSpeedSetpoint1
                , OvenExhaustFanSpeedSetpoint2
                , OvenExhaustFanFrontSpeedSetpoint
                , OvenExhaustFanBackSpeedSetpoint
                , OvenCirculatingFanActCurrent1
                , OvenCirculatingFanActCurrent2
                , OvenExhaustFanActCurrent1
                , OvenExhaustFanActCurrent2
                , OvenExhaustFanFrontActCurrent
                , OvenExhaustFanBackActCurrent
                , OvenCirculatingFanPctCurrent1
                , OvenCirculatingFanPctCurrent2
                , OvenExhaustFanPctCurrent1
                , OvenExhaustFanPctCurrent2
                , OvenExhaustFanFrontPctCurrent
                , OvenExhaustFanBackPctCurrent
                , MotorActStretch1x2
                , MotorActStretch3x4
                , MotorActStretch4x5
                , MotorActStretch1x6
                , MotorSetPoint1x2
                , MotorSetPoint3x4
                , MotorSetPoint4x5
                , MotorSetPoint1x6
                , MotorActTensionTotal1x2
                , MotorActTensionTotal3x4
                , MotorActTensionTotal4x5
                , MotorActTensionTotal1x6
                , MotorSingleTension1x2
                , MotorSingleTension3x4
                , MotorSingleTension4x5
                , MotorSingleTension1x6
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
                , @PullMotorActSpeed1
                , @PullMotorActSpeed2
                , @PullMotorActSpeed3
                , @PullMotorActSpeed4
                , @PullMotorActSpeed5
                , @PullMotorActSpeed6
                , @PullMotorSpeedSetPoint1
                , @PullMotorSpeedSetPoint2
                , @PullMotorSpeedSetPoint3
                , @PullMotorSpeedSetPoint4
                , @PullMotorSpeedSetPoint5
                , @PullMotorSpeedSetPoint6
                , @PullMotorActCurrent1
                , @PullMotorActCurrent2
                , @PullMotorActCurrent3
                , @PullMotorActCurrent4
                , @PullMotorActCurrent5
                , @PullMotorActCurrent6
                , @PullMotorPctCurrent1
                , @PullMotorPctCurrent2
                , @PullMotorPctCurrent3
                , @PullMotorPctCurrent4
                , @PullMotorPctCurrent5
                , @PullMotorPctCurrent6
                , @OvenCirculatingFanActSpeed1
                , @OvenCirculatingFanActSpeed2
                , @OvenExhaustFanActSpeed1
                , @OvenExhaustFanActSpeed2
                , @OvenExhaustFanFrontActSpeed
                , @OvenExhaustFanBackActSpeed
                , @OvenCirculatingFanSpeedSetpoint1
                , @OvenCirculatingFanSpeedSetpoint2
                , @OvenExhaustFanSpeedSetpoint1
                , @OvenExhaustFanSpeedSetpoint2
                , @OvenExhaustFanFrontSpeedSetpoint
                , @OvenExhaustFanBackSpeedSetpoint
                , @OvenCirculatingFanActCurrent1
                , @OvenCirculatingFanActCurrent2
                , @OvenExhaustFanActCurrent1
                , @OvenExhaustFanActCurrent2
                , @OvenExhaustFanFrontActCurrent
                , @OvenExhaustFanBackActCurrent
                , @OvenCirculatingFanPctCurrent1
                , @OvenCirculatingFanPctCurrent2
                , @OvenExhaustFanPctCurrent1
                , @OvenExhaustFanPctCurrent2
                , @OvenExhaustFanFrontPctCurrent
                , @OvenExhaustFanBackPctCurrent
                , @MotorActStretch1x2
                , @MotorActStretch3x4
                , @MotorActStretch4x5
                , @MotorActStretch1x6
                , @MotorSetPoint1x2
                , @MotorSetPoint3x4
                , @MotorSetPoint4x5
                , @MotorSetPoint1x6
                , @MotorActTensionTotal1x2
                , @MotorActTensionTotal3x4
                , @MotorActTensionTotal4x5
                , @MotorActTensionTotal1x6
                , @MotorSingleTension1x2
                , @MotorSingleTension3x4
                , @MotorSingleTension4x5
                , @MotorSingleTension1x6
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
