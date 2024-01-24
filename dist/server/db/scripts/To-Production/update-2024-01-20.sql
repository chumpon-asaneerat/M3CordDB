/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPProductsByCustomerName]    Script Date: 18/1/2567 11:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetDIPProductsByCustomerName]
(
  @CustomerName nvarchar(100) = NULL
)
AS
BEGIN
    SELECT DISTINCT 
	       ProductId
         , DIPProductCode AS ProductCode
         --, ProductCode AS TwistProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TreatRoute
         , TwistSpec
      FROM Product
     WHERE ProductCode IN 
	 (
		SELECT ProductCode 
		  FROM CustomerProduct
		 WHERE UPPER(LTRIM(RTRIM(CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, CustomerName))))
		   AND DIPProductCode IS NOT NULL
	 )
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2024-01-20  ***********/
/*

DROP PROCEDURE GetProductionRecordDetail
GO

DROP PROCEDURE GetProductionRecord
GO

DROP PROCEDURE GetProductionRecordStd
GO

DROP PROCEDURE SaveProductionRecordDetail
GO

DROP PROCEDURE SaveProductionRecord
GO

DROP PROCEDURE SaveProductionRecordStd
GO

EXEC DROPTABLE 'ProductionRecordDetail'
GO

EXEC DROPTABLE 'ProductionRecord'
GO

EXEC DROPTABLE 'ProductionRecordStd'
GO

*/

/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  Table [dbo].[S8ProductionConditionItemStd]    Script Date: 1/20/2024 10:20:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8ProductionConditionItemStd](
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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  Table [dbo].[S8ProductionCondition]    Script Date: 1/24/2024 1:29:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8ProductionCondition](
	[S8ConditionId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[RecordDate] [datetime] NULL,
	[ProcessHS] [bit] NULL,
	[ProcessDIP] [bit] NULL,
	[Counter] [decimal](18, 3) NULL,
	[CounterErr] [decimal](18, 3) NULL,
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
	[SectionManager] [nvarchar](100) NULL,
 CONSTRAINT [PK_S8ProductionCondition] PRIMARY KEY CLUSTERED 
(
	[S8ConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  Table [dbo].[S8ProductionConditionItem]    Script Date: 1/24/2024 1:31:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8ProductionConditionItem](
	[DIPPCId] [int] NULL,
	[RowType] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[DoffingNo] [int] NULL,
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
	[TreatSC] [bit] NULL,
	[Treat] [decimal](18, 3) NULL,
	[TreatValue] [decimal](18, 3) NULL,
	[DoffingLengthSC] [bit] NULL,
	[DoffingLength] [decimal](18, 3) NULL,
	[DoffingLengthValue] [decimal](18, 3) NULL,
	[WeightSC] [bit] NULL,
	[Weight] [decimal](18, 3) NULL,
	[WeightValue] [decimal](18, 3) NULL,
	[SpindleSC] [bit] NULL,
	[Spindle] [decimal](18, 3) NULL,
	[SpindleValue] [decimal](18, 3) NULL,
	[ProductionGoodSC] [bit] NULL,
	[ProductionGood] [decimal](18, 3) NULL,
	[ProductionGoodValue] [decimal](18, 3) NULL,
	[ProductionTotalSC] [bit] NULL,
	[ProductionTotal] [decimal](18, 3) NULL,
	[ProductionTotalValue] [decimal](18, 3) NULL,
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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  View [dbo].[S8ProductionConditionView]    Script Date: 1/24/2024 1:32:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[S8ProductionConditionView]
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
		 , A.DarwNip
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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditionItemStd]    Script Date: 1/20/2024 12:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8ProductionConditionItemStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode 
         , StretchDSC 
		 , StretchD 
		 , StretchDErr 
		 , StretchHSC 
		 , StretchH 
		 , StretchHErr 
		 , StretchNSC 
		 , StretchN 
		 , StretchNErr 
		 , TempDSC 
		 , TempD 
		 , TempDErr 
		 , TempHNSC 
		 , TempHN 
		 , TempHNErr 
		 , SpeedSC 
		 , Speed 
		 , SpeedErr 
		 , TreatSC 
		 , Treat 
		 , DoffingLengthSC 
		 , DoffingLength 
		 , WeightSC 
		 , [Weight] 
		 , SpindleSC 
		 , Spindle 
		 , ProductionGoodSC
		 , ProductionGood
		 , ProductionTotalSC
		 , ProductionTotal 
      FROM S8ProductionConditionItemStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8ProductionConditionItemStd]    Script Date: 1/20/2024 12:45:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8ProductionConditionItemStd] (
  @ProductCode nvarchar (30) 
, @StretchDSC bit  
, @StretchD decimal (18, 3) 
, @StretchDErr decimal (18, 3) 
, @StretchHSC bit  
, @StretchH decimal (18, 3) 
, @StretchHErr decimal (18, 3) 
, @StretchNSC bit  
, @StretchN decimal (18, 3) 
, @StretchNErr decimal (18, 3) 
, @TempDSC bit  
, @TempD decimal (18, 3) 
, @TempDErr decimal (18, 3) 
, @TempHNSC bit  
, @TempHN decimal (18, 3) 
, @TempHNErr decimal (18, 3) 
, @SpeedSC bit  
, @Speed decimal (18, 3) 
, @SpeedErr decimal (18, 3) 
, @TreatSC bit  
, @Treat decimal (18, 3) 
, @DoffingLengthSC bit  
, @DoffingLength decimal (18, 3) 
, @WeightSC bit  
, @Weight decimal (18, 3) 
, @SpindleSC bit  
, @Spindle decimal (18, 3) 
, @ProductionGoodSC bit  
, @ProductionGood decimal (18, 3) 
, @ProductionTotalSC bit  
, @ProductionTotal decimal (18, 3) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8ProductionConditionItemStd 
                    WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S8ProductionConditionItemStd 
               SET StretchDSC = @StretchDSC  
				 , StretchD = @StretchD 
				 , StretchDErr = @StretchDErr 
				 , StretchHSC = @StretchHSC  
				 , StretchH = @StretchH 
				 , StretchHErr = @StretchHErr 
				 , StretchNSC = @StretchNSC  
				 , StretchN = @StretchN 
				 , StretchNErr = @StretchNErr 
				 , TempDSC = @TempDSC  
				 , TempD = @TempD 
				 , TempDErr = @TempDErr 
				 , TempHNSC = @TempHNSC  
				 , TempHN = @TempHN 
				 , TempHNErr = @TempHNErr 
				 , SpeedSC = @SpeedSC  
				 , Speed = @Speed 
				 , SpeedErr = @SpeedErr 
				 , TreatSC = @TreatSC  
				 , Treat = @Treat 
				 , DoffingLengthSC = @DoffingLengthSC  
				 , DoffingLength = @DoffingLength 
				 , WeightSC = @WeightSC  
				 , [Weight] = @Weight 
				 , SpindleSC = @SpindleSC  
				 , Spindle = @Spindle 
				 , ProductionGoodSC = @ProductionGoodSC  
				 , ProductionGood = @ProductionGood 
				 , ProductionTotalSC = @ProductionTotalSC  
				 , ProductionTotal = @ProductionTotal  
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S8ProductionConditionItemStd
		    (
			      ProductCode  
				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
			)
			VALUES
			(
                  @ProductCode  
			    , @StretchDSC  
			    , @StretchD 
			    , @StretchDErr 
			    , @StretchHSC  
			    , @StretchH 
			    , @StretchHErr 
			    , @StretchNSC  
			    , @StretchN 
			    , @StretchNErr 
			    , @TempDSC  
			    , @TempD 
			    , @TempDErr 
			    , @TempHNSC  
			    , @TempHN 
			    , @TempHNErr 
			    , @SpeedSC  
			    , @Speed 
			    , @SpeedErr 
			    , @TreatSC  
			    , @Treat 
			    , @DoffingLengthSC  
			    , @DoffingLength 
			    , @WeightSC  
			    , @Weight 
			    , @SpindleSC  
			    , @Spindle 
			    , @ProductionGoodSC  
			    , @ProductionGood 
			    , @ProductionTotalSC  
			    , @ProductionTotal 
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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditions]    Script Date: 1/20/2024 12:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8ProductionConditions]
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
		 , DarwNip
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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8ProductionCondition]    Script Date: 1/20/2024 12:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8ProductionCondition] (
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
, @DarwNip bit 
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
				 , DarwNip = @DarwNip 
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
				, DarwNip 
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
				, @DarwNip 
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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditionItems]    Script Date: 1/20/2024 12:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8ProductionConditionItems]
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

		 , PositionCordCutCS 
		 , PositionCordCutWinder 
		 , PositionCordCutWasteYarn 
		 
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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8ProductionConditionItem]    Script Date: 1/20/2024 13:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8ProductionConditionItem] (
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
, @PositionCordCutCS decimal (18, 3) 
, @PositionCordCutWinder decimal (18, 3) 
, @PositionCordCutWasteYarn decimal (18, 3) 

, @CheckTimeStart datetime  
, @CheckTimeFinish datetime  
, @CheckTimeRecord datetime  
, @Opertor nvarchar (100) 
, @Leader nvarchar (100) 
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
				 , PositionCordCutCS = @PositionCordCutCS 
				 , PositionCordCutWinder = @PositionCordCutWinder 
				 , PositionCordCutWasteYarn = @PositionCordCutWasteYarn 
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
				, PositionCordCutCS 
				, PositionCordCutWinder 
				, PositionCordCutWasteYarn 

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
				, @PositionCordCutCS 
				, @PositionCordCutWinder 
				, @PositionCordCutWasteYarn 

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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditionItemStdVRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8ProductionConditionItemStdVRow]
(
  @DIPPCId int
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

		 , PositionCordCutCS 
		 , PositionCordCutWinder 
		 , PositionCordCutWasteYarn 
		 
         , CheckTimeStart 
		 , CheckTimeFinish 
		 , CheckTimeRecord 

		 , Opertor 
		 , Leader 
      FROM S8ProductionConditionItem
     WHERE DIPPCId = @DIPPCId
       AND RowType = -2
       AND LotNo IS NOT NULL
     ORDER BY DIPPCId, RowType, DoffingDate, DoffingNo;

END

GO


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8ProductionConditionItemStdBRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetS8ProductionConditionItemStdBRow]
(
  @DIPPCId int
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

		 , PositionCordCutCS 
		 , PositionCordCutWinder 
		 , PositionCordCutWasteYarn 
		 
         , CheckTimeStart 
		 , CheckTimeFinish 
		 , CheckTimeRecord 

		 , Opertor 
		 , Leader 
      FROM S8ProductionConditionItem
     WHERE DIPPCId = @DIPPCId
       AND RowType = -1
       AND LotNo IS NOT NULL
     ORDER BY DIPPCId, RowType, DoffingDate, DoffingNo;

END

GO


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8ProductionConditionItemStdVRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8ProductionConditionItemStdVRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @Date datetime,
    @DoffingNo int,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
--DECLARE @Today datetime = NULL
DECLARE @RowType int = -2
	BEGIN TRY
        IF (@LotNo IS NULL)
        BEGIN
            -- Update Error Status/Message
            SET @errNum = 100;
            SET @errMsg = 'Lot No Is null';
            RETURN
        END
        /*
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        */
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM S8ProductionConditionItem 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          --AND PeriodTime = @Today
                          AND DoffingDate = @Date
                          AND DoffingNo = @DoffingNo
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
			INSERT INTO S8ProductionConditionItem
		    (
                  DIPPCId
                , RowType
                , DoffingDate
                , DoffingNo
                , LotNo
                , ProductCode

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
			)
            SELECT DIPPCId = @DIPPCId
                , RowType = @RowType
                , DoffingDate = @Date
                , DoffingNo = @DoffingNo
                , LotNo = @LotNo
                ,[ProductCode]

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
            FROM S8ProductionConditionItemStd 
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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8ProductionConditionItemStdBRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8ProductionConditionItemStdBRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @Date datetime,
    @DoffingNo int,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
--DECLARE @Today datetime = NULL
DECLARE @RowType int = -1
	BEGIN TRY
        IF (@LotNo IS NULL)
        BEGIN
            -- Update Error Status/Message
            SET @errNum = 100;
            SET @errMsg = 'Lot No Is null';
            RETURN
        END
        /*
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        */
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM S8ProductionConditionItem 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          --AND PeriodTime = @Today
                          AND DoffingDate = @Date
                          AND DoffingNo = @DoffingNo
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
			INSERT INTO S8ProductionConditionItem
		    (
                  DIPPCId
                , RowType
                , DoffingDate
                , DoffingNo
                , LotNo
                , ProductCode

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
			)
            SELECT DIPPCId = @DIPPCId
                , RowType = @RowType
                , DoffingDate = @Date
                , DoffingNo = @DoffingNo
                , LotNo = @LotNo
                ,[ProductCode]

				, StretchDSC  
				, StretchD 
				, StretchDErr 
				, StretchHSC  
				, StretchH 
				, StretchHErr 
				, StretchNSC  
				, StretchN 
				, StretchNErr 
				, TempDSC  
				, TempD 
				, TempDErr 
				, TempHNSC  
				, TempHN 
				, TempHNErr 
				, SpeedSC  
				, Speed 
				, SpeedErr 
				, TreatSC  
				, Treat 
				, DoffingLengthSC  
				, DoffingLength 
				, WeightSC  
				, [Weight] 
				, SpindleSC  
				, Spindle 
				, ProductionGoodSC  
				, ProductionGood 
				, ProductionTotalSC  
				, ProductionTotal 
            FROM S8ProductionConditionItemStd 
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


/*********** Script Update Date: 2024-01-20  ***********/
/****** Object:  StoredProcedure [dbo].[DeleteS8ProductionConditionItemStd]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteS8ProductionConditionItemStd] (
    @DIPPCId int 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        DELETE FROM S8ProductionConditionItem
         WHERE DIPPCId = @DIPPCId
           AND (RowType = -2 OR RowType = -1 OR RowType = 0)

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

