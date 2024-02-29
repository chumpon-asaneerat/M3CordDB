/*********** Script Update Date: 2024-02-28  ***********/
ALTER TABLE S1ConditionStd ADD CalculatedTwistingNumberType nvarchar(5) DEFAULT 'S'
GO

ALTER TABLE S1Condition ADD CalculatedTwistingNumberType nvarchar(5) DEFAULT 'S'
GO

ALTER TABLE S1Condition ADD HasJoins bit NULL
GO

ALTER TABLE S1Condition ADD JoinOK bit NULL
GO

ALTER TABLE S8ProductionCondition ADD SofnerValue nvarchar(100) NULL
GO

ALTER TABLE S8ProductionCondition ADD DarwNipValue nvarchar(100) NULL
GO

ALTER TABLE S8x2ProductionCondition ADD SofnerValue nvarchar(100) NULL
GO

ALTER TABLE S8x2ProductionCondition ADD DarwNipValue nvarchar(100) NULL
GO

ALTER TABLE S8ProductionConditionItem ADD PositionCordCutCreelKG decimal(18, 3) NULL
GO
ALTER TABLE S8ProductionConditionItem ADD PositionCordCutCSKG decimal(18, 3) NULL
GO
ALTER TABLE S8ProductionConditionItem ADD PositionCordCutWinderKG decimal(18, 3) NULL
GO
ALTER TABLE S8ProductionConditionItem ADD PositionCordCutWasteYarnKG decimal(18, 3) NULL
GO


ALTER TABLE S8x2ProductionConditionItem ADD PositionCordCutCreelKG decimal(18, 3) NULL
GO
ALTER TABLE S8x2ProductionConditionItem ADD PositionCordCutCSKG decimal(18, 3) NULL
GO
ALTER TABLE S8x2ProductionConditionItem ADD PositionCordCutWinderKG decimal(18, 3) NULL
GO
ALTER TABLE S8x2ProductionConditionItem ADD PositionCordCutWasteYarnKG decimal(18, 3) NULL
GO

ALTER TABLE S8x2ProductionConditionItem ADD CheckTimeRecord datetime NULL
GO

ALTER TABLE S9AppearanceCheckSheetItem ADD SPUnusable bit NULL DEFAULT 0
GO

UPDATE S9AppearanceCheckSheetItem SET SPUnusable = 0;
GO



/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  View [dbo].[S8ProductionConditionView]    Script Date: 2/29/2024 5:17:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[S8ProductionConditionView]
AS
    SELECT A.S8ConditionId
	     , A.DIPPCId
	     , A.RecordDate
         , A.ProcessHS 
         , A.ProcessDIP 
         , B.CustomerName
		 , A.[Counter]
		 , A.CounterErr
		 , B.CordStructure
         , B.ItemYarn
		 , A.ProductCode
		 , A.LotNo
		 , A.Bath1SolutionName
		 , A.Bath1NipFront
		 , A.Bath1NipBack
		 , A.Bath1NipBackErr
		 , A.Bath2SolutionName
		 , A.Bath2NipFront
		 , A.Bath2NipBack
		 , A.Bath2NipBackErr
		 , A.Sofner
		 , A.SofnerValue
		 , A.DarwNip
		 , A.DarwNipValue
		 , A.PaperTubeColorUse
		 , A.TensionD
		 , A.TensionH
		 , A.TensionN
		 , A.TensionWinder
		 , A.GasBefore
		 , A.GasAfter
		 , A.GasTotal
		 , A.CoolingWarterBefore
		 , A.CoolingWarterAfter
		 , A.CoolingWarterTotal
		 , A.AirPressureBefore
		 , A.AirPressureAfter
		 , A.AirPressureTotal
		 , A.Bath1Before
		 , A.Bath1After
		 , A.Bath1WPU
		 , A.Bath2Before
		 , A.Bath2After
		 , A.Bath2WPU
		 , A.TempDZone1
		 , A.TempDZone2
		 , A.TempDZone3
		 , A.TempDZone4
		 , A.TempDZone5
		 , A.TempDZone6
		 , A.TempHNZone1
		 , A.TempHNZone2
		 , A.TempHNZone3
		 , A.TempHNZone4
		 , A.TempHNZone5
		 , A.TempHNZone6
		 , A.SectionHead
		 , A.SectionManager 
      FROM S8ProductionCondition A, DIPPCCardView B
	 WHERE A.DIPPCId = B.DIPPCId



GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  View [dbo].[S8x2ProductionConditionView]    Script Date: 2/29/2024 5:18:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[S8x2ProductionConditionView] AS
    SELECT A.S8ConditionId
        , A.DIPPCId
        , A.RecordDate
        , A.ProcessHS
        , A.ProcessDIP
        , B.CustomerName
        , A.Counter
        , A.CounterErr
        , B.CordStructure
        , B.ItemYarn
        , A.ProductCode
        , A.LotNo
        , A.Bath1SolutionName
        , A.Bath1NipFront
        , A.Bath1NipBack
        , A.Bath1NipBackErr
        , A.Bath2SolutionName
        , A.Bath2NipFront
        , A.Bath2NipBack
        , A.Bath2NipBackErr
        , A.Sofner
        , A.SofnerValue
        , A.DarwNip
        , A.DarwNipValue
        , A.PaperTubeColorUse
        , A.TensionD
        , A.TensionH
        , A.TensionN
        , A.TensionWinder
        , A.GasBefore
        , A.GasAfter
        , A.GasTotal
        , A.CoolingWarterBefore
        , A.CoolingWarterAfter
        , A.CoolingWarterTotal
        , A.AirPressureBefore
        , A.AirPressureAfter
        , A.AirPressureTotal
        , A.Bath1Before
        , A.Bath1After
        , A.Bath1WPU
        , A.Bath2Before
        , A.Bath2After
        , A.Bath2WPU
        , A.TempDZone1
        , A.TempDZone2
        , A.TempDZone3
        , A.TempDZone4
        , A.TempDZone5
        , A.TempDZone6
        , A.TempDZone7
        , A.TempDZone8
        , A.TempDZone9
        , A.TempDZone10
        , A.TempDZone11
        , A.TempDZone12
        , A.TempDZone13
        , A.TempDZone14
        , A.TempDZone15
        , A.TempDZoneAvg
        , A.TempHNZone1
        , A.TempHNZone2
        , A.TempHNZone3
        , A.TempHNZone4
        , A.TempHNZone5
        , A.TempHNZone6
        , A.TempHNZone7
        , A.TempHNZone8
        , A.TempHNZone9
        , A.TempHNZone10
        , A.TempHNZone11
        , A.TempHNZone12
        , A.TempHNZone13
        , A.TempHNZone14
        , A.TempHNZone15
        , A.TempHNZoneAvg
        , A.SectionHead
        , A.SectionManager
     FROM S8x2ProductionCondition AS A
    INNER JOIN dbo.DIPPCCardView AS B ON A.DIPPCId = B.DIPPCId 
    

GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[GetS1ConditionStd]    Script Date: 2/28/2024 13:13:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS1ConditionStd
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetS1ConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
			RingDiameterSC ,
			RingDiameter ,
			TwistChangeGearSC ,
			TwistChangeGearI ,
			TwistChangeGearJ ,
			TwistChangeGearK ,
			LifterChangeGearSC ,
			LifterChangeGearA ,
			LifterChangeGearB ,
			OuterDiameterSC ,
			OuterDiameter ,
			TravellerNoSC ,
			TravellerNo ,
			CouterUnitSC ,
			CouterUnit ,
			CouterUnitErr ,
			CouterUnit2SC ,
			CouterUnit2 ,
			CouterUnit2Err ,
			CouterWeightSC ,
			CouterWeight ,
			CouterWeightErr ,
			CouterWeight2SC ,
			CouterWeight2 ,
			CouterWeight2Err ,
			CounterSystemSC ,
			CounterSystem ,
			SenserYarnBreakSC ,
			SenserYarnBreak ,
			CalculatedTwistingNumberSC ,
			CalculatedTwistingNumber ,
            CalculatedTwistingNumberType ,
			CalculatedTwistingNumberErr ,
			NumberOfSpindleRotationSC ,
			NumberOfSpindleRotation ,
			NumberOfSpindleRotationErr ,
			YarnSpeedSC ,
			YarnSpeed ,
			YarnSpeedErr ,
			SpecialMentionSC ,
			SpecialMention 
     FROM S1ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[GetS1Conditions]    Script Date: 2/28/2024 13:14:22 ******/
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
ALTER PROCEDURE [dbo].[GetS1Conditions]
(
  @PCTwist1Id int = NULL
, @S1ConditionId int = NULL
)
AS
BEGIN
    SELECT DISTINCT
	        A.S1ConditionId ,
			A.PCTwist1Id ,
	        A.ProductCode ,
			A.RingDiameterSC ,
			A.RingDiameter ,
			A.RingDiameterActual ,
			A.TwistChangeGearSC ,
			A.TwistChangeGearI ,
			A.TwistChangeGearIActual ,
			A.TwistChangeGearJ ,
			A.TwistChangeGearJActual ,
			A.TwistChangeGearK ,
			A.TwistChangeGearKActual ,
			A.LifterChangeGearSC ,
			A.LifterChangeGearA ,
			A.LifterChangeGearAActual ,
			A.LifterChangeGearB ,
			A.LifterChangeGearBActual ,
			A.OuterDiameterSC ,
			A.OuterDiameter ,
			A.OuterDiameterActual ,
			A.TravellerNoSC ,
			A.TravellerNo ,
			A.TravellerNoActual ,
			A.CouterUnitSC ,
			A.CouterUnit ,
			A.CouterUnitErr ,
			A.CouterUnitActual ,
			A.CouterUnit2SC ,
			A.CouterUnit2 ,
			A.CouterUnit2Err ,
			A.CouterUnit2Actual ,
			A.CouterWeightSC ,
			A.CouterWeight ,
			A.CouterWeightErr ,
			A.CouterWeightActual ,
			A.CouterWeight2SC ,
			A.CouterWeight2 ,
			A.CouterWeight2Actual ,
			A.CouterWeight2Err ,
			A.CounterSystemSC ,
			A.CounterSystem ,
			A.CounterSystemActual ,
			A.SenserYarnBreakSC ,
			A.SenserYarnBreak ,
			A.SenserYarnBreakActual ,
			A.CalculatedTwistingNumberSC ,
			A.CalculatedTwistingNumber ,
            A.CalculatedTwistingNumberType ,
			A.CalculatedTwistingNumberErr ,
			A.CalculatedTwistingNumberActual ,
			A.NumberOfSpindleRotationSC ,
			A.NumberOfSpindleRotation ,
			A.NumberOfSpindleRotationErr ,
			A.NumberOfSpindleRotationActual ,
			A.YarnSpeedSC ,
			A.YarnSpeed ,
			A.YarnSpeedErr ,
			A.YarnSpeedActual ,
			A.SpecialMentionSC ,
			A.SpecialMention ,
            A.HasJoins ,
            A.JoinOK ,
			A.SpecialMentionActual ,
            A.UpdateBy ,
            A.UpdateDate ,
            A.CheckedBy , 
            A.CheckedDate ,
            A.ApproveBy ,
            A.ApproveDate ,
            A.ShiftLeader , 
            A.ProductionManager ,
			B.MCCode ,
			B.ProductLotNo ,
			B.CustomerName ,
			B.ProductName ,
			B.ItemYarn ,
			B.CordStructure ,
			B.TreatRoute ,
			B.TwistSpec ,
			B.PCDate ,
		    B.IssueDate ,
			B.IssueBy 
     FROM S1Condition A, PCTwist1View B
     WHERE A.PCTwist1Id = B.PCTwist1Id
	   AND A.PCTwist1Id = COALESCE(@PCTwist1Id, A.PCTwist1Id)
       AND A.S1ConditionId = COALESCE(@S1ConditionId, A.S1ConditionId)
     ORDER BY A.PCTwist1Id, A.S1ConditionId;

END

GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS1ConditionStd]    Script Date: 2/28/2024 13:16:05 ******/
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
ALTER PROCEDURE [dbo].[SaveS1ConditionStd] (
  @ProductCode nvarchar(30),
	@RingDiameterSC bit,
	@RingDiameter nvarchar(100),
	@TwistChangeGearSC bit,
	@TwistChangeGearI decimal(18, 3),
	@TwistChangeGearJ decimal(18, 3),
	@TwistChangeGearK decimal(18, 3),
	@LifterChangeGearSC bit,
	@LifterChangeGearA decimal(18, 3),
	@LifterChangeGearB decimal(18, 3),
	@OuterDiameterSC bit,
	@OuterDiameter decimal(18, 3),
	@TravellerNoSC bit,
	@TravellerNo nvarchar(100),
	@CouterUnitSC bit,
	@CouterUnit decimal(18, 3),
	@CouterUnitErr decimal(18, 3),
	@CouterUnit2SC bit,
	@CouterUnit2 decimal(18, 3),
	@CouterUnit2Err decimal(18, 3),
	@CouterWeightSC bit,
	@CouterWeight decimal(18, 3),
	@CouterWeightErr decimal(18, 3),
	@CouterWeight2SC bit,
	@CouterWeight2 decimal(18, 3),
	@CouterWeight2Err decimal(18, 3),
	@CounterSystemSC bit,
	@CounterSystem nvarchar(100),
	@SenserYarnBreakSC bit,
	@SenserYarnBreak nvarchar(100),
	@CalculatedTwistingNumberSC bit,
	@CalculatedTwistingNumber decimal(18, 3),
    @CalculatedTwistingNumberType nvarchar(5),
	@CalculatedTwistingNumberErr decimal(18, 3),
	@NumberOfSpindleRotationSC bit,
	@NumberOfSpindleRotation decimal(18, 3),
	@NumberOfSpindleRotationErr decimal(18, 3),
	@YarnSpeedSC bit,
	@YarnSpeed decimal(18, 3),
	@YarnSpeedErr decimal(18, 3),
	@SpecialMentionSC bit,
	@SpecialMention nvarchar(100)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S1ConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S1ConditionStd 
               SET RingDiameterSC = @RingDiameterSC  ,
					RingDiameter = @RingDiameter ,
					TwistChangeGearSC = @TwistChangeGearSC ,
					TwistChangeGearI = @TwistChangeGearI ,
					TwistChangeGearJ = @TwistChangeGearJ ,
					TwistChangeGearK = @TwistChangeGearK ,
					LifterChangeGearSC = @LifterChangeGearSC ,
					LifterChangeGearA = @LifterChangeGearA ,
					LifterChangeGearB = @LifterChangeGearB ,
					OuterDiameterSC = @OuterDiameterSC ,
					OuterDiameter = @OuterDiameter ,
					TravellerNoSC = @TravellerNoSC ,
					TravellerNo = @TravellerNo ,
					CouterUnitSC = @CouterUnitSC ,
					CouterUnit = @CouterUnit ,
					CouterUnitErr = @CouterUnitErr ,
					CouterUnit2SC = @CouterUnit2SC ,
					CouterUnit2 = @CouterUnit2 ,
					CouterUnit2Err = @CouterUnit2Err ,
					CouterWeightSC = @CouterWeightSC ,
					CouterWeight = @CouterWeight ,
					CouterWeightErr = @CouterWeightErr ,
					CouterWeight2SC = @CouterWeight2SC ,
					CouterWeight2 = @CouterWeight2 ,
					CouterWeight2Err = @CouterWeight2Err ,
					CounterSystemSC = @CounterSystemSC ,
					CounterSystem = @CounterSystem ,
					SenserYarnBreakSC = @SenserYarnBreakSC ,
					SenserYarnBreak = @SenserYarnBreak ,
					CalculatedTwistingNumberSC = @CalculatedTwistingNumberSC ,
					CalculatedTwistingNumber = @CalculatedTwistingNumber ,
                    CalculatedTwistingNumberType = @CalculatedTwistingNumberType ,
					CalculatedTwistingNumberErr = @CalculatedTwistingNumberErr ,
					NumberOfSpindleRotationSC = @NumberOfSpindleRotationSC ,
					NumberOfSpindleRotation = @NumberOfSpindleRotation ,
					NumberOfSpindleRotationErr = @NumberOfSpindleRotationErr ,
					YarnSpeedSC = @YarnSpeedSC ,
					YarnSpeed = @YarnSpeed ,
					YarnSpeedErr = @YarnSpeedErr ,
					SpecialMentionSC = @SpecialMentionSC ,
					SpecialMention = @SpecialMention 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S1ConditionStd
		    (
                ProductCode ,
				RingDiameterSC ,
				RingDiameter ,
				TwistChangeGearSC ,
				TwistChangeGearI ,
				TwistChangeGearJ ,
				TwistChangeGearK ,
				LifterChangeGearSC ,
				LifterChangeGearA ,
				LifterChangeGearB ,
				OuterDiameterSC ,
				OuterDiameter ,
				TravellerNoSC ,
				TravellerNo ,
				CouterUnitSC ,
				CouterUnit ,
				CouterUnitErr ,
				CouterUnit2SC ,
				CouterUnit2 ,
				CouterUnit2Err ,
				CouterWeightSC ,
				CouterWeight ,
				CouterWeightErr ,
				CouterWeight2SC ,
				CouterWeight2 ,
				CouterWeight2Err ,
				CounterSystemSC ,
				CounterSystem ,
				SenserYarnBreakSC ,
				SenserYarnBreak ,
				CalculatedTwistingNumberSC ,
				CalculatedTwistingNumber ,
                CalculatedTwistingNumberType ,
				CalculatedTwistingNumberErr ,
				NumberOfSpindleRotationSC ,
				NumberOfSpindleRotation ,
				NumberOfSpindleRotationErr ,
				YarnSpeedSC ,
				YarnSpeed ,
				YarnSpeedErr ,
				SpecialMentionSC ,
				SpecialMention     
			)
			VALUES
			(
                @ProductCode ,
				@RingDiameterSC ,
				@RingDiameter ,
				@TwistChangeGearSC ,
				@TwistChangeGearI ,
				@TwistChangeGearJ ,
				@TwistChangeGearK ,
				@LifterChangeGearSC ,
				@LifterChangeGearA ,
				@LifterChangeGearB ,
				@OuterDiameterSC ,
				@OuterDiameter ,
				@TravellerNoSC ,
				@TravellerNo ,
				@CouterUnitSC ,
				@CouterUnit ,
				@CouterUnitErr ,
				@CouterUnit2SC ,
				@CouterUnit2 ,
				@CouterUnit2Err ,
				@CouterWeightSC ,
				@CouterWeight ,
				@CouterWeightErr ,
				@CouterWeight2SC ,
				@CouterWeight2 ,
				@CouterWeight2Err ,
				@CounterSystemSC ,
				@CounterSystem ,
				@SenserYarnBreakSC ,
				@SenserYarnBreak ,
				@CalculatedTwistingNumberSC ,
				@CalculatedTwistingNumber ,
                @CalculatedTwistingNumberType ,
				@CalculatedTwistingNumberErr ,
				@NumberOfSpindleRotationSC ,
				@NumberOfSpindleRotation ,
				@NumberOfSpindleRotationErr ,
				@YarnSpeedSC ,
				@YarnSpeed ,
				@YarnSpeedErr ,
				@SpecialMentionSC ,
				@SpecialMention 
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


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS1Condition]    Script Date: 2/28/2024 13:17:07 ******/
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
ALTER PROCEDURE [dbo].[SaveS1Condition] (
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
    @CalculatedTwistingNumberType nvarchar(5),
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
    @HasJoins bit,
    @JoinOK bit,
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
               SET  PCTwist1Id = @PCTwist1Id ,
                    ProductCode = @ProductCode ,
                    RingDiameterSC = @RingDiameterSC ,
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
                    CalculatedTwistingNumberType = @CalculatedTwistingNumberType ,
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
                    HasJoins = @HasJoins ,
                    JoinOK = JoinOK ,
                    UpdateBy = @UpdateBy ,
                    UpdateDate = GETDATE()
             WHERE S1ConditionId = @S1ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S1Condition
		    (
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
                CalculatedTwistingNumberType , 
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
                HasJoins ,
                JoinOK ,
                UpdateBy ,
                UpdateDate
			)
			VALUES
			(
                @PCTwist1Id ,
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
                @CalculatedTwistingNumberType , 
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
                @HasJoins ,
                @JoinOK ,
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


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[GetRawMaterialSummaries]    Script Date: 2/29/2024 4:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSummaries
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetRawMaterialSummaries NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetRawMaterialSummaries]
(
  @PCTwist1Id int
)
AS
BEGIN
		SELECT DISTINCT
		       A.Twist1LoadId
			 , A.PCTwist1Id
		     , A.ProductionDate
		     , A.ItemYarn
			 , B.PalletNo
			 , B.TraceNo
			 , COUNT(B.TraceNo) AS InputCH
			 , D.KgPerCH
			 , COUNT(B.TraceNo) * D.KgPerCH AS InputKG
			 , MIN(B.SPNo) AS SPNoMin
			 , MAX(B.SPNo) AS SPNoMax
		     , A.DoffNo
             , A.Keiba
             , A.Traverse
             , A.Crossing
             , A.ScrapeTube
             , A.Form
             , A.Stain
			 , A.ShiftName
             , A.UserName
             , A.Chief
             , A.Remark
             , C.ProductLotNo
             , C.CustomerName
             , C.ProductName
             , C.CordStructure
             , C.TreatRoute
             , C.TwistSpec
             , C.PCDate
             , C.IssueDate
             , C.IssueBy 
        FROM Twist1LoadRecord A
		   , Twist1LoadRecordItem B
		   , PCTwist1View C
		   , G4YarnView D
       WHERE A.PCTwist1Id = C.PCTwist1Id
	     AND B.Twist1LoadId = A.Twist1LoadId
		 AND B.PalletNo = D.PalletNo
		 AND B.TraceNo = D.TraceNo
         AND A.PCTwist1Id =  @PCTwist1Id
       GROUP BY A.Twist1LoadId
              , A.PCTwist1Id
		      , A.ProductionDate
			  , A.ItemYarn
	          , B.PalletNo
			  , B.TraceNo
			  , D.KgPerCH
		      , A.DoffNo
              , A.Keiba
              , A.Traverse
              , A.Crossing
              , A.ScrapeTube
              , A.Form
              , A.Stain
			  , A.ShiftName
              , A.UserName
              , A.Chief
              , A.Remark
              , C.ProductLotNo
              , C.CustomerName
              , C.ProductName
              , C.CordStructure
              , C.TreatRoute
              , C.TwistSpec
              , C.PCDate
              , C.IssueDate
              , C.IssueBy 

END

GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditions]    Script Date: 2/29/2024 5:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetS8ProductionConditions]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT S8ConditionId
         , DIPPCId
         , RecordDate
         , ProcessHS 
         , ProcessDIP 
         , CustomerName
		 , [Counter]
		 , CounterErr
		 , CordStructure
         , ItemYarn
		 , ProductCode
		 , LotNo
		 , Bath1SolutionName
		 , Bath1NipFront
		 , Bath1NipBack
		 , Bath1NipBackErr
		 , Bath2SolutionName
		 , Bath2NipFront
		 , Bath2NipBack
		 , Bath2NipBackErr
		 , Sofner
         , SofnerValue
		 , DarwNip
         , DarwNipValue
		 , PaperTubeColorUse
		 , TensionD
		 , TensionH
		 , TensionN
		 , TensionWinder
		 , GasBefore
		 , GasAfter
		 , GasTotal
		 , CoolingWarterBefore
		 , CoolingWarterAfter
		 , CoolingWarterTotal
		 , AirPressureBefore
		 , AirPressureAfter
		 , AirPressureTotal
		 , Bath1Before
		 , Bath1After
		 , Bath1WPU
		 , Bath2Before
		 , Bath2After
		 , Bath2WPU
		 , TempDZone1
		 , TempDZone2
		 , TempDZone3
		 , TempDZone4
		 , TempDZone5
		 , TempDZone6
		 , TempHNZone1
		 , TempHNZone2
		 , TempHNZone3
		 , TempHNZone4
		 , TempHNZone5
		 , TempHNZone6
		 , SectionHead
		 , SectionManager 
      FROM S8ProductionConditionView
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
	   AND LotNo IS NOT NULL
     ORDER BY RecordDate;

END;

GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8x2ProductionConditions]    Script Date: 2/29/2024 5:16:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetS8x2ProductionConditions]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT S8ConditionId
         , DIPPCId
         , RecordDate
		 , CustomerName
		 , CordStructure
         , ProcessHS 
         , ProcessDIP 
		 , [Counter]
		 , CounterErr
		 , CordStructure
         , ItemYarn
		 , ProductCode
		 , LotNo
		 , Bath1SolutionName
		 , Bath1NipFront
		 , Bath1NipBack
		 , Bath1NipBackErr
		 , Bath2SolutionName
		 , Bath2NipFront
		 , Bath2NipBack
		 , Bath2NipBackErr
		 , Sofner
         , SofnerValue
		 , DarwNip
		 , DarwNipValue
		 , PaperTubeColorUse
		 , TensionD
		 , TensionH
		 , TensionN
		 , TensionWinder
		 , GasBefore
		 , GasAfter
		 , GasTotal
		 , CoolingWarterBefore
		 , CoolingWarterAfter
		 , CoolingWarterTotal
		 , AirPressureBefore
		 , AirPressureAfter
		 , AirPressureTotal
		 , Bath1Before
		 , Bath1After
		 , Bath1WPU
		 , Bath2Before
		 , Bath2After
		 , Bath2WPU
		 , TempDZone1
		 , TempDZone2
		 , TempDZone3
		 , TempDZone4
		 , TempDZone5
		 , TempDZone6
		 , TempDZone7
		 , TempDZone8
		 , TempDZone9
		 , TempDZone10
		 , TempDZone11
		 , TempDZone12
		 , TempDZone13
		 , TempDZone14
		 , TempDZone15
		 , TempDZoneAvg
		 , TempHNZone1
		 , TempHNZone2
		 , TempHNZone3
		 , TempHNZone4
		 , TempHNZone5
		 , TempHNZone6
		 , TempHNZone7
		 , TempHNZone8
		 , TempHNZone9
		 , TempHNZone10
		 , TempHNZone11
		 , TempHNZone12
		 , TempHNZone13
		 , TempHNZone14
		 , TempHNZone15
		 , TempHNZoneAvg
		 , SectionHead
		 , SectionManager 
      FROM S8x2ProductionConditionView
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
	   AND LotNo IS NOT NULL
     ORDER BY RecordDate;

END;

GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8ProductionCondition]    Script Date: 2/29/2024 5:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8ProductionCondition] (
  @DIPPCId int
, @RecordDate datetime 
, @ProcessHS bit 
, @ProcessDIP bit 
, @Counter decimal (18, 3)
, @CounterErr decimal (18, 3)
, @ProductCode nvarchar (30)
, @LotNo nvarchar (30)
, @Bath1SolutionName nvarchar (100)
, @Bath1NipFront decimal (18, 3)
, @Bath1NipBack decimal (18, 3)
, @Bath1NipBackErr decimal (18, 3)
, @Bath2SolutionName nvarchar (100)
, @Bath2NipFront decimal (18, 3)
, @Bath2NipBack decimal (18, 3)
, @Bath2NipBackErr decimal (18, 3)
, @Sofner bit 
, @SofnerValue nvarchar(100)  
, @DarwNip bit 
, @DarwNipValue nvarchar(100)  
, @PaperTubeColorUse nvarchar (100)
, @TensionD decimal (18, 3)
, @TensionH decimal (18, 3)
, @TensionN decimal (18, 3)
, @TensionWinder nvarchar (100)
, @GasBefore decimal (18, 3)
, @GasAfter decimal (18, 3)
, @GasTotal decimal (18, 3)
, @CoolingWarterBefore decimal (18, 3)
, @CoolingWarterAfter decimal (18, 3)
, @CoolingWarterTotal decimal (18, 3)
, @AirPressureBefore decimal (18, 3)
, @AirPressureAfter decimal (18, 3)
, @AirPressureTotal decimal (18, 3)
, @Bath1Before decimal (18, 3)
, @Bath1After decimal (18, 3)
, @Bath1WPU decimal (18, 3)
, @Bath2Before decimal (18, 3)
, @Bath2After decimal (18, 3)
, @Bath2WPU decimal (18, 3)
, @TempDZone1 decimal (18, 3)
, @TempDZone2 decimal (18, 3)
, @TempDZone3 decimal (18, 3)
, @TempDZone4 decimal (18, 3)
, @TempDZone5 decimal (18, 3)
, @TempDZone6 decimal (18, 3)
, @TempHNZone1 decimal (18, 3)
, @TempHNZone2 decimal (18, 3)
, @TempHNZone3 decimal (18, 3)
, @TempHNZone4 decimal (18, 3)
, @TempHNZone5 decimal (18, 3)
, @TempHNZone6 decimal (18, 3)
, @SectionHead nvarchar (100)
, @SectionManager nvarchar (100) 
, @S8ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8ProductionCondition 
                    WHERE S8ConditionId = @S8ConditionId)
        BEGIN
            UPDATE S8ProductionCondition 
               SET DIPPCId = @DIPPCId
                 , RecordDate = @RecordDate 
				 , ProcessHS = @ProcessHS 
				 , ProcessDIP = @ProcessDIP 
				 , [Counter] = @Counter 
				 , CounterErr = @CounterErr 
				 , ProductCode = @ProductCode 
				 , LotNo = @LotNo 
				 , Bath1SolutionName = @Bath1SolutionName 
				 , Bath1NipFront = @Bath1NipFront 
				 , Bath1NipBack = @Bath1NipBack 
				 , Bath1NipBackErr = @Bath1NipBackErr 
				 , Bath2SolutionName = @Bath2SolutionName 
				 , Bath2NipFront = @Bath2NipFront 
				 , Bath2NipBack = @Bath2NipBack 
				 , Bath2NipBackErr = @Bath2NipBackErr 
				 , Sofner = @Sofner 
				 , SofnerValue = @SofnerValue 
				 , DarwNip = @DarwNip 
				 , DarwNipValue = @DarwNipValue 
				 , PaperTubeColorUse = @PaperTubeColorUse 
				 , TensionD = @TensionD 
				 , TensionH = @TensionH 
				 , TensionN = @TensionN 
				 , TensionWinder = @TensionWinder 
				 , GasBefore = @GasBefore 
				 , GasAfter = @GasAfter 
				 , GasTotal = @GasTotal 
				 , CoolingWarterBefore = @CoolingWarterBefore 
				 , CoolingWarterAfter = @CoolingWarterAfter 
				 , CoolingWarterTotal = @CoolingWarterTotal 
				 , AirPressureBefore = @AirPressureBefore 
				 , AirPressureAfter = @AirPressureAfter 
				 , AirPressureTotal = @AirPressureTotal 
				 , Bath1Before = @Bath1Before 
				 , Bath1After = @Bath1After 
				 , Bath1WPU = @Bath1WPU 
				 , Bath2Before = @Bath2Before 
				 , Bath2After = @Bath2After 
				 , Bath2WPU = @Bath2WPU 
				 , TempDZone1 = @TempDZone1 
				 , TempDZone2 = @TempDZone2 
				 , TempDZone3 = @TempDZone3 
				 , TempDZone4 = @TempDZone4 
				 , TempDZone5 = @TempDZone5 
				 , TempDZone6 = @TempDZone6 
				 , TempHNZone1 = @TempHNZone1 
				 , TempHNZone2 = @TempHNZone2 
				 , TempHNZone3 = @TempHNZone3 
				 , TempHNZone4 = @TempHNZone4 
				 , TempHNZone5 = @TempHNZone5 
				 , TempHNZone6 = @TempHNZone6 
				 , SectionHead = @SectionHead 
				 , SectionManager = @SectionManager 
             WHERE S8ConditionId = @S8ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S8ProductionCondition
		    (
                  DIPPCId
				, RecordDate 
				, ProcessHS 
				, ProcessDIP 
				, [Counter] 
				, CounterErr 
				, ProductCode 
				, LotNo 
				, Bath1SolutionName 
				, Bath1NipFront 
				, Bath1NipBack 
				, Bath1NipBackErr 
				, Bath2SolutionName 
				, Bath2NipFront 
				, Bath2NipBack 
				, Bath2NipBackErr 
				, Sofner 
				, SofnerValue 
				, DarwNip 
				, DarwNipValue 
				, PaperTubeColorUse 
				, TensionD 
				, TensionH 
				, TensionN 
				, TensionWinder 
				, GasBefore 
				, GasAfter 
				, GasTotal 
				, CoolingWarterBefore 
				, CoolingWarterAfter 
				, CoolingWarterTotal 
				, AirPressureBefore 
				, AirPressureAfter 
				, AirPressureTotal 
				, Bath1Before 
				, Bath1After 
				, Bath1WPU 
				, Bath2Before 
				, Bath2After 
				, Bath2WPU 
				, TempDZone1 
				, TempDZone2 
				, TempDZone3 
				, TempDZone4 
				, TempDZone5 
				, TempDZone6 
				, TempHNZone1 
				, TempHNZone2 
				, TempHNZone3 
				, TempHNZone4 
				, TempHNZone5 
				, TempHNZone6 
				, SectionHead 
				, SectionManager
			)
			VALUES
			(
                  @DIPPCId
				, @RecordDate 
				, @ProcessHS 
				, @ProcessDIP 
				, @Counter 
				, @CounterErr 
				, @ProductCode 
				, @LotNo 
				, @Bath1SolutionName 
				, @Bath1NipFront 
				, @Bath1NipBack 
				, @Bath1NipBackErr 
				, @Bath2SolutionName 
				, @Bath2NipFront 
				, @Bath2NipBack 
				, @Bath2NipBackErr 
				, @Sofner 
				, @SofnerValue 
				, @DarwNip 
				, @DarwNipValue 
				, @PaperTubeColorUse 
				, @TensionD 
				, @TensionH 
				, @TensionN 
				, @TensionWinder 
				, @GasBefore 
				, @GasAfter 
				, @GasTotal 
				, @CoolingWarterBefore 
				, @CoolingWarterAfter 
				, @CoolingWarterTotal 
				, @AirPressureBefore 
				, @AirPressureAfter 
				, @AirPressureTotal 
				, @Bath1Before 
				, @Bath1After 
				, @Bath1WPU 
				, @Bath2Before 
				, @Bath2After 
				, @Bath2WPU 
				, @TempDZone1 
				, @TempDZone2 
				, @TempDZone3 
				, @TempDZone4 
				, @TempDZone5 
				, @TempDZone6 
				, @TempHNZone1 
				, @TempHNZone2 
				, @TempHNZone3 
				, @TempHNZone4 
				, @TempHNZone5 
				, @TempHNZone6 
				, @SectionHead 
				, @SectionManager
			);

            SET @S8ConditionId = @@IDENTITY;
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


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8x2ProductionCondition]    Script Date: 2/29/2024 5:23:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8x2ProductionCondition] (
  @DIPPCId int
, @RecordDate datetime 
, @ProcessHS bit 
, @ProcessDIP bit 
, @Counter decimal (18, 3)
, @CounterErr decimal (18, 3)
, @ProductCode nvarchar (30)
, @LotNo nvarchar (30)
, @Bath1SolutionName nvarchar (100)
, @Bath1NipFront decimal (18, 3)
, @Bath1NipBack decimal (18, 3)
, @Bath1NipBackErr decimal (18, 3)
, @Bath2SolutionName nvarchar (100)
, @Bath2NipFront decimal (18, 3)
, @Bath2NipBack decimal (18, 3)
, @Bath2NipBackErr decimal (18, 3)
, @Sofner bit 
, @SofnerValue nvarchar (100) 
, @DarwNip bit 
, @DarwNipValue nvarchar (100) 
, @PaperTubeColorUse nvarchar (100)
, @TensionD decimal (18, 3)
, @TensionH decimal (18, 3)
, @TensionN decimal (18, 3)
, @TensionWinder nvarchar (100)
, @GasBefore decimal (18, 3)
, @GasAfter decimal (18, 3)
, @GasTotal decimal (18, 3)
, @CoolingWarterBefore decimal (18, 3)
, @CoolingWarterAfter decimal (18, 3)
, @CoolingWarterTotal decimal (18, 3)
, @AirPressureBefore decimal (18, 3)
, @AirPressureAfter decimal (18, 3)
, @AirPressureTotal decimal (18, 3)
, @Bath1Before decimal (18, 3)
, @Bath1After decimal (18, 3)
, @Bath1WPU decimal (18, 3)
, @Bath2Before decimal (18, 3)
, @Bath2After decimal (18, 3)
, @Bath2WPU decimal (18, 3)
, @TempDZone1 decimal (18, 3)
, @TempDZone2 decimal (18, 3)
, @TempDZone3 decimal (18, 3)
, @TempDZone4 decimal (18, 3)
, @TempDZone5 decimal (18, 3)
, @TempDZone6 decimal (18, 3)

, @TempDZone7 decimal (18, 3)
, @TempDZone8 decimal (18, 3)
, @TempDZone9 decimal (18, 3)
, @TempDZone10 decimal (18, 3)
, @TempDZone11 decimal (18, 3)
, @TempDZone12 decimal (18, 3)
, @TempDZone13 decimal (18, 3)
, @TempDZone14 decimal (18, 3)
, @TempDZone15 decimal (18, 3)
, @TempDZoneAvg decimal (18, 3)

, @TempHNZone1 decimal (18, 3)
, @TempHNZone2 decimal (18, 3)
, @TempHNZone3 decimal (18, 3)
, @TempHNZone4 decimal (18, 3)
, @TempHNZone5 decimal (18, 3)
, @TempHNZone6 decimal (18, 3)

, @TempHNZone7 decimal (18, 3)
, @TempHNZone8 decimal (18, 3)
, @TempHNZone9 decimal (18, 3)
, @TempHNZone10 decimal (18, 3)
, @TempHNZone11 decimal (18, 3)
, @TempHNZone12 decimal (18, 3)
, @TempHNZone13 decimal (18, 3)
, @TempHNZone14 decimal (18, 3)
, @TempHNZone15 decimal (18, 3)
, @TempHNZoneAvg decimal (18, 3)

, @SectionHead nvarchar (100)
, @SectionManager nvarchar (100) 
, @S8ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2ProductionCondition 
                    WHERE S8ConditionId = @S8ConditionId)
        BEGIN
            UPDATE S8x2ProductionCondition 
               SET DIPPCId = @DIPPCId
                 , RecordDate = @RecordDate 
				 , ProcessHS = @ProcessHS 
				 , ProcessDIP = @ProcessDIP 
				 , [Counter] = @Counter 
				 , CounterErr = @CounterErr 
				 , ProductCode = @ProductCode 
				 , LotNo = @LotNo 
				 , Bath1SolutionName = @Bath1SolutionName 
				 , Bath1NipFront = @Bath1NipFront 
				 , Bath1NipBack = @Bath1NipBack 
				 , Bath1NipBackErr = @Bath1NipBackErr 
				 , Bath2SolutionName = @Bath2SolutionName 
				 , Bath2NipFront = @Bath2NipFront 
				 , Bath2NipBack = @Bath2NipBack 
				 , Bath2NipBackErr = @Bath2NipBackErr 
				 , Sofner = @Sofner 
				 , SofnerValue = @SofnerValue 
				 , DarwNip = @DarwNip 
				 , DarwNipValue = @DarwNipValue 
				 , PaperTubeColorUse = @PaperTubeColorUse 
				 , TensionD = @TensionD 
				 , TensionH = @TensionH 
				 , TensionN = @TensionN 
				 , TensionWinder = @TensionWinder 
				 , GasBefore = @GasBefore 
				 , GasAfter = @GasAfter 
				 , GasTotal = @GasTotal 
				 , CoolingWarterBefore = @CoolingWarterBefore 
				 , CoolingWarterAfter = @CoolingWarterAfter 
				 , CoolingWarterTotal = @CoolingWarterTotal 
				 , AirPressureBefore = @AirPressureBefore 
				 , AirPressureAfter = @AirPressureAfter 
				 , AirPressureTotal = @AirPressureTotal 
				 , Bath1Before = @Bath1Before 
				 , Bath1After = @Bath1After 
				 , Bath1WPU = @Bath1WPU 
				 , Bath2Before = @Bath2Before 
				 , Bath2After = @Bath2After 
				 , Bath2WPU = @Bath2WPU 
				 , TempDZone1 = @TempDZone1 
				 , TempDZone2 = @TempDZone2 
				 , TempDZone3 = @TempDZone3 
				 , TempDZone4 = @TempDZone4 
				 , TempDZone5 = @TempDZone5 
				 , TempDZone6 = @TempDZone6 

				 , TempDZone7 = @TempDZone7 
				 , TempDZone8 = @TempDZone8 
				 , TempDZone9 = @TempDZone9 
				 , TempDZone10 = @TempDZone10 
				 , TempDZone11 = @TempDZone11
				 , TempDZone12 = @TempDZone12
				 , TempDZone13 = @TempDZone13 
				 , TempDZone14 = @TempDZone14 
				 , TempDZone15 = @TempDZone15 
				 , TempDZoneAvg = @TempDZoneAvg 

				 , TempHNZone1 = @TempHNZone1 
				 , TempHNZone2 = @TempHNZone2 
				 , TempHNZone3 = @TempHNZone3 
				 , TempHNZone4 = @TempHNZone4 
				 , TempHNZone5 = @TempHNZone5 
				 , TempHNZone6 = @TempHNZone6 

				 , TempHNZone7 = @TempHNZone7 
				 , TempHNZone8 = @TempHNZone8 
				 , TempHNZone9 = @TempHNZone9 
				 , TempHNZone10 = @TempHNZone10 
				 , TempHNZone11 = @TempHNZone11
				 , TempHNZone12 = @TempHNZone12
				 , TempHNZone13 = @TempHNZone13 
				 , TempHNZone14 = @TempHNZone14
				 , TempHNZone15 = @TempHNZone15
				 , TempHNZoneAvg = @TempHNZoneAvg   

				 , SectionHead = @SectionHead 
				 , SectionManager = @SectionManager 
             WHERE S8ConditionId = @S8ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S8x2ProductionCondition
		    (
                  DIPPCId
				, RecordDate 
				, ProcessHS 
				, ProcessDIP 
				, [Counter] 
				, CounterErr 
				, ProductCode 
				, LotNo 
				, Bath1SolutionName 
				, Bath1NipFront 
				, Bath1NipBack 
				, Bath1NipBackErr 
				, Bath2SolutionName 
				, Bath2NipFront 
				, Bath2NipBack 
				, Bath2NipBackErr 
				, Sofner 
				, SofnerValue 
				, DarwNip 
				, DarwNipValue 
				, PaperTubeColorUse 
				, TensionD 
				, TensionH 
				, TensionN 
				, TensionWinder 
				, GasBefore 
				, GasAfter 
				, GasTotal 
				, CoolingWarterBefore 
				, CoolingWarterAfter 
				, CoolingWarterTotal 
				, AirPressureBefore 
				, AirPressureAfter 
				, AirPressureTotal 
				, Bath1Before 
				, Bath1After 
				, Bath1WPU 
				, Bath2Before 
				, Bath2After 
				, Bath2WPU 
				, TempDZone1 
				, TempDZone2 
				, TempDZone3 
				, TempDZone4 
				, TempDZone5 
				, TempDZone6 

				, TempDZone7 
				, TempDZone8
				, TempDZone9 
				, TempDZone10
				, TempDZone11
				, TempDZone12
				, TempDZone13
				, TempDZone14
				, TempDZone15
				, TempDZoneAvg 

				, TempHNZone1 
				, TempHNZone2 
				, TempHNZone3 
				, TempHNZone4 
				, TempHNZone5 
				, TempHNZone6 

				, TempHNZone7 
				, TempHNZone8 
				, TempHNZone9 
				, TempHNZone10 
				, TempHNZone11 
				, TempHNZone12 
				, TempHNZone13
				, TempHNZone14
				, TempHNZone15
				, TempHNZoneAvg  

				, SectionHead 
				, SectionManager
			)
			VALUES
			(
                  @DIPPCId
				, @RecordDate 
				, @ProcessHS 
				, @ProcessDIP 
				, @Counter 
				, @CounterErr 
				, @ProductCode 
				, @LotNo 
				, @Bath1SolutionName 
				, @Bath1NipFront 
				, @Bath1NipBack 
				, @Bath1NipBackErr 
				, @Bath2SolutionName 
				, @Bath2NipFront 
				, @Bath2NipBack 
				, @Bath2NipBackErr 
				, @Sofner 
				, @SofnerValue 
				, @DarwNip 
				, @DarwNipValue 
				, @PaperTubeColorUse 
				, @TensionD 
				, @TensionH 
				, @TensionN 
				, @TensionWinder 
				, @GasBefore 
				, @GasAfter 
				, @GasTotal 
				, @CoolingWarterBefore 
				, @CoolingWarterAfter 
				, @CoolingWarterTotal 
				, @AirPressureBefore 
				, @AirPressureAfter 
				, @AirPressureTotal 
				, @Bath1Before 
				, @Bath1After 
				, @Bath1WPU 
				, @Bath2Before 
				, @Bath2After 
				, @Bath2WPU 
				, @TempDZone1 
				, @TempDZone2 
				, @TempDZone3 
				, @TempDZone4 
				, @TempDZone5 
				, @TempDZone6 

				, @TempDZone7 
				, @TempDZone8 
				, @TempDZone9 
				, @TempDZone10 
				, @TempDZone11 
				, @TempDZone12 
				, @TempDZone13
				, @TempDZone14
				, @TempDZone15
				, @TempDZoneAvg   

				, @TempHNZone1 
				, @TempHNZone2 
				, @TempHNZone3 
				, @TempHNZone4 
				, @TempHNZone5 
				, @TempHNZone6 

				, @TempHNZone7 
				, @TempHNZone8 
				, @TempHNZone9 
				, @TempHNZone10 
				, @TempHNZone11 
				, @TempHNZone12 
				, @TempHNZone13
				, @TempHNZone14
				, @TempHNZone15
				, @TempHNZoneAvg  

				, @SectionHead 
				, @SectionManager
			);

            SET @S8ConditionId = @@IDENTITY;
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


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditionItems]    Script Date: 2/29/2024 6:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetS8ProductionConditionItems]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , RowType
         , ProductCode 
         , LotNo 
		 , DoffingDate 
		 , DoffingNo 

         , StretchDSC 
		 , StretchD 
		 , StretchDErr 
		 , StretchDValue 

		 , StretchHSC 
		 , StretchH 
		 , StretchHErr 
		 , StretchHValue 

		 , StretchNSC 
		 , StretchN 
		 , StretchNErr 
		 , StretchNValue 

		 , TempDSC 
		 , TempD 
		 , TempDErr 
		 , TempDValue 

		 , TempHNSC 
		 , TempHN 
		 , TempHNErr 
		 , TempHNValue 

		 , SpeedSC 
		 , Speed 
		 , SpeedErr 
		 , SpeedValue 

		 , TreatSC 
		 , Treat 
		 , TreatValue 

		 , DoffingLengthSC 
		 , DoffingLength 
		 , DoffingLengthValue 

		 , WeightSC 
		 , [Weight] 
		 , WeightValue

		 , SpindleSC 
		 , Spindle 
		 , SpindleValue 
		 
		 , ProductionGoodSC
		 , ProductionGood
         , ProductionGoodValue 

		 , ProductionTotalSC
		 , ProductionTotal 
		 , ProductionTotalValue

		 , ProductionCut 

		 , PositionCordCutCreel 
		 , PositionCordCutCreelKG 
		 , PositionCordCutCS 
		 , PositionCordCutCSKG 
		 , PositionCordCutWinder 
		 , PositionCordCutWinderKG 
		 , PositionCordCutWasteYarn 
		 , PositionCordCutWasteYarnKG 
		 
         , CheckTimeStart 
		 , CheckTimeFinish 
		 , CheckTimeRecord 

		 , Opertor 
		 , Leader 
      FROM S8ProductionConditionItem
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
	   AND LotNo IS NOT NULL
     ORDER BY DIPPCId, LotNo, DoffingNo;

END;

GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8x2ProductionConditionItems]    Script Date: 2/29/2024 6:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetS8x2ProductionConditionItems]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , RowType
         , ProductCode 
         , LotNo 
		 , DoffingDate 
		 , DoffingNo 

         , StretchDSC 
		 , StretchD 
		 , StretchDErr 
		 , StretchDValue 

		 , StretchHSC 
		 , StretchH 
		 , StretchHErr 
		 , StretchHValue 

		 , StretchNSC 
		 , StretchN 
		 , StretchNErr 
		 , StretchNValue 

		 , TempDSC 
		 , TempD 
		 , TempDErr 
		 , TempDValue 

		 , TempHNSC 
		 , TempHN 
		 , TempHNErr 
		 , TempHNValue 

		 , SpeedSC 
		 , Speed 
		 , SpeedErr 
		 , SpeedValue 

		 , TreatSC 
		 , Treat 
		 , TreatValue 

		 , DoffingLengthSC 
		 , DoffingLength 
		 , DoffingLengthValue 

		 , WeightSC 
		 , [Weight] 
		 , WeightValue

		 , SpindleSC 
		 , Spindle 
		 , SpindleValue 
		 
		 , ProductionGoodSC
		 , ProductionGood
         , ProductionGoodValue 

		 , ProductionTotalSC
		 , ProductionTotal 
		 , ProductionTotalValue

		 , ProductionCut 

		 , PositionCordCutCreel 
		 , PositionCordCutCreelKG 
		 , PositionCordCutCS 
		 , PositionCordCutCSKG 
		 , PositionCordCutWinder 
		 , PositionCordCutWinderKG 
		 , PositionCordCutWasteYarn 
		 , PositionCordCutWasteYarnKG 
		 
         , CheckTimeStart 
		 , CheckTimeFinish 
		 , CheckTimeRecord 

		 , Opertor 
		 , Leader 
      FROM S8x2ProductionConditionItem
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
	   AND LotNo IS NOT NULL
     ORDER BY DIPPCId, LotNo, DoffingNo;

END;

GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8ProductionConditionItem]    Script Date: 2/29/2024 6:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8ProductionConditionItem] (
  @DIPPCId int  
, @RowType int  
, @ProductCode nvarchar (30) 
, @LotNo nvarchar (30) 
, @DoffingDate datetime  
, @DoffingNo int  

, @StretchDSC bit  
, @StretchD decimal (18, 3) 
, @StretchDErr decimal (18, 3) 
, @StretchDValue decimal (18, 3) 

, @StretchHSC bit  
, @StretchH decimal (18, 3) 
, @StretchHErr decimal (18, 3) 
, @StretchHValue decimal (18, 3) 

, @StretchNSC bit  
, @StretchN decimal (18, 3) 
, @StretchNErr decimal (18, 3) 
, @StretchNValue decimal (18, 3) 

, @TempDSC bit  
, @TempD decimal (18, 3) 
, @TempDErr decimal (18, 3) 
, @TempDValue decimal (18, 3) 

, @TempHNSC bit  
, @TempHN decimal (18, 3) 
, @TempHNErr decimal (18, 3) 
, @TempHNValue decimal (18, 3) 

, @SpeedSC bit  
, @Speed decimal (18, 3) 
, @SpeedErr decimal (18, 3) 
, @SpeedValue decimal (18, 3) 

, @TreatSC bit  
, @Treat decimal (18, 3) 
, @TreatValue decimal (18, 3) 

, @DoffingLengthSC bit  
, @DoffingLength decimal (18, 3) 
, @DoffingLengthValue decimal (18, 3) 

, @WeightSC bit  
, @Weight decimal (18, 3) 
, @WeightValue decimal (18, 3) 

, @SpindleSC bit  
, @Spindle decimal (18, 3) 
, @SpindleValue decimal (18, 3) 

, @ProductionGoodSC bit  
, @ProductionGood decimal (18, 3) 
, @ProductionGoodValue decimal (18, 3) 

, @ProductionTotalSC bit  
, @ProductionTotal decimal (18, 3) 
, @ProductionTotalValue decimal (18, 3) 

, @ProductionCut decimal (18, 3) 

, @PositionCordCutCreel decimal (18, 3) 
, @PositionCordCutCreelKG decimal (18, 3) 
, @PositionCordCutCS decimal (18, 3) 
, @PositionCordCutCSKG decimal (18, 3) 
, @PositionCordCutWinder decimal (18, 3) 
, @PositionCordCutWinderKG decimal (18, 3) 
, @PositionCordCutWasteYarn decimal (18, 3) 
, @PositionCordCutWasteYarnKG decimal (18, 3) 

, @CheckTimeStart datetime = NULL  
, @CheckTimeFinish datetime = NULL   
, @CheckTimeRecord datetime = NULL  
, @Opertor nvarchar (100) = NULL  
, @Leader nvarchar (100) = NULL  
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8ProductionConditionItem 
                    WHERE DIPPCId = @DIPPCId
                      AND RowType = @RowType
                      AND LotNo = @LotNo 
                      AND DoffingDate = @DoffingDate
                      AND DoffingNo = @DoffingNo)
        BEGIN
            UPDATE S8ProductionConditionItem 
               SET DIPPCId = @DIPPCId
                 , RowType = @RowType
                 , DoffingDate = @DoffingDate  
				 , DoffingNo = @DoffingNo 

                 , StretchDSC = @StretchDSC  
				 , StretchD = @StretchD 
				 , StretchDErr = @StretchDErr 
				 , StretchDValue = @StretchDValue

				 , StretchHSC = @StretchHSC  
				 , StretchH = @StretchH 
				 , StretchHErr = @StretchHErr 
				 , StretchHValue = @StretchHValue 

				 , StretchNSC = @StretchNSC  
				 , StretchN = @StretchN 
				 , StretchNErr = @StretchNErr 
				 , StretchNValue = @StretchNValue 

				 , TempDSC = @TempDSC  
				 , TempD = @TempD 
				 , TempDErr = @TempDErr 
				 , TempDValue = @TempDValue 

				 , TempHNSC = @TempHNSC  
				 , TempHN = @TempHN 
				 , TempHNErr = @TempHNErr 
				 , TempHNValue = @TempHNValue 

				 , SpeedSC = @SpeedSC  
				 , Speed = @Speed 
				 , SpeedErr = @SpeedErr 
				 , SpeedValue = @SpeedValue 

				 , TreatSC = @TreatSC  
				 , Treat = @Treat 
				 , TreatValue = @TreatValue 

				 , DoffingLengthSC = @DoffingLengthSC  
				 , DoffingLength = @DoffingLength 
				 , DoffingLengthValue = @DoffingLengthValue 

				 , WeightSC = @WeightSC  
				 , [Weight] = @Weight 
				 , WeightValue = @WeightValue 

				 , SpindleSC = @SpindleSC  
				 , Spindle = @Spindle 
				 , SpindleValue = @SpindleValue 

				 , ProductionGoodSC = @ProductionGoodSC  
				 , ProductionGood = @ProductionGood 
				 , ProductionGoodValue = @ProductionGoodValue 

				 , ProductionTotalSC = @ProductionTotalSC  
				 , ProductionTotal = @ProductionTotal  
				 , ProductionTotalValue = @ProductionTotalValue 

				 , ProductionCut = @ProductionCut 

				 , PositionCordCutCreel = @PositionCordCutCreel 
				 , PositionCordCutCreelKG = @PositionCordCutCreelKG 
				 , PositionCordCutCS = @PositionCordCutCS 
				 , PositionCordCutCSKG = @PositionCordCutCSKG 
				 , PositionCordCutWinder = @PositionCordCutWinder 
				 , PositionCordCutWinderKG = @PositionCordCutWinderKG 
				 , PositionCordCutWasteYarn = @PositionCordCutWasteYarn 
				 , PositionCordCutWasteYarnKG = @PositionCordCutWasteYarnKG 

				 , CheckTimeStart = @CheckTimeStart  
				 , CheckTimeFinish = @CheckTimeFinish  
				 , CheckTimeRecord = @CheckTimeRecord  
                 
				 , Opertor = @Opertor 
				 , Leader = @Leader   
             WHERE DIPPCId = @DIPPCId
               AND RowType = @RowType
               AND LotNo = @LotNo 
               AND DoffingDate = @DoffingDate
               AND DoffingNo = @DoffingNo
        END
        ELSE
        BEGIN
			INSERT INTO S8ProductionConditionItem
		    (
                  DIPPCId
                , RowType
				, ProductCode 
				, LotNo 
				, DoffingDate 
				, DoffingNo

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchDValue 

				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchHValue 

				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, StretchNValue 

				, TempDSC  
				, TempD 
				, TempDErr 
				, TempDValue 

				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, TempHNValue 
				
				, SpeedSC  
				, Speed 
				, SpeedErr 
                , SpeedValue 

				, TreatSC  
				, Treat 
				, TreatValue 

				, DoffingLengthSC  
				, DoffingLength 
				, DoffingLengthValue 

				, WeightSC  
				, [Weight] 
				, WeightValue 

				, SpindleSC  
				, Spindle 
				, SpindleValue 

				, ProductionGoodSC  
				, ProductionGood 
				, ProductionGoodValue 

				, ProductionTotalSC  
				, ProductionTotal 
				, ProductionTotalValue 

				, ProductionCut 

				, PositionCordCutCreel 
				, PositionCordCutCreelKG 
				, PositionCordCutCS 
				, PositionCordCutCSKG 
				, PositionCordCutWinder 
				, PositionCordCutWinderKG 
				, PositionCordCutWasteYarn 
				, PositionCordCutWasteYarnKG 

				, CheckTimeStart 
				, CheckTimeFinish 
				, CheckTimeRecord 

				, Opertor 
		        , Leader 
			)
			VALUES
			(
                  @DIPPCId
                , @RowType
                , @ProductCode 
				, @LotNo 
				, @DoffingDate 
				, @DoffingNo

			    , @StretchDSC  
			    , @StretchD 
			    , @StretchDErr 
				, @StretchDValue 

			    , @StretchHSC  
			    , @StretchH 
			    , @StretchHErr 
				, @StretchHValue 

			    , @StretchNSC  
			    , @StretchN 
			    , @StretchNErr 
				, @StretchNValue 

			    , @TempDSC  
			    , @TempD 
			    , @TempDErr 
				, @TempDValue 

			    , @TempHNSC  
			    , @TempHN 
			    , @TempHNErr 
				, @TempHNValue 

			    , @SpeedSC  
			    , @Speed 
			    , @SpeedErr 
				, @SpeedValue 

			    , @TreatSC  
			    , @Treat 
				, @TreatValue 

			    , @DoffingLengthSC  
			    , @DoffingLength 
				, @DoffingLengthValue 

			    , @WeightSC  
			    , @Weight 
				, @WeightValue 

			    , @SpindleSC  
			    , @Spindle 
				, @SpindleValue 

			    , @ProductionGoodSC  
			    , @ProductionGood 
				, @ProductionGoodValue 

			    , @ProductionTotalSC  
			    , @ProductionTotal 
				, @ProductionTotalValue 

				, @ProductionCut 

				, @PositionCordCutCreel 
				, @PositionCordCutCreelKG 
				, @PositionCordCutCS 
				, @PositionCordCutCSKG 
				, @PositionCordCutWinder 
				, @PositionCordCutWinderKG 
				, @PositionCordCutWasteYarn 
				, @PositionCordCutWasteYarnKG 

				, @CheckTimeStart  
				, @CheckTimeFinish  
				, @CheckTimeRecord  

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


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8x2ProductionConditionItem]    Script Date: 2/29/2024 6:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8x2ProductionConditionItem] (
  @DIPPCId int  
, @RowType int  
, @ProductCode nvarchar (30) 
, @LotNo nvarchar (30) 
, @DoffingDate datetime  
, @DoffingNo int  

, @StretchDSC bit  
, @StretchD decimal (18, 3) 
, @StretchDErr decimal (18, 3) 
, @StretchDValue decimal (18, 3) 

, @StretchHSC bit  
, @StretchH decimal (18, 3) 
, @StretchHErr decimal (18, 3) 
, @StretchHValue decimal (18, 3) 

, @StretchNSC bit  
, @StretchN decimal (18, 3) 
, @StretchNErr decimal (18, 3) 
, @StretchNValue decimal (18, 3) 

, @TempDSC bit  
, @TempD decimal (18, 3) 
, @TempDErr decimal (18, 3) 
, @TempDValue decimal (18, 3) 

, @TempHNSC bit  
, @TempHN decimal (18, 3) 
, @TempHNErr decimal (18, 3) 
, @TempHNValue decimal (18, 3) 

, @SpeedSC bit  
, @Speed decimal (18, 3) 
, @SpeedErr decimal (18, 3) 
, @SpeedValue decimal (18, 3) 

, @TreatSC bit  
, @Treat decimal (18, 3) 
, @TreatValue decimal (18, 3) 

, @DoffingLengthSC bit  
, @DoffingLength decimal (18, 3) 
, @DoffingLengthValue decimal (18, 3) 

, @WeightSC bit  
, @Weight decimal (18, 3) 
, @WeightValue decimal (18, 3) 

, @SpindleSC bit  
, @Spindle decimal (18, 3) 
, @SpindleValue decimal (18, 3) 

, @ProductionGoodSC bit  
, @ProductionGood decimal (18, 3) 
, @ProductionGoodValue decimal (18, 3) 

, @ProductionTotalSC bit  
, @ProductionTotal decimal (18, 3) 
, @ProductionTotalValue decimal (18, 3) 

, @ProductionCut decimal (18, 3) 

, @PositionCordCutCreel decimal (18, 3) 
, @PositionCordCutCreelKG decimal (18, 3) 
, @PositionCordCutCS decimal (18, 3) 
, @PositionCordCutCSKG decimal (18, 3) 
, @PositionCordCutWinder decimal (18, 3) 
, @PositionCordCutWinderKG decimal (18, 3) 
, @PositionCordCutWasteYarn decimal (18, 3) 
, @PositionCordCutWasteYarnKG decimal (18, 3) 

, @CheckTimeStart datetime = NULL  
, @CheckTimeFinish datetime = NULL   
, @CheckTimeRecord datetime = NULL  

, @Opertor nvarchar (100) = NULL  
, @Leader nvarchar (100) = NULL  
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2ProductionConditionItem 
                    WHERE DIPPCId = @DIPPCId
                      AND RowType = @RowType
                      AND LotNo = @LotNo 
                      AND DoffingDate = @DoffingDate
                      AND DoffingNo = @DoffingNo)
        BEGIN
            UPDATE S8x2ProductionConditionItem 
               SET DIPPCId = @DIPPCId
                 , RowType = @RowType
                 , DoffingDate = @DoffingDate  
				 , DoffingNo = @DoffingNo 

                 , StretchDSC = @StretchDSC  
				 , StretchD = @StretchD 
				 , StretchDErr = @StretchDErr 
				 , StretchDValue = @StretchDValue

				 , StretchHSC = @StretchHSC  
				 , StretchH = @StretchH 
				 , StretchHErr = @StretchHErr 
				 , StretchHValue = @StretchHValue 

				 , StretchNSC = @StretchNSC  
				 , StretchN = @StretchN 
				 , StretchNErr = @StretchNErr 
				 , StretchNValue = @StretchNValue 

				 , TempDSC = @TempDSC  
				 , TempD = @TempD 
				 , TempDErr = @TempDErr 
				 , TempDValue = @TempDValue 

				 , TempHNSC = @TempHNSC  
				 , TempHN = @TempHN 
				 , TempHNErr = @TempHNErr 
				 , TempHNValue = @TempHNValue 

				 , SpeedSC = @SpeedSC  
				 , Speed = @Speed 
				 , SpeedErr = @SpeedErr 
				 , SpeedValue = @SpeedValue 

				 , TreatSC = @TreatSC  
				 , Treat = @Treat 
				 , TreatValue = @TreatValue 

				 , DoffingLengthSC = @DoffingLengthSC  
				 , DoffingLength = @DoffingLength 
				 , DoffingLengthValue = @DoffingLengthValue 

				 , WeightSC = @WeightSC  
				 , [Weight] = @Weight 
				 , WeightValue = @WeightValue 

				 , SpindleSC = @SpindleSC  
				 , Spindle = @Spindle 
				 , SpindleValue = @SpindleValue 

				 , ProductionGoodSC = @ProductionGoodSC  
				 , ProductionGood = @ProductionGood 
				 , ProductionGoodValue = @ProductionGoodValue 

				 , ProductionTotalSC = @ProductionTotalSC  
				 , ProductionTotal = @ProductionTotal  
				 , ProductionTotalValue = @ProductionTotalValue 

				 , ProductionCut = @ProductionCut 

				 , PositionCordCutCreel = @PositionCordCutCreel 
				 , PositionCordCutCreelKG = @PositionCordCutCreelKG 
				 , PositionCordCutCS = @PositionCordCutCS 
				 , PositionCordCutCSKG = @PositionCordCutCSKG 
				 , PositionCordCutWinder = @PositionCordCutWinder 
				 , PositionCordCutWinderKG = @PositionCordCutWinderKG 
				 , PositionCordCutWasteYarn = @PositionCordCutWasteYarn 
				 , PositionCordCutWasteYarnKG = @PositionCordCutWasteYarnKG 

				 , CheckTimeStart = @CheckTimeStart  
				 , CheckTimeFinish = @CheckTimeFinish  
				 , CheckTimeRecord = @CheckTimeRecord  

				 , Opertor = @Opertor 
				 , Leader = @Leader   
             WHERE DIPPCId = @DIPPCId
               AND RowType = @RowType
               AND LotNo = @LotNo 
               AND DoffingDate = @DoffingDate
               AND DoffingNo = @DoffingNo
        END
        ELSE
        BEGIN
			INSERT INTO S8x2ProductionConditionItem
		    (
                  DIPPCId
                , RowType
				, ProductCode 
				, LotNo 
				, DoffingDate 
				, DoffingNo

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchDValue 

				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchHValue 

				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, StretchNValue 

				, TempDSC  
				, TempD 
				, TempDErr 
				, TempDValue 

				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, TempHNValue 
				
				, SpeedSC  
				, Speed 
				, SpeedErr 
                , SpeedValue 

				, TreatSC  
				, Treat 
				, TreatValue 

				, DoffingLengthSC  
				, DoffingLength 
				, DoffingLengthValue 

				, WeightSC  
				, [Weight] 
				, WeightValue 

				, SpindleSC  
				, Spindle 
				, SpindleValue 

				, ProductionGoodSC  
				, ProductionGood 
				, ProductionGoodValue 

				, ProductionTotalSC  
				, ProductionTotal 
				, ProductionTotalValue 

				, ProductionCut 

				, PositionCordCutCreel 
				, PositionCordCutCreelKG 
				, PositionCordCutCS 
				, PositionCordCutCSKG 
				, PositionCordCutWinder 
				, PositionCordCutWinderKG 
				, PositionCordCutWasteYarn 
				, PositionCordCutWasteYarnKG 

				, CheckTimeStart 
				, CheckTimeFinish 
				, CheckTimeRecord 

				, Opertor 
		        , Leader 
			)
			VALUES
			(
                  @DIPPCId
                , @RowType
                , @ProductCode 
				, @LotNo 
				, @DoffingDate 
				, @DoffingNo

			    , @StretchDSC  
			    , @StretchD 
			    , @StretchDErr 
				, @StretchDValue 

			    , @StretchHSC  
			    , @StretchH 
			    , @StretchHErr 
				, @StretchHValue 

			    , @StretchNSC  
			    , @StretchN 
			    , @StretchNErr 
				, @StretchNValue 

			    , @TempDSC  
			    , @TempD 
			    , @TempDErr 
				, @TempDValue 

			    , @TempHNSC  
			    , @TempHN 
			    , @TempHNErr 
				, @TempHNValue 

			    , @SpeedSC  
			    , @Speed 
			    , @SpeedErr 
				, @SpeedValue 

			    , @TreatSC  
			    , @Treat 
				, @TreatValue 

			    , @DoffingLengthSC  
			    , @DoffingLength 
				, @DoffingLengthValue 

			    , @WeightSC  
			    , @Weight 
				, @WeightValue 

			    , @SpindleSC  
			    , @Spindle 
				, @SpindleValue 

			    , @ProductionGoodSC  
			    , @ProductionGood 
				, @ProductionGoodValue 

			    , @ProductionTotalSC  
			    , @ProductionTotal 
				, @ProductionTotalValue 

				, @ProductionCut 

				, @PositionCordCutCreel 
				, @PositionCordCutCreelKG 
				, @PositionCordCutCS 
				, @PositionCordCutCSKG 
				, @PositionCordCutWinder 
				, @PositionCordCutWinderKG 
				, @PositionCordCutWasteYarn 
				, @PositionCordCutWasteYarnKG 

				, @CheckTimeStart  
				, @CheckTimeFinish  
				, @CheckTimeRecord  

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


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[GetS9AppearanceCheckSheetItems]    Script Date: 2/29/2024 7:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS9AppearanceCheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS9AppearanceCheckSheetItems NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetS9AppearanceCheckSheetItems]
(
  @AppearId int = NULL
)
AS
BEGIN
    SELECT AppearId
         , SPNo
         , CheckGood
         , CheckBad
         , Check2Color
         , CheckKeiba
         , CheckWeight
         , CheckFrontTwist
         , CheckBackTwist
         , CheckSnarl
         , CheckTube
         , SPUnusable
      FROM S9AppearanceCheckSheetItem 
     WHERE AppearId = @AppearId
     ORDER BY AppearId, SPNo;

END

GO


/*********** Script Update Date: 2024-02-28  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS9AppearanceCheckSheetItem]    Script Date: 2/29/2024 7:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS9AppearanceCheckSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveS9AppearanceCheckSheetItem] (
  @AppearId int
, @SPNo int
, @CheckGood bit
, @CheckBad bit
, @Check2Color bit
, @CheckKeiba bit
, @CheckWeight bit
, @CheckFrontTwist bit
, @CheckBackTwist bit
, @CheckSnarl bit
, @CheckTube bit
, @SPUnusable bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S9AppearanceCheckSheetItem 
                    WHERE AppearId = @AppearId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE S9AppearanceCheckSheetItem 
               SET CheckGood = @CheckGood
                 , CheckBad = @CheckBad
                 , Check2Color = @Check2Color
                 , CheckKeiba = @CheckKeiba
                 , CheckWeight = @CheckWeight
                 , CheckFrontTwist = @CheckFrontTwist
                 , CheckBackTwist = @CheckBackTwist
                 , CheckSnarl = @CheckSnarl
                 , CheckTube = @CheckTube
                 , SPUnusable = @SPUnusable
             WHERE AppearId = @AppearId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO S9AppearanceCheckSheetItem
		    (
                  AppearId
                , SPNo
                , CheckGood
                , CheckBad
                , Check2Color
                , CheckKeiba
                , CheckWeight
                , CheckFrontTwist
                , CheckBackTwist
                , CheckSnarl
                , CheckTube
                , SPUnusable
			)
			VALUES
			(
                  @AppearId
                , @SPNo
                , @CheckGood
                , @CheckBad
                , @Check2Color
                , @CheckKeiba
                , @CheckWeight
                , @CheckFrontTwist
                , @CheckBackTwist
                , @CheckSnarl
                , @CheckTube
                , @SPUnusable
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

