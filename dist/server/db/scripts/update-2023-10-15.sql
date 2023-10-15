/*********** Script Update Date: 2023-10-15  ***********/
-- S1
DROP PROCEDURE SaveS1Condition
GO
DROP PROCEDURE GetS1Condition
GO
EXEC DropTable N'S1Condition'
GO
-- S4x1
DROP PROCEDURE SaveS4x1Condition
GO
DROP PROCEDURE GetS4x1Condition
GO
EXEC DropTable N'S4x1Condition'
GO
-- S4x2
DROP PROCEDURE SaveS4x2Condition
GO
DROP PROCEDURE GetS4x2Condition
GO
EXEC DropTable N'S4x2Condition'
GO


/*********** Script Update Date: 2023-10-15  ***********/


/*********** Script Update Date: 2023-10-15  ***********/
/****** Object:  Table [dbo].[S1Condition]    Script Date: 10/15/2023 12:52:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S1Condition](
	[S1ConditionId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[RingDiameterSC] [bit] NULL,
	[RingDiameter] [nvarchar](100) NULL,
	[RingDiameterActual] [nvarchar](100) NULL,
	[TwistChangeGearSC] [bit] NULL,
	[TwistChangeGearI] [decimal](18, 3) NULL,
	[TwistChangeGearIActual] [decimal](18, 3) NULL,
	[TwistChangeGearJ] [decimal](18, 3) NULL,
	[TwistChangeGearJActual] [decimal](18, 3) NULL,
	[TwistChangeGearK] [decimal](18, 3) NULL,
	[TwistChangeGearKActual] [decimal](18, 3) NULL,
	[LifterChangeGearSC] [bit] NULL,
	[LifterChangeGearA] [decimal](18, 3) NULL,
	[LifterChangeGearAActual] [decimal](18, 3) NULL,
	[LifterChangeGearB] [decimal](18, 3) NULL,
	[LifterChangeGearBActual] [decimal](18, 3) NULL,
	[OuterDiameterSC] [bit] NULL,
	[OuterDiameter] [decimal](18, 3) NULL,
	[OuterDiameterActual] [decimal](18, 3) NULL,
	[TravellerNoSC] [bit] NULL,
	[TravellerNo] [nvarchar](100) NULL,
	[TravellerNoActual] [nvarchar](100) NULL,
	[CouterUnitSC] [bit] NULL,
	[CouterUnit] [decimal](18, 3) NULL,
	[CouterUnitErr] [decimal](18, 3) NULL,
	[CouterUnitActual] [decimal](18, 3) NULL,
	[CouterUnit2SC] [bit] NULL,
	[CouterUnit2] [decimal](18, 3) NULL,
	[CouterUnit2Err] [decimal](18, 3) NULL,
	[CouterUnit2Actual] [decimal](18, 3) NULL,
	[CouterWeightSC] [bit] NULL,
	[CouterWeight] [decimal](18, 3) NULL,
	[CouterWeightErr] [decimal](18, 3) NULL,
	[CouterWeightActual] [decimal](18, 3) NULL,
	[CouterWeight2SC] [bit] NULL,
	[CouterWeight2] [decimal](18, 3) NULL,
	[CouterWeight2Actual] [decimal](18, 3) NULL,
	[CouterWeight2Err] [decimal](18, 3) NULL,
	[CounterSystemSC] [bit] NULL,
	[CounterSystem] [nvarchar](100) NULL,
	[CounterSystemActual] [bit] NULL,
	[SenserYarnBreakSC] [bit] NULL,
	[SenserYarnBreak] [nvarchar](100) NULL,
	[SenserYarnBreakActual] [bit] NULL,
	[CalculatedTwistingNumberSC] [bit] NULL,
	[CalculatedTwistingNumber] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberErr] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberActual] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationSC] [bit] NULL,
	[NumberOfSpindleRotation] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationErr] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationActual] [decimal](18, 3) NULL,
	[YarnSpeedSC] [bit] NULL,
	[YarnSpeed] [decimal](18, 3) NULL,
	[YarnSpeedErr] [decimal](18, 3) NULL,
	[YarnSpeedActual] [decimal](18, 3) NULL,
	[SpecialMentionSC] [bit] NULL,
	[SpecialMention] [nvarchar](100) NULL,
	[SpecialMentionActual] [nvarchar](100) NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[CheckedBy] [nvarchar](100) NULL,
	[CheckedDate] [datetime] NULL,
	[ApproveBy] [nvarchar](100) NULL,
	[ApproveDate] [datetime] NULL,
	[ShiftLeader] [nvarchar](100) NULL,
	[ProductionManager] [nvarchar](100) NULL,
 CONSTRAINT [PK_S1Condition] PRIMARY KEY CLUSTERED 
(
	[S1ConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-15  ***********/
/****** Object:  Table [dbo].[S4x1Condition]    Script Date: 10/15/2023 12:25:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S4x1Condition](
	[S4x1ConditionId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[TwistChangeGearSC] [bit] NULL,
	[TwistChangeGearE] [decimal](18, 3) NULL,
	[TwistChangeGearEActual] [decimal](18, 3) NULL,
	[TwistChangeGearF] [decimal](18, 3) NULL,
	[TwistChangeGearFActual] [decimal](18, 3) NULL,
	[TwistChangeGearG] [decimal](18, 3) NULL,
	[TwistChangeGearGActual] [decimal](18, 3) NULL,
	[TwistChangeGearH] [decimal](18, 3) NULL,
	[TwistChangeGearHActual] [decimal](18, 3) NULL,
	[MotorPulleyDiaSC] [bit] NULL,
	[MotorPulleyDia] [decimal](18, 3) NULL,
	[MotorPulleyDiaActual] [decimal](18, 3) NULL,
	[DrivingPulleyDiaSC] [bit] NULL,
	[DrivingPulleyDia] [decimal](18, 3) NULL,
	[DrivingPulleyDiaActual] [decimal](18, 3) NULL,
	[OverFeedSC] [bit] NULL,
	[OverFeedRate] [decimal](18, 3) NULL,
	[OverFeedRateActual] [decimal](18, 3) NULL,
	[OverFeedGear] [decimal](18, 3) NULL,
	[OverFeedGearActual] [decimal](18, 3) NULL,
	[WindAngleSC] [bit] NULL,
	[WindAngleDeg] [decimal](18, 3) NULL,
	[WindAngleDegActual] [decimal](18, 3) NULL,
	[WindAngleGearA] [decimal](18, 3) NULL,
	[WindAngleGearAActual] [decimal](18, 3) NULL,
	[WindAngleGearB] [decimal](18, 3) NULL,
	[WindAngleGearBActual] [decimal](18, 3) NULL,
	[TensorDialSetSC] [bit] NULL,
	[TensorDialSet] [decimal](18, 3) NULL,
	[TensorDialSetActual] [decimal](18, 3) NULL,
	[NumberOfLoopSC] [bit] NULL,
	[NumberOfLoop] [decimal](18, 3) NULL,
	[NumberOfLoopErr] [decimal](18, 3) NULL,
	[NumberOfLoopActual] [decimal](18, 3) NULL,
	[MethodOfKnotSC] [bit] NULL,
	[MethodOfKnot] [nvarchar](100) NULL,
	[MethodOfKnotActual] [nvarchar](100) NULL,
	[WindQuantitySC] [bit] NULL,
	[WindQuantity] [decimal](18, 3) NULL,
	[WindQuantityErr] [decimal](18, 3) NULL,
	[WindQuantityActual] [decimal](18, 3) NULL,
	[LengthSC] [bit] NULL,
	[Length] [decimal](18, 3) NULL,
	[LengthErr] [decimal](18, 3) NULL,
	[LengthActual] [decimal](18, 3) NULL,
	[DoffTimeSC] [bit] NULL,
	[DoffTime] [decimal](18, 3) NULL,
	[DoffTimeErr] [decimal](18, 3) NULL,
	[DoffTimeActual] [decimal](18, 3) NULL,
	[ProductQuantitySC] [bit] NULL,
	[ProductQuantityKg] [decimal](18, 3) NULL,
	[ProductQuantityKgActual] [decimal](18, 3) NULL,
	[ProductQuantityDay] [decimal](18, 3) NULL,
	[ProductQuantityDayActual] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberSC] [bit] NULL,
	[CalculatedTwistingNumber] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberErr] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberActual] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationSC] [bit] NULL,
	[NumberOfSpindleRotation] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationErr] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationActual] [decimal](18, 3) NULL,
	[YarnSpeedSC] [bit] NULL,
	[YarnSpeed] [decimal](18, 3) NULL,
	[YarnSpeedErr] [decimal](18, 3) NULL,
	[YarnSpeedActual] [decimal](18, 3) NULL,
	[SpecialMentionSC] [bit] NULL,
	[SpecialMention] [nvarchar](100) NULL,
	[SpecialMentionActual] [nvarchar](100) NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[CheckedBy] [nvarchar](100) NULL,
	[CheckedDate] [datetime] NULL,
	[ApproveBy] [nvarchar](100) NULL,
	[ApproveDate] [datetime] NULL,
	[ShiftLeader] [nvarchar](100) NULL,
	[ProductionManager] [nvarchar](100) NULL,
 CONSTRAINT [PK_S4x1Condition] PRIMARY KEY CLUSTERED 
(
	[S4x1ConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-15  ***********/
/****** Object:  Table [dbo].[S4x2Condition]    Script Date: 10/15/2023 12:25:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S4x2Condition](
	[S4x2ConditionId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[FullPackageModeSC] [bit] NULL,
	[FullPackageMode] [nvarchar](100) NULL,
	[FullPackageModeActual] [nvarchar](100) NULL,
	[LengthSC] [bit] NULL,
	[Length] [decimal](18, 3) NULL,
	[LengthErr] [decimal](18, 3) NULL,
	[LengthActual] [decimal](18, 3) NULL,
	[WindAngleShiftFunctionSC] [bit] NULL,
	[WindAngleShiftFunction] [nvarchar](100) NULL,
	[WindAngleShiftFunctionActual] [nvarchar](100) NULL,
	[AmountOfDisturbSC] [bit] NULL,
	[AmountOfDisturb] [nvarchar](100) NULL,
	[AmountOfDisturbActual] [nvarchar](100) NULL,
	[WindAngleSC] [bit] NULL,
	[WindAngle] [decimal](18, 3) NULL,
	[WindAngleActual] [decimal](18, 3) NULL,
	[DistuebAccelerationTimeSC] [bit] NULL,
	[DistuebAccelerationTime] [decimal](18, 3) NULL,
	[DistuebAccelerationTimeActual] [decimal](18, 3) NULL,
	[DistuebDccelerationTimeSC] [bit] NULL,
	[DistuebDccelerationTime] [decimal](18, 3) NULL,
	[DistuebDccelerationTimeActual] [decimal](18, 3) NULL,
	[TensorSettingSC] [bit] NULL,
	[TensorSetting] [nvarchar](100) NULL,
	[TensorSettingActual] [nvarchar](100) NULL,
	[FeedRollerSettingSC] [bit] NULL,
	[FeedRollerSetting] [nvarchar](100) NULL,
	[FeedRollerSettingActual] [nvarchar](100) NULL,
	[BollonSettingSC] [bit] NULL,
	[BollonSetting] [nvarchar](100) NULL,
	[BollonSettingActual] [nvarchar](100) NULL,
	[MethodOfKnotSC] [bit] NULL,
	[MethodOfKnot] [nvarchar](100) NULL,
	[MethodOfKnotActual] [nvarchar](100) NULL,
	[WindQuantitySC] [bit] NULL,
	[WindQuantity] [decimal](18, 3) NULL,
	[WindQuantityErr] [decimal](18, 3) NULL,
	[WindQuantityActual] [decimal](18, 3) NULL,
	[DoffTimeSC] [bit] NULL,
	[DoffTime] [decimal](18, 3) NULL,
	[DoffTimeErr] [decimal](18, 3) NULL,
	[DoffTimeActual] [decimal](18, 3) NULL,
	[ProductQuantitySC] [bit] NULL,
	[ProductQuantityKg] [decimal](18, 3) NULL,
	[ProductQuantityKgActual] [decimal](18, 3) NULL,
	[ProductQuantityDay] [decimal](18, 3) NULL,
	[ProductQuantityDayActual] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberSC] [bit] NULL,
	[CalculatedTwistingNumber] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberErr] [decimal](18, 3) NULL,
	[CalculatedTwistingNumberActual] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationSC] [bit] NULL,
	[NumberOfSpindleRotation] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationErr] [decimal](18, 3) NULL,
	[NumberOfSpindleRotationActual] [decimal](18, 3) NULL,
	[YarnSpeedSC] [bit] NULL,
	[YarnSpeed] [decimal](18, 3) NULL,
	[YarnSpeedErr] [decimal](18, 3) NULL,
	[YarnSpeedActual] [decimal](18, 3) NULL,
	[SpecialMentionSC] [bit] NULL,
	[SpecialMention] [nvarchar](100) NULL,
	[SpecialMentionActual] [nvarchar](100) NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime] NULL,
	[CheckedBy] [nvarchar](100) NULL,
	[CheckedDate] [datetime] NULL,
	[ApproveBy] [nvarchar](100) NULL,
	[ApproveDate] [datetime] NULL,
	[ShiftLeader] [nvarchar](100) NULL,
	[ProductionManager] [nvarchar](100) NULL,
 CONSTRAINT [PK_S4x2Condition] PRIMARY KEY CLUSTERED 
(
	[S4x2ConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-10-15  ***********/
/****** Object:  StoredProcedure [dbo].[GetS1Conditions]    Script Date: 10/15/2023 12:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS1Conditions
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS1Conditions NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS1Conditions]
(
  @PCTwist1Id int = NULL
, @S1ConditionId int = NULL
)
AS
BEGIN
    SELECT  S1ConditionId ,
			PCTwist1Id ,
	        ProductCode ,
			RingDiameterSC ,
			RingDiameter ,
			RingDiameterActual ,
			TwistChangeGearSC ,
			TwistChangeGearI ,
			TwistChangeGearIActual ,
			TwistChangeGearJ ,
			TwistChangeGearJActual ,
			TwistChangeGearK ,
			TwistChangeGearKActual ,
			LifterChangeGearSC ,
			LifterChangeGearA ,
			LifterChangeGearAActual ,
			LifterChangeGearB ,
			LifterChangeGearBActual ,
			OuterDiameterSC ,
			OuterDiameter ,
			OuterDiameterActual ,
			TravellerNoSC ,
			TravellerNo ,
			TravellerNoActual ,
			CouterUnitSC ,
			CouterUnit ,
			CouterUnitErr ,
			CouterUnitActual ,
			CouterUnit2SC ,
			CouterUnit2 ,
			CouterUnit2Err ,
			CouterUnit2Actual ,
			CouterWeightSC ,
			CouterWeight ,
			CouterWeightErr ,
			CouterWeightActual ,
			CouterWeight2SC ,
			CouterWeight2 ,
			CouterWeight2Actual ,
			CouterWeight2Err ,
			CounterSystemSC ,
			CounterSystem ,
			CounterSystemActual ,
			SenserYarnBreakSC ,
			SenserYarnBreak ,
			SenserYarnBreakActual ,
			CalculatedTwistingNumberSC ,
			CalculatedTwistingNumber ,
			CalculatedTwistingNumberErr ,
			CalculatedTwistingNumberActual ,
			NumberOfSpindleRotationSC ,
			NumberOfSpindleRotation ,
			NumberOfSpindleRotationErr ,
			NumberOfSpindleRotationActual ,
			YarnSpeedSC ,
			YarnSpeed ,
			YarnSpeedErr ,
			YarnSpeedActual ,
			SpecialMentionSC ,
			SpecialMention ,
			SpecialMentionActual ,
            UpdateBy ,
            UpdateDate ,
            CheckedBy , 
            CheckedDate ,
            ApproveBy ,
            ApproveDate ,
            ShiftLeader , 
            ProductionManager
     FROM S1Condition
     WHERE PCTwist1Id = COALESCE(@PCTwist1Id, PCTwist1Id)
       AND S1ConditionId = COALESCE(@S1ConditionId, S1ConditionId)
     ORDER BY PCTwist1Id, S1ConditionId;

END

GO


/*********** Script Update Date: 2023-10-15  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS1Condition]    Script Date: 10/15/2023 12:36:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS1Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS1Condition] (
    @PCTwist1Id int,
    @ProductCode nvarchar(30),
	@RingDiameterSC bit,
	@RingDiameter nvarchar(100),
	@RingDiameterActual nvarchar(100),
	@TwistChangeGearSC bit,
	@TwistChangeGearI decimal(18, 3),
	@TwistChangeGearIActual decimal(18, 3),
	@TwistChangeGearJ decimal(18, 3),
	@TwistChangeGearJActual decimal(18, 3),
	@TwistChangeGearK decimal(18, 3),
	@TwistChangeGearKActual decimal(18, 3),
	@LifterChangeGearSC bit,
	@LifterChangeGearA decimal(18, 3),
	@LifterChangeGearAActual decimal(18, 3),
	@LifterChangeGearB decimal(18, 3),
	@LifterChangeGearBActual decimal(18, 3),
	@OuterDiameterSC bit,
	@OuterDiameter decimal(18, 3),
	@OuterDiameterActual decimal(18, 3),
	@TravellerNoSC bit,
	@TravellerNo nvarchar(100),
	@TravellerNoActual nvarchar(100),
	@CouterUnitSC bit,
	@CouterUnit decimal(18, 3),
	@CouterUnitErr decimal(18, 3),
	@CouterUnitActual decimal(18, 3),
	@CouterUnit2SC bit,
	@CouterUnit2 decimal(18, 3),
	@CouterUnit2Err decimal(18, 3),
	@CouterUnit2Actual decimal(18, 3),
	@CouterWeightSC bit,
	@CouterWeight decimal(18, 3),
	@CouterWeightErr decimal(18, 3),
	@CouterWeightActual decimal(18, 3),
	@CouterWeight2SC bit,
	@CouterWeight2 decimal(18, 3),
	@CouterWeight2Actual decimal(18, 3),
	@CouterWeight2Err decimal(18, 3),
	@CounterSystemSC bit,
	@CounterSystem nvarchar(100),
	@CounterSystemActual bit,
	@SenserYarnBreakSC bit,
	@SenserYarnBreak nvarchar(100),
	@SenserYarnBreakActual bit,
	@CalculatedTwistingNumberSC bit,
	@CalculatedTwistingNumber decimal(18, 3),
	@CalculatedTwistingNumberErr decimal(18, 3),
	@CalculatedTwistingNumberActual decimal(18, 3),
	@NumberOfSpindleRotationSC bit,
	@NumberOfSpindleRotation decimal(18, 3),
	@NumberOfSpindleRotationErr decimal(18, 3),
	@NumberOfSpindleRotationActual decimal(18, 3),
	@YarnSpeedSC bit,
	@YarnSpeed decimal(18, 3),
	@YarnSpeedErr decimal(18, 3),
	@YarnSpeedActual decimal(18, 3),
	@SpecialMentionSC bit,
	@SpecialMention nvarchar(100),
	@SpecialMentionActual nvarchar(100),
    @UpdateBy nvarchar(100) , 
    @S1ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S1Condition WHERE S1ConditionId = @S1ConditionId)
        BEGIN
            UPDATE S1Condition 
               SET RingDiameterSC = @RingDiameterSC  ,
					RingDiameter = @RingDiameter ,
					RingDiameterActual = @RingDiameterActual ,
					TwistChangeGearSC = @TwistChangeGearSC ,
					TwistChangeGearI = @TwistChangeGearI ,
					TwistChangeGearIActual = @TwistChangeGearIActual ,
					TwistChangeGearJ = @TwistChangeGearJ ,
					TwistChangeGearJActual = @TwistChangeGearJActual ,
					TwistChangeGearK = @TwistChangeGearK ,
					TwistChangeGearKActual = @TwistChangeGearKActual ,
					LifterChangeGearSC = @LifterChangeGearSC ,
					LifterChangeGearA = @LifterChangeGearA ,
					LifterChangeGearAActual = @LifterChangeGearAActual ,
					LifterChangeGearB = @LifterChangeGearB ,
					LifterChangeGearBActual = @LifterChangeGearBActual ,
					OuterDiameterSC = @OuterDiameterSC ,
					OuterDiameter = @OuterDiameter ,
					OuterDiameterActual = @OuterDiameterActual ,
					TravellerNoSC = @TravellerNoSC ,
					TravellerNo = @TravellerNo ,
					TravellerNoActual = @TravellerNoActual ,
					CouterUnitSC = @CouterUnitSC ,
					CouterUnit = @CouterUnit ,
					CouterUnitErr = @CouterUnitErr ,
					CouterUnitActual = @CouterUnitActual ,
					CouterUnit2SC = @CouterUnit2SC ,
					CouterUnit2 = @CouterUnit2 ,
					CouterUnit2Err = @CouterUnit2Err ,
					CouterUnit2Actual = @CouterUnit2Actual ,
					CouterWeightSC = @CouterWeightSC ,
					CouterWeight = @CouterWeight ,
					CouterWeightErr = @CouterWeightErr ,
					CouterWeightActual = @CouterWeightActual ,
					CouterWeight2SC = @CouterWeight2SC ,
					CouterWeight2 = @CouterWeight2 ,
					CouterWeight2Actual = @CouterWeight2Actual ,
					CouterWeight2Err = @CouterWeight2Err ,
					CounterSystemSC = @CounterSystemSC ,
					CounterSystem = @CounterSystem ,
					CounterSystemActual = @CounterSystemActual ,
					SenserYarnBreakSC = @SenserYarnBreakSC ,
					SenserYarnBreak = @SenserYarnBreak ,
					SenserYarnBreakActual = @SenserYarnBreakActual ,
					CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
					CalculatedTwistingNumber = @CalculatedTwistingNumber ,
					CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
					CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
					NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
					NumberOfSpindleRotation = @NumberOfSpindleRotation ,
					NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
					NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
					YarnSpeedSC = @YarnSpeedSC ,
					YarnSpeed = @YarnSpeed ,
					YarnSpeedErr = @YarnSpeedErr ,
					YarnSpeedActual = @YarnSpeedActual ,
					SpecialMentionSC = @SpecialMentionSC ,
					SpecialMention = @SpecialMention ,
					SpecialMentionActual = @SpecialMentionActual ,                    
                    UpdateBy = @UpdateBy ,
                    UpdateDate = GETDATE()
             WHERE S1ConditionId = @S1ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S1Condition
		    (
                ProductCode ,
				RingDiameterSC ,
				RingDiameter ,
				RingDiameterActual ,
				TwistChangeGearSC ,
				TwistChangeGearI ,
				TwistChangeGearIActual ,
				TwistChangeGearJ ,
				TwistChangeGearJActual ,
				TwistChangeGearK ,
				TwistChangeGearKActual ,
				LifterChangeGearSC ,
				LifterChangeGearA ,
				LifterChangeGearAActual ,
				LifterChangeGearB ,
				LifterChangeGearBActual ,
				OuterDiameterSC ,
				OuterDiameter ,
				OuterDiameterActual ,
				TravellerNoSC ,
				TravellerNo ,
				TravellerNoActual ,
				CouterUnitSC ,
				CouterUnit ,
				CouterUnitErr ,
				CouterUnitActual ,
				CouterUnit2SC ,
				CouterUnit2 ,
				CouterUnit2Err ,
				CouterUnit2Actual ,
				CouterWeightSC ,
				CouterWeight ,
				CouterWeightErr ,
				CouterWeightActual ,
				CouterWeight2SC ,
				CouterWeight2 ,
				CouterWeight2Actual ,
				CouterWeight2Err ,
				CounterSystemSC ,
				CounterSystem ,
				CounterSystemActual ,
				SenserYarnBreakSC ,
				SenserYarnBreak ,
				SenserYarnBreakActual ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				YarnSpeedActual ,
				SpecialMentionSC ,
				SpecialMention ,
				SpecialMentionActual ,
                UpdateBy ,
                UpdateDate
			)
			VALUES
			(
                @ProductCode ,
				@RingDiameterSC ,
				@RingDiameter ,
				@RingDiameterActual ,
				@TwistChangeGearSC ,
				@TwistChangeGearI ,
				@TwistChangeGearIActual ,
				@TwistChangeGearJ ,
				@TwistChangeGearJActual ,
				@TwistChangeGearK ,
				@TwistChangeGearKActual ,
				@LifterChangeGearSC ,
				@LifterChangeGearA ,
				@LifterChangeGearAActual ,
				@LifterChangeGearB ,
				@LifterChangeGearBActual ,
				@OuterDiameterSC ,
				@OuterDiameter ,
				@OuterDiameterActual ,
				@TravellerNoSC ,
				@TravellerNo ,
				@TravellerNoActual ,
				@CouterUnitSC ,
				@CouterUnit ,
				@CouterUnitErr ,
				@CouterUnitActual ,
				@CouterUnit2SC ,
				@CouterUnit2 ,
				@CouterUnit2Err ,
				@CouterUnit2Actual ,
				@CouterWeightSC ,
				@CouterWeight ,
				@CouterWeightErr ,
				@CouterWeightActual ,
				@CouterWeight2SC ,
				@CouterWeight2 ,
				@CouterWeight2Actual ,
				@CouterWeight2Err ,
				@CounterSystemSC ,
				@CounterSystem ,
				@CounterSystemActual ,
				@SenserYarnBreakSC ,
				@SenserYarnBreak ,
				@SenserYarnBreakActual ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC ,
				@SpecialMention ,
				@SpecialMentionActual , 
                @UpdateBy ,
                GETDATE()
			);
        END

        SET @S1ConditionId = @@IDENTITY;

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


/*********** Script Update Date: 2023-10-15  ***********/
/****** Object:  StoredProcedure [dbo].[GetS4x1Conditions]    Script Date: 10/15/2023 12:31:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x1Conditions
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS4x1Conditions NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x1Conditions]
(
  @PCTwist1Id int = NULL
, @S4x1ConditionId int = NULL
)
AS
BEGIN
    SELECT   S4x1ConditionId ,
			 PCTwist1Id ,
	         ProductCode ,
			 TwistChangeGearSC ,
			 TwistChangeGearE ,
			 TwistChangeGearEActual ,
			 TwistChangeGearF ,
			 TwistChangeGearFActual ,
			 TwistChangeGearG ,
			 TwistChangeGearGActual ,
			 TwistChangeGearH ,
			 TwistChangeGearHActual ,
			 MotorPulleyDiaSC ,
			 MotorPulleyDia ,
			 MotorPulleyDiaActual ,
			 DrivingPulleyDiaSC ,
			 DrivingPulleyDia ,
			 DrivingPulleyDiaActual ,
			 OverFeedSC ,
			 OverFeedRate ,
			 OverFeedRateActual ,
			 OverFeedGear ,
			 OverFeedGearActual ,
			 WindAngleSC ,
			 WindAngleDeg ,
			 WindAngleDegActual ,
			 WindAngleGearA ,
			 WindAngleGearAActual ,
			 WindAngleGearB ,
			 WindAngleGearBActual ,
			 TensorDialSetSC,
			 TensorDialSet,
			 TensorDialSetActual,
			 NumberOfLoopSC ,
			 NumberOfLoop ,
			 NumberOfLoopErr ,
			 NumberOfLoopActual ,
			 MethodOfKnotSC ,
			 MethodOfKnot ,
			 MethodOfKnotActual ,
			 WindQuantitySC ,
			 WindQuantity ,
			 WindQuantityErr ,
			 WindQuantityActual ,
			 LengthSC ,
			 [Length] ,
			 LengthErr ,
			 LengthActual ,
			 DoffTimeSC ,
			 DoffTime ,
			 DoffTimeErr ,
			 DoffTimeActual ,
			 ProductQuantitySC ,
			 ProductQuantityKg ,
			 ProductQuantityKgActual ,
			 ProductQuantityDay ,
			 ProductQuantityDayActual ,
			 CalculatedTwistingNumberSC ,
			 CalculatedTwistingNumber ,
			 CalculatedTwistingNumberErr ,
			 CalculatedTwistingNumberActual ,
			 NumberOfSpindleRotationSC ,
			 NumberOfSpindleRotation ,
			 NumberOfSpindleRotationErr ,
			 NumberOfSpindleRotationActual ,
			 YarnSpeedSC ,
			 YarnSpeed ,
			 YarnSpeedErr ,
			 YarnSpeedActual ,
			 SpecialMentionSC ,
			 SpecialMention ,
			 SpecialMentionActual
             UpdateBy ,
             UpdateDate ,
             CheckedBy , 
             CheckedDate ,
             ApproveBy ,
             ApproveDate ,
             ShiftLeader , 
             ProductionManager
      FROM S4x1Condition
     WHERE PCTwist1Id = COALESCE(@PCTwist1Id, PCTwist1Id)
       AND S4x1ConditionId = COALESCE(@S4x1ConditionId, S4x1ConditionId)
     ORDER BY PCTwist1Id, S4x1ConditionId;

END

GO


/*********** Script Update Date: 2023-10-15  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS4x1Condition]    Script Date: 10/15/2023 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x1Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS4x1Condition] (
    @PCTwist1Id int,
    @ProductCode nvarchar(30)  ,
	@TwistChangeGearSC bit  ,
	@TwistChangeGearE decimal(18, 3)  ,
	@TwistChangeGearEActual decimal(18, 3)  ,
	@TwistChangeGearF decimal(18, 3)  ,
	@TwistChangeGearFActual decimal(18, 3)  ,
	@TwistChangeGearG decimal(18, 3)  ,
	@TwistChangeGearGActual decimal(18, 3)  ,
	@TwistChangeGearH decimal(18, 3)  ,
	@TwistChangeGearHActual decimal(18, 3)  ,
	@MotorPulleyDiaSC bit  ,
	@MotorPulleyDia decimal(18, 3)  ,
	@MotorPulleyDiaActual decimal(18, 3)  ,
	@DrivingPulleyDiaSC bit  ,
	@DrivingPulleyDia decimal(18, 3)  ,
	@DrivingPulleyDiaActual decimal(18, 3)  ,
	@OverFeedSC bit  ,
	@OverFeedRate decimal(18, 3)  ,
	@OverFeedRateActual decimal(18, 3)  ,
	@OverFeedGear decimal(18, 3)  ,
	@OverFeedGearActual decimal(18, 3)  ,
	@WindAngleSC bit  ,
	@WindAngleDeg decimal(18, 3)  ,
	@WindAngleDegActual decimal(18, 3)  ,
	@WindAngleGearA decimal(18, 3)  ,
	@WindAngleGearAActual decimal(18, 3)  ,
	@WindAngleGearB decimal(18, 3)  ,
	@WindAngleGearBActual decimal(18, 3)  ,
	@TensorDialSetSC bit  ,
	@TensorDialSet decimal(18, 3)  ,
	@TensorDialSetActual decimal(18, 3)  ,
	@NumberOfLoopSC bit  ,
	@NumberOfLoop decimal(18, 3)  ,
	@NumberOfLoopErr decimal(18, 3)  ,
	@NumberOfLoopActual decimal(18, 3)  ,
	@MethodOfKnotSC bit  ,
	@MethodOfKnot nvarchar(100)  ,
	@MethodOfKnotActual nvarchar(100)  ,
	@WindQuantitySC bit  ,
	@WindQuantity decimal(18, 3)  ,
	@WindQuantityErr decimal(18, 3)  ,
	@WindQuantityActual decimal(18, 3)  ,
	@LengthSC bit  ,
	@Length decimal(18, 3)  ,
	@LengthErr decimal(18, 3)  ,
	@LengthActual decimal(18, 3)  ,
	@DoffTimeSC bit  ,
	@DoffTime decimal(18, 3)  ,
	@DoffTimeErr decimal(18, 3)  ,
	@DoffTimeActual decimal(18, 3)  ,
	@ProductQuantitySC bit  ,
	@ProductQuantityKg decimal(18, 3)  ,
	@ProductQuantityKgActual decimal(18, 3)  ,
	@ProductQuantityDay decimal(18, 3)  ,
	@ProductQuantityDayActual decimal(18, 3)  ,
	@CalculatedTwistingNumberSC bit  ,
	@CalculatedTwistingNumber decimal(18, 3)  ,
	@CalculatedTwistingNumberErr decimal(18, 3)  ,
	@CalculatedTwistingNumberActual decimal(18, 3)  ,
	@NumberOfSpindleRotationSC bit  ,
	@NumberOfSpindleRotation decimal(18, 3)  ,
	@NumberOfSpindleRotationErr decimal(18, 3)  ,
	@NumberOfSpindleRotationActual decimal(18, 3)  ,
	@YarnSpeedSC bit  ,
	@YarnSpeed decimal(18, 3)  ,
	@YarnSpeedErr decimal(18, 3)  ,
	@YarnSpeedActual decimal(18, 3)  ,
	@SpecialMentionSC bit  ,
	@SpecialMention nvarchar(100)  ,
	@SpecialMentionActual nvarchar(100) ,  
    @UpdateBy nvarchar(100) , 
    @S4x1ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x1Condition WHERE S4x1ConditionId = @S4x1ConditionId)
        BEGIN
            UPDATE S4x1Condition 
               SET TwistChangeGearSC = @TwistChangeGearSC ,
				TwistChangeGearE = @TwistChangeGearE ,
				TwistChangeGearEActual = @TwistChangeGearEActual ,
				TwistChangeGearF = @TwistChangeGearF ,
				TwistChangeGearFActual = @TwistChangeGearFActual ,
				TwistChangeGearG = @TwistChangeGearG ,
				TwistChangeGearGActual = @TwistChangeGearGActual ,
				TwistChangeGearH = @TwistChangeGearH ,
				TwistChangeGearHActual = @TwistChangeGearHActual ,
				MotorPulleyDiaSC = @MotorPulleyDiaSC ,
				MotorPulleyDia = @MotorPulleyDia ,
				MotorPulleyDiaActual = @MotorPulleyDiaActual ,
				DrivingPulleyDiaSC = @DrivingPulleyDiaSC ,
				DrivingPulleyDia = @DrivingPulleyDia ,
				DrivingPulleyDiaActual = @DrivingPulleyDiaActual ,
				OverFeedSC = @OverFeedSC ,
				OverFeedRate = @OverFeedRate ,
				OverFeedRateActual = @OverFeedRateActual ,
				OverFeedGear = @OverFeedGear ,
				OverFeedGearActual = @OverFeedGearActual ,
				WindAngleSC = @WindAngleSC ,
				WindAngleDeg = @WindAngleDeg ,
				WindAngleDegActual = @WindAngleDegActual ,
				WindAngleGearA = @WindAngleGearA ,
				WindAngleGearAActual = @WindAngleGearAActual ,
				WindAngleGearB = @WindAngleGearB ,
				WindAngleGearBActual = @WindAngleGearBActual ,

				TensorDialSetSC = @TensorDialSetSC ,
				TensorDialSet = @TensorDialSet ,
				TensorDialSetActual = @TensorDialSetActual ,

				NumberOfLoopSC = @NumberOfLoopSC ,
				NumberOfLoop = @NumberOfLoop ,
				NumberOfLoopActual = @NumberOfLoopActual ,
				NumberOfLoopErr = @NumberOfLoopErr ,
				MethodOfKnotSC = @MethodOfKnotSC ,
				MethodOfKnot = @MethodOfKnot  ,
				MethodOfKnotActual = @MethodOfKnotActual  ,
				WindQuantitySC = @WindQuantitySC ,
				WindQuantity = @WindQuantity ,
				WindQuantityErr = @WindQuantityErr ,
				WindQuantityActual = @WindQuantityActual ,
				LengthSC = @LengthSC ,
				[Length] = @Length ,
				LengthErr = @LengthErr ,
				LengthActual = @LengthActual ,
				DoffTimeSC = @DoffTimeSC ,
				DoffTime = @DoffTime ,
				DoffTimeErr = @DoffTimeErr ,
				DoffTimeActual = @DoffTimeActual ,
				ProductQuantitySC = @ProductQuantitySC ,
				ProductQuantityKg = @ProductQuantityKg ,
				ProductQuantityKgActual = @ProductQuantityKgActual ,
				ProductQuantityDay = @ProductQuantityDay ,
				ProductQuantityDayActual = @ProductQuantityDayActual ,
				CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber = @CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation = @NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
				YarnSpeedSC = @YarnSpeedSC ,
				YarnSpeed = @YarnSpeed ,
				YarnSpeedActual = @YarnSpeedActual ,
				YarnSpeedErr = @YarnSpeedErr ,
				SpecialMentionSC = @SpecialMentionSC ,
				SpecialMention = @SpecialMention ,
				SpecialMentionActual = @SpecialMentionActual , 
                UpdateBy = @UpdateBy ,
                UpdateDate = GETDATE()
             WHERE S4x1ConditionId = @S4x1ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S4x1Condition
		    (
                ProductCode ,
				TwistChangeGearSC ,
				TwistChangeGearE ,
				TwistChangeGearEActual ,
				TwistChangeGearF ,
				TwistChangeGearFActual ,
				TwistChangeGearG ,
				TwistChangeGearGActual ,
				TwistChangeGearH ,
				TwistChangeGearHActual ,
				MotorPulleyDiaSC ,
				MotorPulleyDia ,
				MotorPulleyDiaActual ,
				DrivingPulleyDiaSC ,
				DrivingPulleyDia ,
				DrivingPulleyDiaActual ,
				OverFeedSC ,
				OverFeedRate ,
				OverFeedRateActual ,
				OverFeedGear ,
				OverFeedGearActual ,
				WindAngleSC ,
				WindAngleDeg ,
				WindAngleDegActual ,
				WindAngleGearA ,
				WindAngleGearAActual ,
				WindAngleGearB ,
				WindAngleGearBActual ,
				TensorDialSetSC,
				TensorDialSet,
				TensorDialSetActual,
				NumberOfLoopSC ,
				NumberOfLoop ,
				NumberOfLoopErr ,
				NumberOfLoopActual ,
				MethodOfKnotSC ,
				MethodOfKnot  ,
				MethodOfKnotActual  ,
				WindQuantitySC ,
				WindQuantity ,
				WindQuantityErr ,
				WindQuantityActual ,
				LengthSC ,
				[Length] ,
				LengthErr ,
				LengthActual ,
				DoffTimeSC ,
				DoffTime ,
				DoffTimeErr ,
				DoffTimeActual ,
				ProductQuantitySC ,
				ProductQuantityKg ,
				ProductQuantityKgActual ,
				ProductQuantityDay ,
				ProductQuantityDayActual ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				YarnSpeedActual ,
				SpecialMentionSC ,
				SpecialMention  ,
				SpecialMentionActual , 
                UpdateBy ,
                UpdateDate
			)
			VALUES
			(
                @ProductCode ,
				@TwistChangeGearSC ,
				@TwistChangeGearE ,
				@TwistChangeGearEActual ,
				@TwistChangeGearF ,
				@TwistChangeGearFActual ,
				@TwistChangeGearG ,
				@TwistChangeGearGActual ,
				@TwistChangeGearH ,
				@TwistChangeGearHActual ,
				@MotorPulleyDiaSC ,
				@MotorPulleyDia ,
				@MotorPulleyDiaActual ,
				@DrivingPulleyDiaSC ,
				@DrivingPulleyDia ,
				@DrivingPulleyDiaActual ,
				@OverFeedSC ,
				@OverFeedRate ,
				@OverFeedRateActual ,
				@OverFeedGear ,
				@OverFeedGearActual ,
				@WindAngleSC ,
				@WindAngleDeg ,
				@WindAngleDegActual ,
				@WindAngleGearA ,
				@WindAngleGearAActual ,
				@WindAngleGearB ,
				@WindAngleGearBActual ,
				@TensorDialSetSC,
				@TensorDialSet,
				@TensorDialSetActual,
				@NumberOfLoopSC ,
				@NumberOfLoop ,
				@NumberOfLoopErr ,
				@NumberOfLoopActual ,
				@MethodOfKnotSC ,
				@MethodOfKnot  ,
				@MethodOfKnotActual  ,
				@WindQuantitySC ,
				@WindQuantity ,
				@WindQuantityErr ,
				@WindQuantityActual ,
				@LengthSC ,
				@Length ,
				@LengthErr ,
				@LengthActual ,
				@DoffTimeSC ,
				@DoffTime ,
				@DoffTimeErr ,
				@DoffTimeActual ,
				@ProductQuantitySC ,
				@ProductQuantityKg ,
				@ProductQuantityKgActual ,
				@ProductQuantityDay ,
				@ProductQuantityDayActual ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC ,
				@SpecialMention  ,
				@SpecialMentionActual ,
                @UpdateBy ,
                GETDATE()
			);
        END

        SET @S4x1ConditionId = @@IDENTITY;

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


/*********** Script Update Date: 2023-10-15  ***********/
/****** Object:  StoredProcedure [dbo].[GetS4x2Conditions]    Script Date: 10/15/2023 12:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS4x2Conditions
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS4x2Conditions NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS4x2Conditions]
(
  @PCTwist1Id int = NULL
, @S4x2ConditionId int = NULL
)
AS
BEGIN
    SELECT  S4x2ConditionId ,
			PCTwist1Id ,
	        ProductCode,
            FullPackageModeSC,
            FullPackageMode,
            FullPackageModeActual,
            LengthSC,
            [Length],
            LengthErr,
            LengthActual,
            WindAngleShiftFunctionSC,
            WindAngleShiftFunction,
            WindAngleShiftFunctionActual,
            AmountOfDisturbSC,
            AmountOfDisturb,
            AmountOfDisturbActual,
            WindAngleSC,
            WindAngle,
            WindAngleActual,
            DistuebAccelerationTimeSC,
            DistuebAccelerationTime,
            DistuebAccelerationTimeActual,
            DistuebDccelerationTimeSC,
            DistuebDccelerationTime,
            DistuebDccelerationTimeActual,
            TensorSettingSC,
            TensorSetting,
            TensorSettingActual,
            FeedRollerSettingSC,
            FeedRollerSetting,
            FeedRollerSettingActual,
            BollonSettingSC,
            BollonSetting,
            BollonSettingActual,
            MethodOfKnotSC,
            MethodOfKnot,
            MethodOfKnotActual,
            WindQuantitySC,
            WindQuantity,
            WindQuantityErr,
            WindQuantityActual,
            DoffTimeSC,
            DoffTime,
            DoffTimeErr,
            DoffTimeActual,
            ProductQuantitySC,
            ProductQuantityKg,
            ProductQuantityKgActual,
            ProductQuantityDay,
            ProductQuantityDayActual,
            CalculatedTwistingNumberSC,
            CalculatedTwistingNumber,
            CalculatedTwistingNumberErr,
            CalculatedTwistingNumberActual,
            NumberOfSpindleRotationSC,
            NumberOfSpindleRotation,
            NumberOfSpindleRotationErr,
            NumberOfSpindleRotationActual,
            YarnSpeedSC,
            YarnSpeed,
            YarnSpeedErr,
            YarnSpeedActual,
            SpecialMentionSC,
            SpecialMention,
            SpecialMentionActual
            UpdateBy ,
            UpdateDate ,
            CheckedBy , 
            CheckedDate ,
            ApproveBy ,
            ApproveDate ,
            ShiftLeader , 
            ProductionManager
      FROM S4x2Condition
     WHERE PCTwist1Id = COALESCE(@PCTwist1Id, PCTwist1Id)
       AND S4x2ConditionId = COALESCE(@S4x2ConditionId, S4x2ConditionId)
     ORDER BY PCTwist1Id, S4x2ConditionId;

END

GO


/*********** Script Update Date: 2023-10-15  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS4x2Condition]    Script Date: 10/15/2023 12:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS4x2Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveS4x2Condition] (
    @PCTwist1Id int,
    @ProductCode nvarchar (30),
	@FullPackageModeSC bit ,
	@FullPackageMode nvarchar (100),
	@FullPackageModeActual nvarchar (100),
	@LengthSC bit ,
	@Length decimal (18, 3),
	@LengthErr decimal (18, 3),
	@LengthActual decimal (18, 3),
	@WindAngleShiftFunctionSC bit ,
	@WindAngleShiftFunction nvarchar (100),
	@WindAngleShiftFunctionActual nvarchar (100),
	@AmountOfDisturbSC bit ,
	@AmountOfDisturb nvarchar (100),
	@AmountOfDisturbActual nvarchar (100),
	@WindAngleSC bit ,
	@WindAngle decimal (18, 3),
	@WindAngleActual decimal (18, 3),
	@DistuebAccelerationTimeSC bit ,
	@DistuebAccelerationTime decimal (18, 3),
	@DistuebAccelerationTimeActual decimal (18, 3),
	@DistuebDccelerationTimeSC bit ,
	@DistuebDccelerationTime decimal (18, 3),
	@DistuebDccelerationTimeActual decimal (18, 3),
	@TensorSettingSC bit ,
	@TensorSetting nvarchar (100),
	@TensorSettingActual nvarchar (100),
	@FeedRollerSettingSC bit ,
	@FeedRollerSetting nvarchar (100),
	@FeedRollerSettingActual nvarchar (100),
	@BollonSettingSC bit ,
	@BollonSetting nvarchar (100),
	@BollonSettingActual nvarchar (100),
	@MethodOfKnotSC bit ,
	@MethodOfKnot nvarchar (100),
	@MethodOfKnotActual nvarchar (100),
	@WindQuantitySC bit ,
	@WindQuantity decimal (18, 3),
	@WindQuantityErr decimal (18, 3),
	@WindQuantityActual decimal (18, 3),
	@DoffTimeSC bit ,
	@DoffTime decimal (18, 3),
	@DoffTimeErr decimal (18, 3),
	@DoffTimeActual decimal (18, 3),
	@ProductQuantitySC bit ,
	@ProductQuantityKg decimal (18, 3),
	@ProductQuantityKgActual decimal (18, 3),
	@ProductQuantityDay decimal (18, 3),
	@ProductQuantityDayActual decimal (18, 3),
	@CalculatedTwistingNumberSC bit ,
	@CalculatedTwistingNumber decimal (18, 3),
	@CalculatedTwistingNumberErr decimal (18, 3),
	@CalculatedTwistingNumberActual decimal (18, 3),
	@NumberOfSpindleRotationSC bit ,
	@NumberOfSpindleRotation decimal (18, 3),
	@NumberOfSpindleRotationErr decimal (18, 3),
	@NumberOfSpindleRotationActual decimal (18, 3),
	@YarnSpeedSC bit ,
	@YarnSpeed decimal (18, 3),
	@YarnSpeedErr decimal (18, 3),
	@YarnSpeedActual decimal (18, 3),
	@SpecialMentionSC bit ,
	@SpecialMention nvarchar (100),
	@SpecialMentionActual nvarchar (100) , 
    @UpdateBy nvarchar(100) , 
    @S4x2ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S4x2Condition WHERE S4x2ConditionId = @S4x2ConditionId)
        BEGIN
            UPDATE S4x2Condition
               SET FullPackageModeSC = @FullPackageModeSC ,
				FullPackageMode = @FullPackageMode ,
				FullPackageModeActual = @FullPackageModeActual ,
				LengthSC = @LengthSC ,
				[Length] = @Length ,
				LengthErr = @LengthErr ,
				LengthActual = @LengthActual ,
				WindAngleShiftFunctionSC = @WindAngleShiftFunctionSC ,
				WindAngleShiftFunction = @WindAngleShiftFunction ,
				WindAngleShiftFunctionActual = @WindAngleShiftFunctionActual ,
				AmountOfDisturbSC = @AmountOfDisturbSC ,
				AmountOfDisturb = @AmountOfDisturb ,
				AmountOfDisturbActual = @AmountOfDisturbActual ,
				WindAngleSC = @WindAngleSC ,
				WindAngle = @WindAngle ,
				WindAngleActual = @WindAngleActual ,
				DistuebAccelerationTimeSC = @DistuebAccelerationTimeSC ,
				DistuebAccelerationTime = @DistuebAccelerationTime ,
				DistuebAccelerationTimeActual = @DistuebAccelerationTimeActual ,
				DistuebDccelerationTimeSC = @DistuebDccelerationTimeSC ,
				DistuebDccelerationTime = @DistuebDccelerationTime ,
				DistuebDccelerationTimeActual = @DistuebDccelerationTimeActual ,
				TensorSettingSC = @TensorSettingSC ,
				TensorSetting = @TensorSetting ,
				TensorSettingActual = @TensorSettingActual ,
				FeedRollerSettingSC = @FeedRollerSettingSC ,
				FeedRollerSetting = @FeedRollerSetting ,
				FeedRollerSettingActual = @FeedRollerSettingActual ,
				BollonSettingSC = @BollonSettingSC ,
				BollonSetting = @BollonSetting ,
				BollonSettingActual = @BollonSettingActual ,
				MethodOfKnotSC = @MethodOfKnotSC ,
				MethodOfKnot = @MethodOfKnot ,
				MethodOfKnotActual = @MethodOfKnotActual ,
				WindQuantitySC = @WindQuantitySC ,
				WindQuantity = @WindQuantity ,
				WindQuantityErr = @WindQuantityErr ,
				WindQuantityActual = @WindQuantityActual ,
				DoffTimeSC = @DoffTimeSC ,
				DoffTime = @DoffTime ,
				DoffTimeErr = @DoffTimeErr ,
				DoffTimeActual = @DoffTimeActual ,
				ProductQuantitySC = @ProductQuantitySC ,
				ProductQuantityKg = @ProductQuantityKg ,
				ProductQuantityKgActual = @ProductQuantityKgActual ,
				ProductQuantityDay = @ProductQuantityDay ,
				ProductQuantityDayActual = @ProductQuantityDayActual ,
				CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber = @CalculatedTwistingNumber ,
				CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
				CalculatedTwistingNumberActual = @CalculatedTwistingNumberActual ,
				NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation = @NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
				NumberOfSpindleRotationActual = @NumberOfSpindleRotationActual ,
				YarnSpeedSC = @YarnSpeedSC ,
				YarnSpeed = @YarnSpeed ,
				YarnSpeedErr = @YarnSpeedErr ,
				YarnSpeedActual = @YarnSpeedActual ,
				SpecialMentionSC = @SpecialMentionSC ,
				SpecialMention = @SpecialMention ,
				SpecialMentionActual = @SpecialMentionActual,
                UpdateBy = @UpdateBy ,
                UpdateDate = GETDATE()
             WHERE S4x2ConditionId = @S4x2ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S4x2Condition
		    (
                ProductCode,
				FullPackageModeSC,
				FullPackageMode,
				FullPackageModeActual,
				LengthSC,
				[Length],
				LengthErr,
				LengthActual,
				WindAngleShiftFunctionSC,
				WindAngleShiftFunction,
				WindAngleShiftFunctionActual,
				AmountOfDisturbSC,
				AmountOfDisturb,
				AmountOfDisturbActual,
				WindAngleSC,
				WindAngle,
				WindAngleActual,
				DistuebAccelerationTimeSC,
				DistuebAccelerationTime,
				DistuebAccelerationTimeActual,
				DistuebDccelerationTimeSC,
				DistuebDccelerationTime,
				DistuebDccelerationTimeActual,
				TensorSettingSC,
				TensorSetting,
				TensorSettingActual,
				FeedRollerSettingSC,
				FeedRollerSetting,
				FeedRollerSettingActual,
				BollonSettingSC,
				BollonSetting,
				BollonSettingActual,
				MethodOfKnotSC,
				MethodOfKnot,
				MethodOfKnotActual,
				WindQuantitySC,
				WindQuantity,
				WindQuantityErr,
				WindQuantityActual,
				DoffTimeSC,
				DoffTime,
				DoffTimeErr,
				DoffTimeActual,
				ProductQuantitySC,
				ProductQuantityKg,
				ProductQuantityKgActual,
				ProductQuantityDay,
				ProductQuantityDayActual,
				CalculatedTwistingNumberSC,
				CalculatedTwistingNumber,
				CalculatedTwistingNumberErr,
				CalculatedTwistingNumberActual,
				NumberOfSpindleRotationSC,
				NumberOfSpindleRotation,
				NumberOfSpindleRotationErr,
				NumberOfSpindleRotationActual,
				YarnSpeedSC,
				YarnSpeed,
				YarnSpeedErr,
				YarnSpeedActual,
				SpecialMentionSC,
				SpecialMention,
				SpecialMentionActual ,
                UpdateBy ,
                UpdateDate
			)
			VALUES
			(
                @ProductCode ,
				@FullPackageModeSC  ,
				@FullPackageMode ,
				@FullPackageModeActual ,
				@LengthSC  ,
				@Length ,
				@LengthErr ,
				@LengthActual ,
				@WindAngleShiftFunctionSC  ,
				@WindAngleShiftFunction ,
				@WindAngleShiftFunctionActual ,
				@AmountOfDisturbSC  ,
				@AmountOfDisturb ,
				@AmountOfDisturbActual ,
				@WindAngleSC  ,
				@WindAngle ,
				@WindAngleActual ,
				@DistuebAccelerationTimeSC  ,
				@DistuebAccelerationTime ,
				@DistuebAccelerationTimeActual ,
				@DistuebDccelerationTimeSC  ,
				@DistuebDccelerationTime ,
				@DistuebDccelerationTimeActual ,
				@TensorSettingSC  ,
				@TensorSetting ,
				@TensorSettingActual ,
				@FeedRollerSettingSC  ,
				@FeedRollerSetting ,
				@FeedRollerSettingActual ,
				@BollonSettingSC  ,
				@BollonSetting ,
				@BollonSettingActual ,
				@MethodOfKnotSC  ,
				@MethodOfKnot ,
				@MethodOfKnotActual ,
				@WindQuantitySC  ,
				@WindQuantity ,
				@WindQuantityErr ,
				@WindQuantityActual ,
				@DoffTimeSC  ,
				@DoffTime ,
				@DoffTimeErr ,
				@DoffTimeActual ,
				@ProductQuantitySC  ,
				@ProductQuantityKg ,
				@ProductQuantityKgActual ,
				@ProductQuantityDay ,
				@ProductQuantityDayActual ,
				@CalculatedTwistingNumberSC  ,
				@CalculatedTwistingNumber ,
				@CalculatedTwistingNumberErr ,
				@CalculatedTwistingNumberActual ,
				@NumberOfSpindleRotationSC  ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@NumberOfSpindleRotationActual ,
				@YarnSpeedSC  ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@YarnSpeedActual ,
				@SpecialMentionSC  ,
				@SpecialMention ,
				@SpecialMentionActual ,
                @UpdateBy ,
                GETDATE()
			);
        END

        SET @S4x2ConditionId = @@IDENTITY;

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

