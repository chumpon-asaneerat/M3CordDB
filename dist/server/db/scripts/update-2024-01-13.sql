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

