/****** Object:  StoredProcedure [dbo].[SaveS1ConditionStd]    Script Date: 8/17/2023 8:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS1ConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS1ConditionStd] (
  @CustomerName nvarchar(100)
, @ItemCode nvarchar(30)
, @ProductName nvarchar(100)
, @ItemYarn nvarchar(30)
, @CordStructure1 nvarchar(50)
, @CordStructure2 nvarchar(50)
, @StdTwistingNumber nvarchar(50)
, @RingDiameter nvarchar(100)
, @TwistChangeGearI int
, @TwistChangeGearJ int
, @TwistChangeGearK int
, @LifterChangGearA int
, @LifterChangGearB int
, @OuterDiameter int
, @TravellerNo nvarchar(100)
, @CouterUnit decimal(18, 2)
, @CouterUnitErrRange decimal(18, 2)
, @CouterWg decimal(18, 2)
, @CouterWgErrRange decimal(18, 2)
, @CalcTwistingNumber decimal(18, 2)
, @CalcTwistingNumberErrRange decimal(18, 2)
, @SpindleRotation decimal(18, 2)
, @SpindleRotationErrRange decimal(18, 2)
, @YarnSpeed decimal(18, 2)
, @YarnSpeedErrRange decimal(18, 2)
, @SpecialMention as nvarchar(MAX)
, @PkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S1ConditionStd WHERE PkId = @PkId)
        BEGIN
            UPDATE S1ConditionStd 
               SET CustomerName = @CustomerName
                 , ItemCode = @ItemCode
                 , ProductName = @ProductName
                 , ItemYarn = @ItemYarn
                 , CordStructure1 = @CordStructure1
                 , CordStructure2 = @CordStructure2
                 , StdTwistingNumber = @StdTwistingNumber
                 , RingDiameter = @RingDiameter
                 , TwistChangeGearI = @TwistChangeGearI
                 , TwistChangeGearJ = @TwistChangeGearJ
                 , TwistChangeGearK = @TwistChangeGearK
                 , LifterChangGearA = @LifterChangGearA
                 , LifterChangGearB = @LifterChangGearB
                 , OuterDiameter = @OuterDiameter
                 , TravellerNo = @TravellerNo
                 , CouterUnit = @CouterUnit
                 , CouterUnitErrRange = @CouterUnitErrRange
                 , CouterWg = @CouterWg
                 , CouterWgErrRange = @CouterWgErrRange
                 , CalcTwistingNumber = @CalcTwistingNumber
                 , CalcTwistingNumberErrRange = @CalcTwistingNumberErrRange
                 , SpindleRotation = @SpindleRotation
                 , SpindleRotationErrRange = @SpindleRotationErrRange
                 , YarnSpeed = @YarnSpeed
                 , YarnSpeedErrRange = @YarnSpeedErrRange
                 , SpecialMention = @SpecialMention
             WHERE PkId = @PkId
        END
        ELSE
        BEGIN
			INSERT INTO S1ConditionStd
			(
                  CustomerName
                , ItemCode
                , ProductName
                , ItemYarn
                , CordStructure1
                , CordStructure2
                , StdTwistingNumber
                , RingDiameter
                , TwistChangeGearI
                , TwistChangeGearJ
                , TwistChangeGearK
                , LifterChangGearA
                , LifterChangGearB
                , OuterDiameter
                , TravellerNo
                , CouterUnit
                , CouterUnitErrRange
                , CouterWg
                , CouterWgErrRange
                , CalcTwistingNumber
                , CalcTwistingNumberErrRange
                , SpindleRotation
                , SpindleRotationErrRange
                , YarnSpeed
                , YarnSpeedErrRange
                , SpecialMention
			)
			VALUES
			(
                  @CustomerName
                , @ItemCode
                , @ProductName
                , @ItemYarn
                , @CordStructure1
                , @CordStructure2
                , @StdTwistingNumber
                , @RingDiameter
                , @TwistChangeGearI
                , @TwistChangeGearJ
                , @TwistChangeGearK
                , @LifterChangGearA
                , @LifterChangGearB
                , @OuterDiameter
                , @TravellerNo
                , @CouterUnit
                , @CouterUnitErrRange
                , @CouterWg
                , @CouterWgErrRange
                , @CalcTwistingNumber
                , @CalcTwistingNumberErrRange
                , @SpindleRotation
                , @SpindleRotationErrRange
                , @YarnSpeed
                , @YarnSpeedErrRange
                , @SpecialMention
			);

            SET @PkId = @@IDENTITY;
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
