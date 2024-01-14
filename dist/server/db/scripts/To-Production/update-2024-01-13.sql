/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  Table [dbo].[ProductionRecord]    Script Date: 11/1/2567 2:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionRecord](
	[RecordDate] [datetime] NULL,
	[ProcessHS] [bit] NULL,
	[ProcessDIP] [bit] NULL,
	[Customer] [nvarchar](100) NULL,
	[Counter] [decimal](18, 3) NULL,
	[CounterErr] [decimal](18, 3) NULL,
	[CordStructure] [nvarchar](100) NULL,
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[Bath1SolutionName] [nvarchar](100) NULL,
	[Bath1NipFront] [decimal](18, 3) NULL,
	[Bath1NipBack] [decimal](18, 3) NULL,
	[Bath1NipBackErr] [decimal](18, 3) NULL,
	[Bath2SolutionName] [nvarchar](100) NULL,
	[Bath2NipFront] [decimal](18, 3) NULL,
	[Bath2NipBack] [decimal](18, 3) NULL,
	[Bath2NipBackErr] [decimal](18, 3) NULL,
	[Sofner] [bit] NULL,
	[DarwNip] [bit] NULL,
	[PaperTubeColorUse] [nvarchar](100) NULL,
	[TensionD] [decimal](18, 3) NULL,
	[TensionH] [decimal](18, 3) NULL,
	[TensionN] [decimal](18, 3) NULL,
	[TensionWinder] [nvarchar](100) NULL,
	[GasBefore] [decimal](18, 3) NULL,
	[GasAfter] [decimal](18, 3) NULL,
	[GasTotal] [decimal](18, 3) NULL,
	[CoolingWarterBefore] [decimal](18, 3) NULL,
	[CoolingWarterAfter] [decimal](18, 3) NULL,
	[CoolingWarterTotal] [decimal](18, 3) NULL,
	[AirPressureBefore] [decimal](18, 3) NULL,
	[AirPressureAfter] [decimal](18, 3) NULL,
	[AirPressureTotal] [decimal](18, 3) NULL,
	[Bath1Before] [decimal](18, 3) NULL,
	[Bath1After] [decimal](18, 3) NULL,
	[Bath1WPU] [decimal](18, 3) NULL,
	[Bath2Before] [decimal](18, 3) NULL,
	[Bath2After] [decimal](18, 3) NULL,
	[Bath2WPU] [decimal](18, 3) NULL,
	[TempDZone1] [decimal](18, 3) NULL,
	[TempDZone2] [decimal](18, 3) NULL,
	[TempDZone3] [decimal](18, 3) NULL,
	[TempHNZone1] [decimal](18, 3) NULL,
	[TempHNZone2] [decimal](18, 3) NULL,
	[TempHNZone3] [decimal](18, 3) NULL,
	[TempHNZone4] [decimal](18, 3) NULL,
	[TempHNZone5] [decimal](18, 3) NULL,
	[TempHNZone6] [decimal](18, 3) NULL,
	[SectionHead] [nvarchar](100) NULL,
	[SectionManager] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductionRecordDetail]    Script Date: 11/1/2567 2:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionRecordDetail](
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[DoffingNo] [int] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchN] [decimal](18, 3) NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempHN] [decimal](18, 3) NULL,
	[Speed] [decimal](18, 3) NULL,
	[Treat] [decimal](18, 3) NULL,
	[DoffingLength] [decimal](18, 3) NULL,
	[Weight] [decimal](18, 3) NULL,
	[Spindle] [decimal](18, 3) NULL,
	[ProductionGood] [decimal](18, 3) NULL,
	[ProductionTotal] [decimal](18, 3) NULL,
	[ProductionCut] [decimal](18, 3) NULL,
	[PositionCordCutCreel] [decimal](18, 3) NULL,
	[PositionCordCutCS] [decimal](18, 3) NULL,
	[PositionCordCutWinder] [decimal](18, 3) NULL,
	[PositionCordCutWasteYarn] [decimal](18, 3) NULL,
	[CheckTimeStart] [datetime] NULL,
	[CheckTimeFinish] [datetime] NULL,
	[CheckTimeRecord] [datetime] NULL,
	[Opertor] [nvarchar](100) NULL,
	[Leader] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductionRecordStd]    Script Date: 11/1/2567 2:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionRecordStd](
	[ProductCode] [nvarchar](30) NULL,
	[StretchDSC] [bit] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchDErr] [decimal](18, 3) NULL,
	[StretchHSC] [bit] NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchHErr] [decimal](18, 3) NULL,
	[StretchNSC] [bit] NULL,
	[StretchN] [decimal](18, 3) NULL,
	[StretchNErr] [decimal](18, 3) NULL,
	[TempDSC] [bit] NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempDErr] [decimal](18, 3) NULL,
	[TempHNSC] [bit] NULL,
	[TempHN] [decimal](18, 3) NULL,
	[TempHNErr] [decimal](18, 3) NULL,
	[SpeedSC] [bit] NULL,
	[Speed] [decimal](18, 3) NULL,
	[SpeedErr] [decimal](18, 3) NULL,
	[TreatSC] [bit] NULL,
	[Treat] [decimal](18, 3) NULL,
	[DoffingLengthSC] [bit] NULL,
	[DoffingLength] [decimal](18, 3) NULL,
	[WeightSC] [bit] NULL,
	[Weight] [decimal](18, 3) NULL,
	[SpindleSC] [bit] NULL,
	[Spindle] [decimal](18, 3) NULL,
	[ProductionGoodSC] [bit] NULL,
	[ProductionGood] [decimal](18, 3) NULL,
	[ProductionTotalSC] [bit] NULL,
	[ProductionTotal] [decimal](18, 3) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveProductionRecord]    Script Date: 11/1/2567 2:01:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveProductionRecord] (
    @RecordDate datetime ,
	@ProcessHS bit ,
	@ProcessDIP bit ,
	@Customer nvarchar (100),
	@Counter decimal (18, 3),
	@CounterErr decimal (18, 3),
	@CordStructure nvarchar (100),
	@ProductCode nvarchar (30),
	@LotNo nvarchar (30),
	@Bath1SolutionName nvarchar (100),
	@Bath1NipFront decimal (18, 3),
	@Bath1NipBack decimal (18, 3),
	@Bath1NipBackErr decimal (18, 3),
	@Bath2SolutionName nvarchar (100),
	@Bath2NipFront decimal (18, 3),
	@Bath2NipBack decimal (18, 3),
	@Bath2NipBackErr decimal (18, 3),
	@Sofner bit ,
	@DarwNip bit ,
	@PaperTubeColorUse nvarchar (100),
	@TensionD decimal (18, 3),
	@TensionH decimal (18, 3),
	@TensionN decimal (18, 3),
	@TensionWinder nvarchar (100),
	@GasBefore decimal (18, 3),
	@GasAfter decimal (18, 3),
	@GasTotal decimal (18, 3),
	@CoolingWarterBefore decimal (18, 3),
	@CoolingWarterAfter decimal (18, 3),
	@CoolingWarterTotal decimal (18, 3),
	@AirPressureBefore decimal (18, 3),
	@AirPressureAfter decimal (18, 3),
	@AirPressureTotal decimal (18, 3),
	@Bath1Before decimal (18, 3),
	@Bath1After decimal (18, 3),
	@Bath1WPU decimal (18, 3),
	@Bath2Before decimal (18, 3),
	@Bath2After decimal (18, 3),
	@Bath2WPU decimal (18, 3),
	@TempDZone1 decimal (18, 3),
	@TempDZone2 decimal (18, 3),
	@TempDZone3 decimal (18, 3),
	@TempHNZone1 decimal (18, 3),
	@TempHNZone2 decimal (18, 3),
	@TempHNZone3 decimal (18, 3),
	@TempHNZone4 decimal (18, 3),
	@TempHNZone5 decimal (18, 3),
	@TempHNZone6 decimal (18, 3),
	@SectionHead nvarchar (100),
	@SectionManager nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ProductionRecord WHERE ProductCode = @ProductCode And LotNo = @LotNo)
        BEGIN
            UPDATE ProductionRecord 
               SET  RecordDate = @RecordDate ,
					ProcessHS = @ProcessHS ,
					ProcessDIP = @ProcessDIP ,
					Customer = @Customer ,
					[Counter] = @Counter ,
					CounterErr = @CounterErr ,
					CordStructure = @CordStructure ,
					ProductCode = @ProductCode ,
					LotNo = @LotNo ,
					Bath1SolutionName = @Bath1SolutionName ,
					Bath1NipFront = @Bath1NipFront ,
					Bath1NipBack = @Bath1NipBack ,
					Bath1NipBackErr = @Bath1NipBackErr ,
					Bath2SolutionName = @Bath2SolutionName ,
					Bath2NipFront = @Bath2NipFront ,
					Bath2NipBack = @Bath2NipBack ,
					Bath2NipBackErr = @Bath2NipBackErr ,
					Sofner = @Sofner ,
					DarwNip = @DarwNip ,
					PaperTubeColorUse = @PaperTubeColorUse ,
					TensionD = @TensionD ,
					TensionH = @TensionH ,
					TensionN = @TensionN ,
					TensionWinder = @TensionWinder ,
					GasBefore = @GasBefore ,
					GasAfter = @GasAfter ,
					GasTotal = @GasTotal ,
					CoolingWarterBefore = @CoolingWarterBefore ,
					CoolingWarterAfter = @CoolingWarterAfter ,
					CoolingWarterTotal = @CoolingWarterTotal ,
					AirPressureBefore = @AirPressureBefore ,
					AirPressureAfter = @AirPressureAfter ,
					AirPressureTotal = @AirPressureTotal ,
					Bath1Before = @Bath1Before ,
					Bath1After = @Bath1After ,
					Bath1WPU = @Bath1WPU ,
					Bath2Before = @Bath2Before ,
					Bath2After = @Bath2After ,
					Bath2WPU = @Bath2WPU ,
					TempDZone1 = @TempDZone1 ,
					TempDZone2 = @TempDZone2 ,
					TempDZone3 = @TempDZone3 ,
					TempHNZone1 = @TempHNZone1 ,
					TempHNZone2 = @TempHNZone2 ,
					TempHNZone3 = @TempHNZone3 ,
					TempHNZone4 = @TempHNZone4 ,
					TempHNZone5 = @TempHNZone5 ,
					TempHNZone6 = @TempHNZone6 ,
					SectionHead = @SectionHead ,
					SectionManager = @SectionManager 
             WHERE  ProductCode = @ProductCode  And LotNo = @LotNo
        END
        ELSE
        BEGIN
			INSERT INTO ProductionRecord
		    (
				RecordDate ,
				ProcessHS ,
				ProcessDIP ,
				Customer ,
				[Counter] ,
				CounterErr ,
				CordStructure ,
				ProductCode ,
				LotNo ,
				Bath1SolutionName ,
				Bath1NipFront ,
				Bath1NipBack ,
				Bath1NipBackErr ,
				Bath2SolutionName ,
				Bath2NipFront ,
				Bath2NipBack ,
				Bath2NipBackErr ,
				Sofner ,
				DarwNip ,
				PaperTubeColorUse ,
				TensionD ,
				TensionH ,
				TensionN ,
				TensionWinder ,
				GasBefore ,
				GasAfter ,
				GasTotal ,
				CoolingWarterBefore ,
				CoolingWarterAfter ,
				CoolingWarterTotal ,
				AirPressureBefore ,
				AirPressureAfter ,
				AirPressureTotal ,
				Bath1Before ,
				Bath1After ,
				Bath1WPU ,
				Bath2Before ,
				Bath2After ,
				Bath2WPU ,
				TempDZone1 ,
				TempDZone2 ,
				TempDZone3 ,
				TempHNZone1 ,
				TempHNZone2 ,
				TempHNZone3 ,
				TempHNZone4 ,
				TempHNZone5 ,
				TempHNZone6 ,
				SectionHead ,
				SectionManager
			)
			VALUES
			(
                @RecordDate ,
				@ProcessHS ,
				@ProcessDIP ,
				@Customer ,
				@Counter ,
				@CounterErr ,
				@CordStructure ,
				@ProductCode ,
				@LotNo ,
				@Bath1SolutionName ,
				@Bath1NipFront ,
				@Bath1NipBack ,
				@Bath1NipBackErr ,
				@Bath2SolutionName ,
				@Bath2NipFront ,
				@Bath2NipBack ,
				@Bath2NipBackErr ,
				@Sofner ,
				@DarwNip ,
				@PaperTubeColorUse ,
				@TensionD ,
				@TensionH ,
				@TensionN ,
				@TensionWinder ,
				@GasBefore ,
				@GasAfter ,
				@GasTotal ,
				@CoolingWarterBefore ,
				@CoolingWarterAfter ,
				@CoolingWarterTotal ,
				@AirPressureBefore ,
				@AirPressureAfter ,
				@AirPressureTotal ,
				@Bath1Before ,
				@Bath1After ,
				@Bath1WPU ,
				@Bath2Before ,
				@Bath2After ,
				@Bath2WPU ,
				@TempDZone1 ,
				@TempDZone2 ,
				@TempDZone3 ,
				@TempHNZone1 ,
				@TempHNZone2 ,
				@TempHNZone3 ,
				@TempHNZone4 ,
				@TempHNZone5 ,
				@TempHNZone6 ,
				@SectionHead ,
				@SectionManager
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


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveProductionRecordDetail]    Script Date: 10/1/2567 23:52:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveProductionRecordDetail] (
    @ProductCode nvarchar (30) ,
	@LotNo nvarchar (30) ,
	@DoffingDate datetime  ,
	@DoffingNo int  ,
	@StretchD decimal (18, 3) ,
	@StretchH decimal (18, 3) ,
	@StretchN decimal (18, 3) ,
	@TempD decimal (18, 3) ,
	@TempHN decimal (18, 3) ,
	@Speed decimal (18, 3) ,
	@Treat decimal (18, 3) ,
	@DoffingLength decimal (18, 3) ,
	@Weight decimal (18, 3) ,
	@Spindle decimal (18, 3) ,
	@ProductionGood decimal (18, 3) ,
	@ProductionTotal decimal (18, 3) ,
	@ProductionCut decimal (18, 3) ,
	@PositionCordCutCreel decimal (18, 3) ,
	@PositionCordCutCS decimal (18, 3) ,
	@PositionCordCutWinder decimal (18, 3) ,
	@PositionCordCutWasteYarn decimal (18, 3) ,
	@CheckTimeStart datetime  ,
	@CheckTimeFinish datetime  ,
	@CheckTimeRecord datetime  ,
	@Opertor nvarchar (100) ,
	@Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ProductionRecordDetail WHERE ProductCode = @ProductCode And LotNo = @LotNo)
        BEGIN
            UPDATE ProductionRecordDetail 
               SET  DoffingDate = @DoffingDate  ,
					DoffingNo = @DoffingNo ,
					StretchD = @StretchD ,
					StretchH = @StretchH ,
					StretchN = @StretchN ,
					TempD = @TempD ,
					TempHN = @TempHN ,
					Speed = @Speed ,
					Treat = @Treat ,
					DoffingLength = @DoffingLength ,
					[Weight] = @Weight ,
					Spindle = @Spindle ,
					ProductionGood = @ProductionGood ,
					ProductionTotal = @ProductionTotal ,
					ProductionCut = @ProductionCut ,
					PositionCordCutCreel = @PositionCordCutCreel ,
					PositionCordCutCS = @PositionCordCutCS ,
					PositionCordCutWinder = @PositionCordCutWinder ,
					PositionCordCutWasteYarn = @PositionCordCutWasteYarn ,
					CheckTimeStart = @CheckTimeStart  ,
					CheckTimeFinish = @CheckTimeFinish  ,
					CheckTimeRecord = @CheckTimeRecord  ,
					Opertor = @Opertor ,
					Leader = @Leader   
             WHERE  ProductCode = @ProductCode  And LotNo = @LotNo
        END
        ELSE
        BEGIN
			INSERT INTO ProductionRecordDetail
		    (
				ProductCode ,
				LotNo ,
				DoffingDate ,
				DoffingNo ,
				StretchD ,
				StretchH ,
				StretchN ,
				TempD ,
				TempHN ,
				Speed ,
				Treat ,
				DoffingLength ,
				[Weight] ,
				Spindle ,
				ProductionGood ,
				ProductionTotal ,
				ProductionCut ,
				PositionCordCutCreel ,
				PositionCordCutCS ,
				PositionCordCutWinder ,
				PositionCordCutWasteYarn ,
				CheckTimeStart ,
				CheckTimeFinish ,
				CheckTimeRecord ,
				Opertor ,
		Leader 
			)
			VALUES
			(
                @ProductCode ,
				@LotNo ,
				@DoffingDate ,
				@DoffingNo ,
				@StretchD ,
				@StretchH ,
				@StretchN ,
				@TempD ,
				@TempHN ,
				@Speed ,
				@Treat ,
				@DoffingLength ,
				@Weight ,
				@Spindle ,
				@ProductionGood ,
				@ProductionTotal ,
				@ProductionCut ,
				@PositionCordCutCreel ,
				@PositionCordCutCS ,
				@PositionCordCutWinder ,
				@PositionCordCutWasteYarn ,
				@CheckTimeStart  ,
				@CheckTimeFinish  ,
				@CheckTimeRecord  ,
				@Opertor ,
				@Leader 
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


/*********** Script Update Date: 2024-01-13  ***********/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveProductionRecordStd] (
     @ProductCode nvarchar (30) ,
	 @StretchDSC bit  ,
	 @StretchD decimal (18, 3) ,
	 @StretchDErr decimal (18, 3) ,
	 @StretchHSC bit  ,
	 @StretchH decimal (18, 3) ,
	 @StretchHErr decimal (18, 3) ,
	 @StretchNSC bit  ,
	 @StretchN decimal (18, 3) ,
	 @StretchNErr decimal (18, 3) ,
	 @TempDSC bit  ,
	 @TempD decimal (18, 3) ,
	 @TempDErr decimal (18, 3) ,
	 @TempHNSC bit  ,
	 @TempHN decimal (18, 3) ,
	 @TempHNErr decimal (18, 3) ,
	 @SpeedSC bit  ,
	 @Speed decimal (18, 3) ,
	 @SpeedErr decimal (18, 3) ,
	 @TreatSC bit  ,
	 @Treat decimal (18, 3) ,
	 @DoffingLengthSC bit  ,
	 @DoffingLength decimal (18, 3) ,
	 @WeightSC bit  ,
	 @Weight decimal (18, 3) ,
	 @SpindleSC bit  ,
	 @Spindle decimal (18, 3) ,
	 @ProductionGoodSC bit  ,
	 @ProductionGood decimal (18, 3) ,
	 @ProductionTotalSC bit  ,
	 @ProductionTotal decimal (18, 3) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ProductionRecordStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE ProductionRecordStd 
               SET  StretchDSC = @StretchDSC  ,
					StretchD = @StretchD ,
					StretchDErr = @StretchDErr ,
					StretchHSC = @StretchHSC  ,
					StretchH = @StretchH ,
					StretchHErr = @StretchHErr ,
					StretchNSC = @StretchNSC  ,
					StretchN = @StretchN ,
					StretchNErr = @StretchNErr ,
					TempDSC = @TempDSC  ,
					TempD = @TempD ,
					TempDErr = @TempDErr ,
					TempHNSC = @TempHNSC  ,
					TempHN = @TempHN ,
					TempHNErr = @TempHNErr ,
					SpeedSC = @SpeedSC  ,
					Speed = @Speed ,
					SpeedErr = @SpeedErr ,
					TreatSC = @TreatSC  ,
					Treat = @Treat ,
					DoffingLengthSC = @DoffingLengthSC  ,
					DoffingLength = @DoffingLength ,
					WeightSC = @WeightSC  ,
					[Weight] = @Weight ,
					SpindleSC = @SpindleSC  ,
					Spindle = @Spindle ,
					ProductionGoodSC = @ProductionGoodSC  ,
					ProductionGood = @ProductionGood ,
					ProductionTotalSC = @ProductionTotalSC  ,
					ProductionTotal = @ProductionTotal  
             WHERE  ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO ProductionRecordStd
		    (
				 ProductCode  ,
				 StretchDSC  ,
				 StretchD ,
				 StretchDErr ,
				 StretchHSC  ,
				 StretchH ,
				 StretchHErr ,
				 StretchNSC  ,
				 StretchN ,
				 StretchNErr ,
				 TempDSC  ,
				 TempD ,
				 TempDErr ,
				 TempHNSC  ,
				 TempHN ,
				 TempHNErr ,
				 SpeedSC  ,
				 Speed ,
				 SpeedErr ,
				 TreatSC  ,
				 Treat ,
				 DoffingLengthSC  ,
				 DoffingLength ,
				 WeightSC  ,
				 [Weight] ,
				 SpindleSC  ,
				 Spindle ,
				 ProductionGoodSC  ,
				 ProductionGood ,
				 ProductionTotalSC  ,
				 ProductionTotal 
			)
			VALUES
			(
                 @ProductCode  ,
				 @StretchDSC  ,
				 @StretchD ,
				 @StretchDErr ,
				 @StretchHSC  ,
				 @StretchH ,
				 @StretchHErr ,
				 @StretchNSC  ,
				 @StretchN ,
				 @StretchNErr ,
				 @TempDSC  ,
				 @TempD ,
				 @TempDErr ,
				 @TempHNSC  ,
				 @TempHN ,
				 @TempHNErr ,
				 @SpeedSC  ,
				 @Speed ,
				 @SpeedErr ,
				 @TreatSC  ,
				 @Treat ,
				 @DoffingLengthSC  ,
				 @DoffingLength ,
				 @WeightSC  ,
				 @Weight ,
				 @SpindleSC  ,
				 @Spindle ,
				 @ProductionGoodSC  ,
				 @ProductionGood ,
				 @ProductionTotalSC  ,
				 @ProductionTotal 
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


/*********** Script Update Date: 2024-01-13  ***********/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetProductionRecord]
(
  @ProductCode nvarchar(30) = NULL
  ,@LotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT RecordDate ,
		ProcessHS ,
		ProcessDIP ,
		Customer ,
		[Counter] ,
		CounterErr ,
		CordStructure ,
		ProductCode ,
		LotNo ,
		Bath1SolutionName ,
		Bath1NipFront ,
		Bath1NipBack ,
		Bath1NipBackErr ,
		Bath2SolutionName ,
		Bath2NipFront ,
		Bath2NipBack ,
		Bath2NipBackErr ,
		Sofner ,
		DarwNip ,
		PaperTubeColorUse ,
		TensionD ,
		TensionH ,
		TensionN ,
		TensionWinder ,
		GasBefore ,
		GasAfter ,
		GasTotal ,
		CoolingWarterBefore ,
		CoolingWarterAfter ,
		CoolingWarterTotal ,
		AirPressureBefore ,
		AirPressureAfter ,
		AirPressureTotal ,
		Bath1Before ,
		Bath1After ,
		Bath1WPU ,
		Bath2Before ,
		Bath2After ,
		Bath2WPU ,
		TempDZone1 ,
		TempDZone2 ,
		TempDZone3 ,
		TempHNZone1 ,
		TempHNZone2 ,
		TempHNZone3 ,
		TempHNZone4 ,
		TempHNZone5 ,
		TempHNZone6 ,
		SectionHead ,
		SectionManager 
     FROM ProductionRecord
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
	 And  LotNo = COALESCE(@LotNo, LotNo)
     ORDER BY ProductCode;

END;

GO


/*********** Script Update Date: 2024-01-13  ***********/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetProductionRecordDetail]
(
  @ProductCode nvarchar(30) = NULL
  ,@LotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
        LotNo ,
		DoffingDate ,
		DoffingNo ,
		StretchD ,
		StretchH ,
		StretchN ,
		TempD ,
		TempHN ,
		Speed ,
		Treat ,
		DoffingLength ,
		[Weight] ,
		Spindle ,
		ProductionGood ,
		ProductionTotal ,
		ProductionCut ,
		PositionCordCutCreel ,
		PositionCordCutCS ,
		PositionCordCutWinder ,
		PositionCordCutWasteYarn ,
		CheckTimeStart ,
		CheckTimeFinish ,
		CheckTimeRecord ,
		Opertor ,
		Leader 
     FROM ProductionRecordDetail
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
	 And LotNo = COALESCE(@LotNo, LotNo)
     ORDER BY ProductCode;

END;

GO


/*********** Script Update Date: 2024-01-13  ***********/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetProductionRecordStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
        StretchDSC ,
		StretchD ,
		StretchDErr ,
		StretchHSC ,
		StretchH ,
		StretchHErr ,
		StretchNSC ,
		StretchN ,
		StretchNErr ,
		TempDSC ,
		TempD ,
		TempDErr ,
		TempHNSC ,
		TempHN ,
		TempHNErr ,
		SpeedSC ,
		Speed ,
		SpeedErr ,
		TreatSC ,
		Treat ,
		DoffingLengthSC ,
		DoffingLength ,
		WeightSC ,
		[Weight] ,
		SpindleSC ,
		Spindle ,
		ProductionGoodSC ,
		ProductionGood ,
		ProductionTotalSC ,
		ProductionTotal 
     FROM ProductionRecordStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetProductionRecordDetail]    Script Date: 14/1/2567 2:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetProductionRecordDetail]
(
  @ProductCode nvarchar(30) = NULL
  ,@LotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode ,
        LotNo ,
		DoffingDate ,
		DoffingNo ,
		StretchD ,
		StretchH ,
		StretchN ,
		TempD ,
		TempHN ,
		Speed ,
		Treat ,
		DoffingLength ,
		[Weight] ,
		Spindle ,
		ProductionGood ,
		ProductionTotal ,
		ProductionCut ,
		PositionCordCutCreel ,
		PositionCordCutCS ,
		PositionCordCutWinder ,
		PositionCordCutWasteYarn ,
		CheckTimeStart ,
		CheckTimeFinish ,
		CheckTimeRecord ,
		Opertor ,
		Leader 
     FROM ProductionRecordDetail
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
	 And LotNo = COALESCE(@LotNo, LotNo)
     ORDER BY ProductCode ,DoffingNo;

END;

GO


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveProductionRecordDetail]    Script Date: 14/1/2567 2:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveProductionRecordDetail] (
    @ProductCode nvarchar (30) ,
	@LotNo nvarchar (30) ,
	@DoffingDate datetime  ,
	@DoffingNo int  ,
	@StretchD decimal (18, 3) ,
	@StretchH decimal (18, 3) ,
	@StretchN decimal (18, 3) ,
	@TempD decimal (18, 3) ,
	@TempHN decimal (18, 3) ,
	@Speed decimal (18, 3) ,
	@Treat decimal (18, 3) ,
	@DoffingLength decimal (18, 3) ,
	@Weight decimal (18, 3) ,
	@Spindle decimal (18, 3) ,
	@ProductionGood decimal (18, 3) ,
	@ProductionTotal decimal (18, 3) ,
	@ProductionCut decimal (18, 3) ,
	@PositionCordCutCreel decimal (18, 3) ,
	@PositionCordCutCS decimal (18, 3) ,
	@PositionCordCutWinder decimal (18, 3) ,
	@PositionCordCutWasteYarn decimal (18, 3) ,
	@CheckTimeStart datetime  ,
	@CheckTimeFinish datetime  ,
	@CheckTimeRecord datetime  ,
	@Opertor nvarchar (100) ,
	@Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ProductionRecordDetail WHERE ProductCode = @ProductCode And LotNo = @LotNo And DoffingNo = @DoffingNo)
        BEGIN
            UPDATE ProductionRecordDetail 
               SET  DoffingDate = @DoffingDate  ,
					DoffingNo = @DoffingNo ,
					StretchD = @StretchD ,
					StretchH = @StretchH ,
					StretchN = @StretchN ,
					TempD = @TempD ,
					TempHN = @TempHN ,
					Speed = @Speed ,
					Treat = @Treat ,
					DoffingLength = @DoffingLength ,
					[Weight] = @Weight ,
					Spindle = @Spindle ,
					ProductionGood = @ProductionGood ,
					ProductionTotal = @ProductionTotal ,
					ProductionCut = @ProductionCut ,
					PositionCordCutCreel = @PositionCordCutCreel ,
					PositionCordCutCS = @PositionCordCutCS ,
					PositionCordCutWinder = @PositionCordCutWinder ,
					PositionCordCutWasteYarn = @PositionCordCutWasteYarn ,
					CheckTimeStart = @CheckTimeStart  ,
					CheckTimeFinish = @CheckTimeFinish  ,
					CheckTimeRecord = @CheckTimeRecord  ,
					Opertor = @Opertor ,
					Leader = @Leader   
             WHERE  ProductCode = @ProductCode  And LotNo = @LotNo And DoffingNo = @DoffingNo
        END
        ELSE
        BEGIN
			INSERT INTO ProductionRecordDetail
		    (
				ProductCode ,
				LotNo ,
				DoffingDate ,
				DoffingNo ,
				StretchD ,
				StretchH ,
				StretchN ,
				TempD ,
				TempHN ,
				Speed ,
				Treat ,
				DoffingLength ,
				[Weight] ,
				Spindle ,
				ProductionGood ,
				ProductionTotal ,
				ProductionCut ,
				PositionCordCutCreel ,
				PositionCordCutCS ,
				PositionCordCutWinder ,
				PositionCordCutWasteYarn ,
				CheckTimeStart ,
				CheckTimeFinish ,
				CheckTimeRecord ,
				Opertor ,
		Leader 
			)
			VALUES
			(
                @ProductCode ,
				@LotNo ,
				@DoffingDate ,
				@DoffingNo ,
				@StretchD ,
				@StretchH ,
				@StretchN ,
				@TempD ,
				@TempHN ,
				@Speed ,
				@Treat ,
				@DoffingLength ,
				@Weight ,
				@Spindle ,
				@ProductionGood ,
				@ProductionTotal ,
				@ProductionCut ,
				@PositionCordCutCreel ,
				@PositionCordCutCS ,
				@PositionCordCutWinder ,
				@PositionCordCutWasteYarn ,
				@CheckTimeStart  ,
				@CheckTimeFinish  ,
				@CheckTimeRecord  ,
				@Opertor ,
				@Leader 
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


/*********** Script Update Date: 2024-01-13  ***********/
EXEC DROPTABLE 'DIPTimeTableStd'
GO

EXEC DROPTABLE 'DIPTimeTable'
GO

EXEC DROPTABLE 'S8BeforeCondition'
GO



/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  Table [dbo].[DIPTimeTableStd]    Script Date: 1/11/2024 1:30:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPTimeTableStd](
	[ProductCode] [nvarchar](30) NULL,
	[S7BobbinSC] [bit] NULL,
	[S8CoolingWaterSystemBath1SC] [bit] NULL,
	[S8CoolingWaterSystemBath1Min] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Max] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2SC] [bit] NULL,
	[S8CoolingWaterSystemBath2Min] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Max] [decimal](18, 3) NULL,
	[S8ChemicalWorkSC] [bit] NULL,
	[S8ChemicalFilterSC] [bit] NULL,
	[S8SpeedSC] [bit] NULL,
	[S8Speed] [decimal](18, 3) NULL,
	[S8SpeedErr] [decimal](18, 3) NULL,
	[S8StretchDSC] [bit] NULL,
	[S8StretchD] [decimal](18, 3) NULL,
	[S8StretchDErr] [decimal](18, 3) NULL,
	[S8StretchHSC] [bit] NULL,
	[S8StretchH] [decimal](18, 3) NULL,
	[S8StretchHErr] [decimal](18, 3) NULL,
	[S8StretchNSC] [bit] NULL,
	[S8StretchN] [decimal](18, 3) NULL,
	[S8StretchNErr] [decimal](18, 3) NULL,
	[S8TempDSC] [bit] NULL,
	[S8TempD] [decimal](18, 3) NULL,
	[S8TempDErr] [decimal](18, 3) NULL,
	[S8TempHNSC] [bit] NULL,
	[S8TempHN] [decimal](18, 3) NULL,
	[S8TempHNErr] [decimal](18, 3) NULL,
	[S9GlideStatusSC] [bit] NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  Table [dbo].[DIPTimeTable]    Script Date: 1/14/2024 22:03:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPTimeTable](
	[ProductCode] [nvarchar](30) NULL,
	[RowType] [int] NULL,
	[PeriodTime] [datetime] NULL,
	[LotNo] [nvarchar](50) NULL,
	[S7BobbinSC] [bit] NULL,
	[S7Bobbin] [bit] NULL,
	[S8CoolingWaterSystemBath1SC] [bit] NULL,
	[S8CoolingWaterSystemBath1Min] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Max] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Value] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2SC] [bit] NULL,
	[S8CoolingWaterSystemBath2] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Min] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Max] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Value] [decimal](18, 3) NULL,
	[S8ChemicalWorkSC] [bit] NULL,
	[S8ChemicalWork] [bit] NULL,
	[S8ChemicalFilterSC] [bit] NULL,
	[S8ChemicalFilter] [bit] NULL,
	[S8SpeedSC] [bit] NULL,
	[S8Speed] [decimal](18, 3) NULL,
	[S8SpeedErr] [decimal](18, 3) NULL,
	[S8SpeedValue] [decimal](18, 3) NULL,
	[S8StretchDSC] [bit] NULL,
	[S8StretchD] [decimal](18, 3) NULL,
	[S8StretchDErr] [decimal](18, 3) NULL,
	[S8StretchDValue] [decimal](18, 3) NULL,
	[S8StretchHSC] [bit] NULL,
	[S8StretchH] [decimal](18, 3) NULL,
	[S8StretchHErr] [decimal](18, 3) NULL,
	[S8StretchHValue] [decimal](18, 3) NULL,
	[S8StretchNSC] [bit] NULL,
	[S8StretchN] [decimal](18, 3) NULL,
	[S8StretchNErr] [decimal](18, 3) NULL,
	[S8StretchNValue] [decimal](18, 3) NULL,
	[S8TempDSC] [bit] NULL,
	[S8TempD] [decimal](18, 3) NULL,
	[S8TempDErr] [decimal](18, 3) NULL,
	[S8TempDValue] [decimal](18, 3) NULL,
	[S8TempHNSC] [bit] NULL,
	[S8TempHN] [decimal](18, 3) NULL,
	[S8TempHNErr] [decimal](18, 3) NULL,
	[S8TempHNValue] [decimal](18, 3) NULL,
	[S9GlideStatusSC] [bit] NULL,
	[S9GlideStatus] [bit] NULL,
	[Remark] [nvarchar](200) NULL,
	[CheckBy] [nvarchar](100) NULL,
	[CheckDate] [datetime] NULL
) ON [PRIMARY]

GO



/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  Table [dbo].[S8BeforeCondition]    Script Date: 1/15/2024 3:12:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8BeforeCondition](
	[S8BeforeId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NOT NULL,
	[ProductCode] [nvarchar](30) NULL,
	[RowType] [int] NOT NULL,
	[LotNo] [nvarchar](50) NULL,
	[SolutionNameBath1SC] [bit] NULL,
	[SolutionNameBath1] [nvarchar](50) NULL,
	[SolutionNameBath1Value] [nvarchar](50) NULL,
	[SolutionNameBath2SC] [bit] NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
	[SolutionNameBath2Value] [nvarchar](50) NULL,
	[TempJacketDrumBath1SC] [bit] NULL,
	[TempJacketDrumBath1Min] [decimal](18, 3) NULL,
	[TempJacketDrumBath1Max] [decimal](18, 3) NULL,
	[TempJacketDrumBath1] [decimal](18, 3) NULL,
	[TempJacketDrumBath2SC] [bit] NULL,
	[TempJacketDrumBath2Min] [decimal](18, 3) NULL,
	[TempJacketDrumBath2Max] [decimal](18, 3) NULL,
	[TempJacketDrumBath2] [decimal](18, 3) NULL,
	[TempChemicalBath1SC] [bit] NULL,
	[TempChemicalBath1Min] [decimal](18, 3) NULL,
	[TempChemicalBath1Max] [decimal](18, 3) NULL,
	[TempChemicalBath1] [decimal](18, 3) NULL,
	[TempChemicalBath2SC] [bit] NULL,
	[TempChemicalBath2Min] [decimal](18, 3) NULL,
	[TempChemicalBath2Max] [decimal](18, 3) NULL,
	[TempChemicalBath2] [decimal](18, 3) NULL,
	[StretchDSC] [bit] NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchDErr] [decimal](18, 3) NULL,
	[StretchDValue] [decimal](18, 3) NULL,
	[StretchHSC] [bit] NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchHErr] [decimal](18, 3) NULL,
	[StretchHValue] [decimal](18, 3) NULL,
	[StretchNSC] [bit] NULL,
	[StretchN] [decimal](18, 3) NULL,
	[StretchNErr] [decimal](18, 3) NULL,
	[StretchNValue] [decimal](18, 3) NULL,
	[TempDSC] [bit] NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempDErr] [decimal](18, 3) NULL,
	[TempDValue] [decimal](18, 3) NULL,
	[TempHNSC] [bit] NULL,
	[TempHN] [decimal](18, 3) NULL,
	[TempHNErr] [decimal](18, 3) NULL,
	[TempHNValue] [decimal](18, 3) NULL,
	[SpeedSC] [bit] NULL,
	[Speed] [decimal](18, 3) NULL,
	[SpeedErr] [decimal](18, 3) NULL,
	[SpeedValue] [decimal](18, 3) NULL,
	[ExhaustFanDryerSC] [bit] NULL,
	[ExhaustFanDryer] [decimal](18, 3) NULL,
	[ExhaustFanDryerValue] [decimal](18, 3) NULL,
	[ExhaustFanHNSC] [bit] NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
	[ExhaustFanHNValue] [decimal](18, 3) NULL,
	[CleanBath1SC] [bit] NULL,
	[CleanBath1] [bit] NULL,
	[CleanBath2SC] [bit] NULL,
	[CleanBath2] [bit] NULL,
	[CleanFrontSC] [bit] NULL,
	[CleanFront] [bit] NULL,
	[CamboxSC] [bit] NULL,
	[Cambox] [bit] NULL,
	[CheckBy] [nvarchar](100) NULL,
	[CheckDate] [datetime] NULL,
	[VerifyBy] [nvarchar](100) NULL,
	[VerifyDate] [datetime] NULL,
 CONSTRAINT [PK_S8BeforeCondition] PRIMARY KEY CLUSTERED 
(
	[S8BeforeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPTimeTableStd]    Script Date: 1/11/2024 1:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetDIPTimeTableStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
        S7BobbinSC,
        S8CoolingWaterSystemBath1SC,
        S8CoolingWaterSystemBath1Min,
        S8CoolingWaterSystemBath1Max,
        S8CoolingWaterSystemBath2SC,
        S8CoolingWaterSystemBath2Min,
        S8CoolingWaterSystemBath2Max,
        S8ChemicalWorkSC,
        S8ChemicalFilterSC,
        S8SpeedSC,
        S8Speed,
        S8SpeedErr,
        S8StretchDSC,
        S8StretchD,
        S8StretchDErr,
        S8StretchHSC,
        S8StretchH,
        S8StretchHErr,
        S8StretchNSC,
        S8StretchN,
        S8StretchNErr,
        S8TempDSC,
        S8TempD,
        S8TempDErr,
        S8TempHNSC,
        S8TempHN,
        S8TempHNErr,
        S9GlideStatusSC
     FROM DIPTimeTableStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStd]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTableStd] (
    @ProductCode nvarchar (30) ,
	@S7BobbinSC bit  ,
	@S8CoolingWaterSystemBath1SC bit  ,
	@S8CoolingWaterSystemBath1Min decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Max decimal (18, 3) ,
	@S8CoolingWaterSystemBath2SC bit  ,
	@S8CoolingWaterSystemBath2Min decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Max decimal (18, 3) ,
	@S8ChemicalWorkSC bit ,
	@S8ChemicalFilterSC bit ,
	@S8SpeedSC bit  ,
	@S8Speed decimal (18, 3) ,
	@S8SpeedErr decimal (18, 3) ,
	@S8StretchDSC bit  ,
	@S8StretchD decimal (18, 3) ,
	@S8StretchDErr decimal (18, 3) ,
	@S8StretchHSC bit  ,
	@S8StretchH decimal (18, 3) ,
	@S8StretchHErr decimal (18, 3) ,
	@S8StretchNSC bit  ,
	@S8StretchN decimal (18, 3) ,
	@S8StretchNErr decimal (18, 3) ,
	@S8TempDSC bit  ,
	@S8TempD decimal (18, 3) ,
	@S8TempDErr decimal (18, 3) ,
	@S8TempHNSC bit  ,
	@S8TempHN decimal (18, 3) ,
	@S8TempHNErr decimal (18, 3) ,
	@S9GlideStatusSC bit  
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTableStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE DIPTimeTableStd 
               SET  ProductCode = @ProductCode ,
					S7BobbinSC = @S7BobbinSC ,
					S8CoolingWaterSystemBath1SC = @S8CoolingWaterSystemBath1SC ,
					S8CoolingWaterSystemBath1Min = @S8CoolingWaterSystemBath1Min ,
					S8CoolingWaterSystemBath1Max = @S8CoolingWaterSystemBath1Max ,
					S8CoolingWaterSystemBath2SC = @S8CoolingWaterSystemBath2SC ,
					S8CoolingWaterSystemBath2Min = @S8CoolingWaterSystemBath2Min ,
					S8CoolingWaterSystemBath2Max = @S8CoolingWaterSystemBath2Max ,
					S8ChemicalWorkSC = @S8ChemicalWorkSC ,
					S8ChemicalFilterSC = @S8ChemicalFilterSC ,
					S8SpeedSC = @S8SpeedSC ,
					S8Speed = @S8Speed ,
					S8SpeedErr = @S8SpeedErr ,
					S8StretchDSC = @S8StretchDSC ,
					S8StretchD = @S8StretchD ,
					S8StretchDErr = @S8StretchDErr ,
					S8StretchHSC = @S8StretchHSC ,
					S8StretchH = @S8StretchH ,
					S8StretchHErr = @S8StretchHErr ,
					S8StretchNSC = @S8StretchNSC ,
					S8StretchN = @S8StretchN ,
					S8StretchNErr = @S8StretchNErr ,
					S8TempDSC = @S8TempDSC ,
					S8TempD = @S8TempD ,
					S8TempDErr = @S8TempDErr ,
					S8TempHNSC = @S8TempHNSC ,
					S8TempHN = @S8TempHN ,
					S8TempHNErr = @S8TempHNErr ,
					S9GlideStatusSC  = @S9GlideStatusSC
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTableStd
		    (
				ProductCode ,
				S7BobbinSC ,
				S8CoolingWaterSystemBath1SC ,
				S8CoolingWaterSystemBath1Min ,
				S8CoolingWaterSystemBath1Max ,
				S8CoolingWaterSystemBath2SC ,
				S8CoolingWaterSystemBath2Min ,
				S8CoolingWaterSystemBath2Max ,
				S8ChemicalWorkSC ,
				S8ChemicalFilterSC ,
				S8SpeedSC ,
				S8Speed ,
				S8SpeedErr ,
				S8StretchDSC ,
				S8StretchD ,
				S8StretchDErr ,
				S8StretchHSC ,
				S8StretchH ,
				S8StretchHErr ,
				S8StretchNSC ,
				S8StretchN ,
				S8StretchNErr ,
				S8TempDSC ,
				S8TempD ,
				S8TempDErr ,
				S8TempHNSC ,
				S8TempHN ,
				S8TempHNErr ,
				S9GlideStatusSC
			)
			VALUES
			(
                @ProductCode ,
				@S7BobbinSC ,
				@S8CoolingWaterSystemBath1SC ,
				@S8CoolingWaterSystemBath1Min ,
				@S8CoolingWaterSystemBath1Max ,
				@S8CoolingWaterSystemBath2SC ,
				@S8CoolingWaterSystemBath2Min ,
				@S8CoolingWaterSystemBath2Max ,
				@S8ChemicalWorkSC ,
				@S8ChemicalFilterSC ,
				@S8SpeedSC ,
				@S8Speed ,
				@S8SpeedErr ,
				@S8StretchDSC ,
				@S8StretchD ,
				@S8StretchDErr ,
				@S8StretchHSC ,
				@S8StretchH ,
				@S8StretchHErr ,
				@S8StretchNSC ,
				@S8StretchN ,
				@S8StretchNErr ,
				@S8TempDSC ,
				@S8TempD ,
				@S8TempDErr ,
				@S8TempHNSC ,
				@S8TempHN ,
				@S8TempHNErr ,
				@S9GlideStatusSC 
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


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPTimeTables]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetDIPTimeTables]
(
  @Date datetime
)
AS
BEGIN
DECLARE @Today int
DECLARE @Nextday int
DECLARE @StartTime datetime
DECLARE @EndTime datetime

    SET @StartTime = NULL;
    SET @EndTime = NULL;

    IF (@Date IS NOT NULL)
    BEGIN
        SET @Today = DATEDIFF(dd, 0, @Date);
        SET @Nextday = DATEDIFF(dd, -1, @Date);

        SET @StartTime = DATEADD(HH, 8, @Today);
        SET @EndTime = DATEADD(HH, 8, @Nextday);
    END

    SELECT ProductCode,
           RowType, -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
           PeriodTime,
           LotNo,
           S7BobbinSC,
           S7Bobbin,
           S8CoolingWaterSystemBath1SC,
           S8CoolingWaterSystemBath1Min,
           S8CoolingWaterSystemBath1Max,
           S8CoolingWaterSystemBath1Value,
           S8CoolingWaterSystemBath2SC,
           S8CoolingWaterSystemBath2Min,
           S8CoolingWaterSystemBath2Max,
           S8CoolingWaterSystemBath2Value,
           S8ChemicalWorkSC,
           S8ChemicalWork,
           S8ChemicalFilterSC,
           S8ChemicalFilter,
           S8SpeedSC,
           S8Speed,
           S8SpeedErr,
           S8SpeedValue,
           S8StretchDSC,
           S8StretchD,
           S8StretchDErr,
           S8StretchDValue,
           S8StretchHSC,
           S8StretchH,
           S8StretchHErr,
           S8StretchHValue,
           S8StretchNSC,
           S8StretchN,
           S8StretchNErr,
           S8StretchNValue,
           S8TempDSC,
           S8TempD,
           S8TempDErr,
           S8TempDValue,
           S8TempHNSC,
           S8TempHN,
           S8TempHNErr,
           S8TempHNValue,
           S9GlideStatusSC,
           S9GlideStatus,
           [Remark],
           CheckBy,
           CheckDate
     FROM DIPTimeTable
     WHERE PeriodTime >= @StartTime AND PeriodTime < @EndTime
     ORDER BY RowType, PeriodTime;

END

GO


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTable]    Script Date: 1/11/2024 1:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTable] (
    @ProductCode nvarchar (30) ,
    @RowType int , -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
    @PeriodTime datetime ,
    @LotNo nvarchar(50),
	@S7BobbinSC bit  ,
	@S7Bobbin bit  ,
	@S8CoolingWaterSystemBath1SC bit  ,
	@S8CoolingWaterSystemBath1Min decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Max decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Value decimal (18, 3) ,
	@S8CoolingWaterSystemBath2SC bit  ,
	@S8CoolingWaterSystemBath2Min decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Max decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Value decimal (18, 3) ,
	@S8ChemicalWorkSC bit ,
	@S8ChemicalWork nvarchar (30) ,
	@S8ChemicalFilterSC bit ,
	@S8ChemicalFilter nvarchar (30) ,
	@S8SpeedSC bit ,
	@S8Speed decimal (18, 3) ,
	@S8SpeedErr decimal (18, 3) ,
	@S8SpeedValue decimal (18, 3) ,
	@S8StretchDSC bit ,
	@S8StretchD decimal (18, 3) ,
	@S8StretchDErr decimal (18, 3) ,
	@S8StretchDValue decimal (18, 3) ,
	@S8StretchHSC bit ,
	@S8StretchH decimal (18, 3) ,
	@S8StretchHErr decimal (18, 3) ,
	@S8StretchHValue decimal (18, 3) ,
	@S8StretchNSC bit ,
	@S8StretchN decimal (18, 3) ,
	@S8StretchNErr decimal (18, 3) ,
	@S8StretchNValue decimal (18, 3) ,
	@S8TempDSC bit ,
	@S8TempD decimal (18, 3) ,
	@S8TempDErr decimal (18, 3) ,
	@S8TempDValue decimal (18, 3) ,
	@S8TempHNSC bit ,
	@S8TempHN decimal (18, 3) ,
	@S8TempHNErr decimal (18, 3) ,
	@S8TempHNValue decimal (18, 3) ,
	@S9GlideStatusSC bit ,
	@S9GlideStatus bit ,
    @Remark nvarchar(200) ,
    @CheckBy nvarchar(100),
    @CheckDate datetime
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTable
                    WHERE PeriodTime = @PeriodTime
                      AND RowType = @RowType
                      AND ProductCode = @ProductCode
                      AND LotNo = @LotNo)
        BEGIN
            UPDATE DIPTimeTable
               SET  ProductCode = @ProductCode ,
                    RowType = @RowType ,
                    PeriodTime = @PeriodTime ,
                    LotNo = @LotNo ,
					S7BobbinSC = @S7BobbinSC ,
					S7Bobbin = @S7Bobbin ,
					S8CoolingWaterSystemBath1SC = @S8CoolingWaterSystemBath1SC ,
					S8CoolingWaterSystemBath1Min = @S8CoolingWaterSystemBath1Min ,
					S8CoolingWaterSystemBath1Max = @S8CoolingWaterSystemBath1Max ,
					S8CoolingWaterSystemBath1Value = @S8CoolingWaterSystemBath1Value ,
					S8CoolingWaterSystemBath2SC = @S8CoolingWaterSystemBath2SC ,
					S8CoolingWaterSystemBath2Min = @S8CoolingWaterSystemBath2Min ,
					S8CoolingWaterSystemBath2Max = @S8CoolingWaterSystemBath2Max ,
					S8CoolingWaterSystemBath2Value = @S8CoolingWaterSystemBath2Value ,
					S8ChemicalWorkSC = @S8ChemicalWorkSC ,
					S8ChemicalWork = @S8ChemicalWork ,
					S8ChemicalFilterSC = @S8ChemicalFilterSC ,
					S8ChemicalFilter = @S8ChemicalFilter ,
					S8SpeedSC = @S8SpeedSC ,
					S8Speed = @S8Speed ,
					S8SpeedErr = @S8SpeedErr ,
					S8SpeedValue = @S8SpeedValue ,
					S8StretchDSC = @S8StretchDSC ,
					S8StretchD = @S8StretchD ,
					S8StretchDErr = @S8StretchDErr ,
					S8StretchDValue = @S8StretchDValue ,
					S8StretchHSC = @S8StretchHSC ,
					S8StretchH = @S8StretchH ,
					S8StretchHErr = @S8StretchHErr ,
					S8StretchHValue = @S8StretchHValue ,
					S8StretchNSC = @S8StretchNSC ,
					S8StretchN = @S8StretchN ,
					S8StretchNErr = @S8StretchNErr ,
					S8StretchNValue = @S8StretchNValue ,
					S8TempDSC = @S8TempDSC ,
					S8TempD = @S8TempD ,
					S8TempDErr = @S8TempDErr ,
					S8TempDValue = @S8TempDValue ,
					S8TempHNSC = @S8TempHNSC ,
					S8TempHN = @S8TempHN ,
					S8TempHNErr = @S8TempHNErr ,
					S8TempHNValue = @S8TempHNValue ,
					S9GlideStatusSC  = @S9GlideStatusSC ,
					S9GlideStatus  = @S9GlideStatus ,
                    [Remark] = @Remark,
                    CheckBy = @CheckBy,
                    CheckDate = @CheckDate
             WHERE PeriodTime = @PeriodTime
               AND RowType = @RowType
               AND ProductCode = @ProductCode
               AND LotNo = @LotNo
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTable
		    (
				ProductCode ,
                RowType ,
                PeriodTime ,
                LotNo ,
				S7BobbinSC ,
				S7Bobbin ,
				S8CoolingWaterSystemBath1SC ,
				S8CoolingWaterSystemBath1Min ,
				S8CoolingWaterSystemBath1Max ,
				S8CoolingWaterSystemBath1Value ,
				S8CoolingWaterSystemBath2SC ,
				S8CoolingWaterSystemBath2Min ,
				S8CoolingWaterSystemBath2Max ,
				S8CoolingWaterSystemBath2Value ,
				S8ChemicalWorkSC ,
				S8ChemicalWork ,
				S8ChemicalFilterSC ,
				S8ChemicalFilter ,
				S8SpeedSC ,
				S8Speed ,
				S8SpeedErr ,
				S8SpeedValue ,
				S8StretchDSC ,
				S8StretchD ,
				S8StretchDErr ,
				S8StretchDValue ,
				S8StretchHSC ,
				S8StretchH ,
				S8StretchHErr ,
				S8StretchHValue ,
				S8StretchNSC ,
				S8StretchN ,
				S8StretchNErr ,
				S8StretchNValue ,
				S8TempDSC ,
				S8TempD ,
				S8TempDErr ,
				S8TempDValue ,
				S8TempHNSC ,
				S8TempHN ,
				S8TempHNErr ,
				S8TempHNValue ,
				S9GlideStatusSC ,
				S9GlideStatus ,
                [Remark],
                CheckBy,
                CheckDate
			)
			VALUES
			(
                @ProductCode ,
                @RowType ,
                @PeriodTime ,
                @LotNo ,
				@S7BobbinSC ,
				@S7Bobbin ,
				@S8CoolingWaterSystemBath1SC ,
				@S8CoolingWaterSystemBath1Min ,
				@S8CoolingWaterSystemBath1Max ,
				@S8CoolingWaterSystemBath1Value ,
				@S8CoolingWaterSystemBath2SC ,
				@S8CoolingWaterSystemBath2Min ,
				@S8CoolingWaterSystemBath2Max ,
				@S8CoolingWaterSystemBath2Value ,
				@S8ChemicalWorkSC ,
				@S8ChemicalWork ,
				@S8ChemicalFilterSC ,
				@S8ChemicalFilter ,
				@S8SpeedSC ,
				@S8Speed ,
				@S8SpeedErr ,
				@S8SpeedValue ,
				@S8StretchDSC ,
				@S8StretchD ,
				@S8StretchDErr ,
				@S8StretchDValue ,
				@S8StretchHSC ,
				@S8StretchH ,
				@S8StretchHErr ,
				@S8StretchHValue ,
				@S8StretchNSC ,
				@S8StretchN ,
				@S8StretchNErr ,
				@S8StretchNValue ,
				@S8TempDSC ,
				@S8TempD ,
				@S8TempDErr ,
				@S8TempDValue ,
				@S8TempHNSC ,
				@S8TempHN ,
				@S8TempHNErr ,
				@S8TempHNValue ,
				@S9GlideStatusSC , 
				@S9GlideStatus , 
                @Remark,
                @CheckBy,
                @CheckDate
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


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStdVRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPTimeTableStdVRow] (
    @ProductCode nvarchar (30) ,
    @Date datetime,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @Today datetime = NULL
DECLARE @RowType int = -2
	BEGIN TRY
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM DIPTimeTable 
                        WHERE ProductCode = @ProductCode
                          AND PeriodTime = @Today
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO DIPTimeTable
            (
                [RowType]
                ,[PeriodTime]
                ,[LotNo]
                ,[ProductCode]
                ,[S7BobbinSC]
                ,[S8CoolingWaterSystemBath1SC]
                ,[S8CoolingWaterSystemBath1Min]
                ,[S8CoolingWaterSystemBath1Max]
                ,[S8CoolingWaterSystemBath2SC]
                ,[S8CoolingWaterSystemBath2Min]
                ,[S8CoolingWaterSystemBath2Max]
                ,[S8ChemicalWorkSC]
                ,[S8ChemicalFilterSC]
                ,[S8SpeedSC]
                ,[S8Speed]
                ,[S8SpeedErr]
                ,[S8StretchDSC]
                ,[S8StretchD]
                ,[S8StretchDErr]
                ,[S8StretchHSC]
                ,[S8StretchH]
                ,[S8StretchHErr]
                ,[S8StretchNSC]
                ,[S8StretchN]
                ,[S8StretchNErr]
                ,[S8TempDSC]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            )
            SELECT RowType = @RowType
                , PeriodTime = @Today
                , LotNo = @LotNo
                ,[ProductCode]
                ,[S7BobbinSC]
                ,[S8CoolingWaterSystemBath1SC]
                ,[S8CoolingWaterSystemBath1Min]
                ,[S8CoolingWaterSystemBath1Max]
                ,[S8CoolingWaterSystemBath2SC]
                ,[S8CoolingWaterSystemBath2Min]
                ,[S8CoolingWaterSystemBath2Max]
                ,[S8ChemicalWorkSC]
                ,[S8ChemicalFilterSC]
                ,[S8SpeedSC]
                ,[S8Speed]
                ,[S8SpeedErr]
                ,[S8StretchDSC]
                ,[S8StretchD]
                ,[S8StretchDErr]
                ,[S8StretchHSC]
                ,[S8StretchH]
                ,[S8StretchHErr]
                ,[S8StretchNSC]
                ,[S8StretchN]
                ,[S8StretchNErr]
                ,[S8TempDSC]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            FROM DIPTimeTableStd 
            WHERE ProductCode = @ProductCode;
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


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStdBRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPTimeTableStdBRow] (
    @ProductCode nvarchar (30) ,
    @Date datetime,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @Today datetime = NULL
DECLARE @RowType int = -1
	BEGIN TRY
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM DIPTimeTable 
                        WHERE ProductCode = @ProductCode
                          AND PeriodTime = @Today
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO DIPTimeTable
            (
                [RowType]
                ,[PeriodTime]
                ,[LotNo]
                ,[ProductCode]
                ,[S7BobbinSC]
                ,[S8CoolingWaterSystemBath1SC]
                ,[S8CoolingWaterSystemBath1Min]
                ,[S8CoolingWaterSystemBath1Max]
                ,[S8CoolingWaterSystemBath2SC]
                ,[S8CoolingWaterSystemBath2Min]
                ,[S8CoolingWaterSystemBath2Max]
                ,[S8ChemicalWorkSC]
                ,[S8ChemicalFilterSC]
                ,[S8SpeedSC]
                ,[S8Speed]
                ,[S8SpeedErr]
                ,[S8StretchDSC]
                ,[S8StretchD]
                ,[S8StretchDErr]
                ,[S8StretchHSC]
                ,[S8StretchH]
                ,[S8StretchHErr]
                ,[S8StretchNSC]
                ,[S8StretchN]
                ,[S8StretchNErr]
                ,[S8TempDSC]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            )
            SELECT RowType = @RowType
                , PeriodTime = @Today
                , LotNo = @LotNo
                ,[ProductCode]
                ,[S7BobbinSC]
                ,[S8CoolingWaterSystemBath1SC]
                ,[S8CoolingWaterSystemBath1Min]
                ,[S8CoolingWaterSystemBath1Max]
                ,[S8CoolingWaterSystemBath2SC]
                ,[S8CoolingWaterSystemBath2Min]
                ,[S8CoolingWaterSystemBath2Max]
                ,[S8ChemicalWorkSC]
                ,[S8ChemicalFilterSC]
                ,[S8SpeedSC]
                ,[S8Speed]
                ,[S8SpeedErr]
                ,[S8StretchDSC]
                ,[S8StretchD]
                ,[S8StretchDErr]
                ,[S8StretchHSC]
                ,[S8StretchH]
                ,[S8StretchHErr]
                ,[S8StretchNSC]
                ,[S8StretchN]
                ,[S8StretchNErr]
                ,[S8TempDSC]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            FROM DIPTimeTableStd 
            WHERE ProductCode = @ProductCode;
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


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStdCFRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPTimeTableStdCFRow] (
    @ProductCode nvarchar (30) ,
    @Date datetime,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @Today datetime = NULL
DECLARE @RowType int = 0
	BEGIN TRY
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM DIPTimeTable 
                        WHERE ProductCode = @ProductCode
                          AND PeriodTime = @Today
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO DIPTimeTable
            (
                [RowType]
                ,[PeriodTime]
                ,[LotNo]
                ,[ProductCode]
                ,[S7BobbinSC]
                ,[S8CoolingWaterSystemBath1SC]
                ,[S8CoolingWaterSystemBath1Min]
                ,[S8CoolingWaterSystemBath1Max]
                ,[S8CoolingWaterSystemBath2SC]
                ,[S8CoolingWaterSystemBath2Min]
                ,[S8CoolingWaterSystemBath2Max]
                ,[S8ChemicalWorkSC]
                ,[S8ChemicalFilterSC]
                ,[S8SpeedSC]
                ,[S8Speed]
                ,[S8SpeedErr]
                ,[S8StretchDSC]
                ,[S8StretchD]
                ,[S8StretchDErr]
                ,[S8StretchHSC]
                ,[S8StretchH]
                ,[S8StretchHErr]
                ,[S8StretchNSC]
                ,[S8StretchN]
                ,[S8StretchNErr]
                ,[S8TempDSC]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            )
            SELECT RowType = @RowType
                , PeriodTime = @Today
                , LotNo = @LotNo
                ,[ProductCode]
                ,[S7BobbinSC]
                ,[S8CoolingWaterSystemBath1SC]
                ,[S8CoolingWaterSystemBath1Min]
                ,[S8CoolingWaterSystemBath1Max]
                ,[S8CoolingWaterSystemBath2SC]
                ,[S8CoolingWaterSystemBath2Min]
                ,[S8CoolingWaterSystemBath2Max]
                ,[S8ChemicalWorkSC]
                ,[S8ChemicalFilterSC]
                ,[S8SpeedSC]
                ,[S8Speed]
                ,[S8SpeedErr]
                ,[S8StretchDSC]
                ,[S8StretchD]
                ,[S8StretchDErr]
                ,[S8StretchHSC]
                ,[S8StretchH]
                ,[S8StretchHErr]
                ,[S8StretchNSC]
                ,[S8StretchN]
                ,[S8StretchNErr]
                ,[S8TempDSC]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            FROM DIPTimeTableStd 
            WHERE ProductCode = @ProductCode;
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


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8BeforeCondition]    Script Date: 1/12/2024 8:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8BeforeCondition] (
    @DIPPCId int ,
    @ProductCode nvarchar (30),
    @RowType int , -- -2 = STD (V)alue-- -1 = STD (B)ool, 0 = CONF, 1 = DATA
	@LotNo nvarchar (50),
	@SolutionNameBath1SC bit,
	@SolutionNameBath1 nvarchar (50),
    @SolutionNameBath1Value nvarchar (50),
	@SolutionNameBath2SC bit,
	@SolutionNameBath2 nvarchar (50),
    @SolutionNameBath2Value nvarchar (50),
	@TempJacketDrumBath1SC bit,
	@TempJacketDrumBath1Min decimal(18, 3),
	@TempJacketDrumBath1Max decimal(18, 3),
	@TempJacketDrumBath1 decimal(18, 3),
	@TempJacketDrumBath2SC bit,
	@TempJacketDrumBath2Min decimal(18, 3),
	@TempJacketDrumBath2Max decimal(18, 3),
	@TempJacketDrumBath2 decimal(18, 3),
	@TempChemicalBath1SC bit,
	@TempChemicalBath1Min decimal(18, 3),
	@TempChemicalBath1Max decimal(18, 3),
	@TempChemicalBath1 decimal(18, 3),
	@TempChemicalBath2SC bit,
	@TempChemicalBath2Min decimal(18, 3),
	@TempChemicalBath2Max decimal(18, 3),
	@TempChemicalBath2 decimal(18, 3),
	@StretchDSC bit,
	@StretchD decimal(18, 3),
	@StretchDErr decimal(18, 3),
	@StretchDValue decimal(18, 3),
	@StretchHSC bit,
	@StretchH decimal(18, 3),
	@StretchHErr decimal(18, 3),
	@StretchHValue decimal(18, 3),
	@StretchNSC bit,
	@StretchN decimal(18, 3),
	@StretchNErr decimal(18, 3),
	@StretchNValue decimal(18, 3),
	@TempDSC bit,
	@TempD decimal(18, 3),
	@TempDErr decimal(18, 3),
	@TempDValue decimal(18, 3),
	@TempHNSC bit,
	@TempHN decimal(18, 3),
	@TempHNErr decimal(18, 3),
	@TempHNValue decimal(18, 3),
	@SpeedSC bit,
	@Speed decimal(18, 3),
	@SpeedErr decimal(18, 3),
	@SpeedValue decimal(18, 3),
	@ExhaustFanDryerSC bit,
	@ExhaustFanDryer decimal(18, 3),
	@ExhaustFanDryerValue decimal(18, 3),
	@ExhaustFanHNSC bit,
	@ExhaustFanHN decimal(18, 3),
	@ExhaustFanHNValue decimal(18, 3),
	@CleanBath1SC bit,
	@CleanBath1 bit,
	@CleanBath2SC bit,
	@CleanBath2 bit,
	@CleanFrontSC bit,
	@CleanFront bit,
	@CamboxSC bit,
	@Cambox bit,
    @CheckBy nvarchar(100),
    @CheckDate datetime,
    @VerifyBy nvarchar(100),
    @VerifyDate datetime,
    @S8BeforeId  int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S8BeforeCondition WHERE S8BeforeId = @S8BeforeId)
        BEGIN
            UPDATE S8BeforeCondition 
               SET  DIPPCId = @DIPPCId ,
					ProductCode = @ProductCode ,
					LotNo = @LotNo,
					SolutionNameBath1SC = @SolutionNameBath1SC ,
					SolutionNameBath1 = @SolutionNameBath1 ,
                    SolutionNameBath1Value = @SolutionNameBath1Value ,
					SolutionNameBath2SC = @SolutionNameBath2SC ,
					SolutionNameBath2 = @SolutionNameBath2 ,
                    SolutionNameBath2Value = @SolutionNameBath2Value ,
					TempJacketDrumBath1SC = @TempJacketDrumBath1SC ,
					TempJacketDrumBath1Min = @TempJacketDrumBath1Min ,
					TempJacketDrumBath1Max = @TempJacketDrumBath1Max ,
					TempJacketDrumBath1 = @TempJacketDrumBath1 ,
					TempJacketDrumBath2SC = @TempJacketDrumBath2SC ,
					TempJacketDrumBath2Min = @TempJacketDrumBath2Min ,
					TempJacketDrumBath2Max = @TempJacketDrumBath2Max ,
					TempJacketDrumBath2 = @TempJacketDrumBath2 ,
					TempChemicalBath1SC = @TempChemicalBath1SC ,
					TempChemicalBath1Min = @TempChemicalBath1Min ,
					TempChemicalBath1Max = @TempChemicalBath1Max ,
					TempChemicalBath1 = @TempChemicalBath1 ,
					TempChemicalBath2SC = @TempChemicalBath2SC ,
					TempChemicalBath2Min = @TempChemicalBath2Min ,
					TempChemicalBath2Max = @TempChemicalBath2Max ,
					TempChemicalBath2 = @TempChemicalBath2 ,
					StretchDSC = @StretchDSC ,
					StretchD = @StretchD ,
					StretchDErr = @StretchDErr ,
					StretchDValue = @StretchDValue ,
					StretchHSC = @StretchHSC ,
					StretchH = @StretchH ,
					StretchHErr = @StretchHErr ,
					StretchHValue = @StretchHValue ,
					StretchNSC = @StretchNSC ,
					StretchN = @StretchN ,
					StretchNErr = @StretchNErr ,
					StretchNValue = @StretchNValue ,
					TempDSC = @TempDSC ,
					TempD = @TempD ,
					TempDErr = @TempDErr ,
					TempDValue = @TempDValue ,
					TempHNSC = @TempHNSC ,
					TempHN = @TempHN ,
					TempHNErr = @TempHNErr ,
					TempHNValue = @TempHNValue ,
					SpeedSC = @SpeedSC ,
					Speed = @Speed ,
					SpeedErr = @SpeedErr ,
					SpeedValue = @SpeedValue ,
					ExhaustFanDryerSC = @ExhaustFanDryerSC ,
					ExhaustFanDryer = @ExhaustFanDryer ,
                    ExhaustFanDryerValue = @ExhaustFanDryerValue ,
					ExhaustFanHNSC = @ExhaustFanHNSC ,
					ExhaustFanHN = @ExhaustFanHN ,
                    ExhaustFanHNValue = @ExhaustFanHNValue ,
					CleanBath1SC = @CleanBath1SC ,
					CleanBath1 = @CleanBath1 ,
					CleanBath2SC = @CleanBath2SC ,
					CleanBath2 = @CleanBath2 ,
					CleanFrontSC = @CleanFrontSC ,
					CleanFront = @CleanFront ,
					CamboxSC  = @CamboxSC ,
					Cambox  = @Cambox ,
                    CheckBy  = @CheckBy ,
                    CheckDate  = @CheckDate ,
                    VerifyBy  = @VerifyBy ,
                    VerifyDate  = @VerifyDate 
             WHERE S8BeforeId = @S8BeforeId
        END
        ELSE
        BEGIN
			INSERT INTO S8BeforeCondition
		    (
				DIPPCId ,
				ProductCode ,
                RowType ,
				LotNo ,
				SolutionNameBath1SC ,
				SolutionNameBath1 ,
                SolutionNameBath1Value ,
				SolutionNameBath2SC ,
				SolutionNameBath2 ,
                SolutionNameBath2Value ,
				TempJacketDrumBath1SC ,
				TempJacketDrumBath1Min ,
				TempJacketDrumBath1Max ,
				TempJacketDrumBath1 ,
				TempJacketDrumBath2SC ,
				TempJacketDrumBath2Min ,
				TempJacketDrumBath2Max ,
				TempJacketDrumBath2 ,
				TempChemicalBath1SC ,
				TempChemicalBath1Min ,
				TempChemicalBath1Max ,
				TempChemicalBath1 ,
				TempChemicalBath2SC ,
				TempChemicalBath2Min ,
				TempChemicalBath2Max ,
				TempChemicalBath2 ,
				StretchDSC ,
				StretchD ,
				StretchDErr ,
				StretchDValue ,
				StretchHSC ,
				StretchH ,
				StretchHErr ,
				StretchHValue ,
				StretchNSC ,
				StretchN ,
				StretchNErr ,
				StretchNValue ,
				TempDSC ,
				TempD ,
				TempDErr ,
				TempDValue ,
				TempHNSC ,
				TempHN ,
				TempHNERr ,
				TempHNValue ,
				SpeedSC ,
				Speed ,
				SpeedErr ,
				SpeedValue ,
				ExhaustFanDryerSC ,
				ExhaustFanDryer ,
				ExhaustFanDryerValue ,
				ExhaustFanHNSC ,
				ExhaustFanHN ,
				ExhaustFanHNValue ,
				CleanBath1SC ,
				CleanBath1 ,
				CleanBath2SC ,
				CleanBath2 ,
				CleanFrontSC ,
				CleanFront ,
				CamboxSC ,
				Cambox ,
                CheckBy ,
                CheckDate ,
                VerifyBy ,
                VerifyDate 
			)
			VALUES
			(
				@DIPPCId ,
				@ProductCode ,
                @RowType ,
				@LotNo ,
				@SolutionNameBath1SC ,
				@SolutionNameBath1 ,
                @SolutionNameBath1Value ,
				@SolutionNameBath2SC ,
				@SolutionNameBath2 ,
                @SolutionNameBath2Value ,
				@TempJacketDrumBath1SC ,
				@TempJacketDrumBath1Min ,
				@TempJacketDrumBath1Max ,
				@TempJacketDrumBath1 ,
				@TempJacketDrumBath2SC ,
				@TempJacketDrumBath2Min ,
				@TempJacketDrumBath2Max ,
				@TempJacketDrumBath2 ,
				@TempChemicalBath1SC ,
				@TempChemicalBath1Min ,
				@TempChemicalBath1Max ,
				@TempChemicalBath1 ,
				@TempChemicalBath2SC ,
				@TempChemicalBath2Min ,
				@TempChemicalBath2Max ,
				@TempChemicalBath2 ,
				@StretchDSC ,
				@StretchD ,
				@StretchDErr ,
				@StretchDValue ,
				@StretchHSC ,
				@StretchH ,
				@StretchHErr ,
				@StretchHValue ,
				@StretchNSC ,
				@StretchN ,
				@StretchNErr ,
				@StretchNValue ,
				@TempDSC ,
				@TempD ,
				@TempDErr ,
				@TempDValue ,
				@TempHNSC ,
				@TempHN ,
				@TempHNERr ,
				@TempHNValue ,
				@SpeedSC ,
				@Speed ,
				@SpeedErr ,
				@SpeedValue ,
				@ExhaustFanDryerSC ,
				@ExhaustFanDryer ,
				@ExhaustFanDryerValue ,
				@ExhaustFanHNSC ,
				@ExhaustFanHN ,
				@ExhaustFanHNValue ,
				@CleanBath1SC ,
				@CleanBath1 ,
				@CleanBath2SC ,
				@CleanBath2 ,
				@CleanFrontSC ,
				@CleanFront ,
				@CamboxSC ,
				@Cambox ,
                @CheckBy ,
                @CheckDate ,
                @VerifyBy ,
                @VerifyDate 
			);

            SET @S8BeforeId = @@IDENTITY;
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


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditions]    Script Date: 1/12/2024 8:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetS8BeforeConditions]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT S8BeforeId
        ,DIPPCId
        ,ProductCode
        ,RowType -- -2 = STD (V)alue-- -1 = STD (B)ool, 0 = CONF, 1 = DATA
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
   WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
   ORDER BY RowType;

END

GO


/*********** Script Update Date: 2024-01-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPTimeTableLotLists]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetDIPTimeTableLotLists]
(
  @Date datetime
)
AS
BEGIN
DECLARE @Today int
DECLARE @Nextday int
DECLARE @StartTime datetime
DECLARE @EndTime datetime

    SET @StartTime = NULL;
    SET @EndTime = NULL;

    IF (@Date IS NOT NULL)
    BEGIN
        SET @Today = DATEDIFF(dd, 0, @Date);
        SET @Nextday = DATEDIFF(dd, -1, @Date);

        SET @StartTime = DATEADD(HH, 8, @Today);
        SET @EndTime = DATEADD(HH, 8, @Nextday);
    END

    SELECT DISTINCT
           LotNo
     FROM DIPTimeTable
     WHERE PeriodTime >= @StartTime AND PeriodTime < @EndTime

END

GO

