/*********** Script Update Date: 2024-01-16  ***********/
EXEC DROPTABLE 'DIPTimeTable'
GO

DROP PROCEDURE SaveDIPTimeTableStdCFRow
GO

-- fixed invalid mc code data
UPDATE DIPPCCard SET MCCode = 'S-7-1' WHERE MCCode = 'S-8-1' OR MCCode = 'S-9-1'
GO
UPDATE DIPPCCard SET MCCode = 'S-7-2' WHERE MCCode = 'S-8-2' OR MCCode = 'S-9-2'
GO

UPDATE S9CleanCheckSheet SET MCCode = 'S-9-1' WHERE MCCode = 'S-7-1'
GO
UPDATE S9CleanCheckSheet SET MCCode = 'S-9-2' WHERE MCCode = 'S-7-2'
GO

UPDATE S9AppearanceCheckSheet SET MCCode = 'S-9-1' WHERE MCCode = 'S-7-1'
GO
UPDATE S9AppearanceCheckSheet SET MCCode = 'S-9-2' WHERE MCCode = 'S-7-2'
GO


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  Table [dbo].[DIPTimeTable]    Script Date: 1/14/2024 22:03:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPTimeTable](
	[ProductCode] [nvarchar](30) NULL,
	[DIPPCId] [int] NOT NULL,
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



/*********** Script Update Date: 2024-01-16  ***********/
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


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPTimeTables]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetDIPTimeTables]
(
  @Date datetime,
  @DIPPCId int = NULL,
  @RowType int = NULL
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
           DIPPCId,
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
       AND DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND RowType = COALESCE(@RowType, RowType)
     ORDER BY DIPPCId, RowType, PeriodTime;

END

GO


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTable]    Script Date: 1/11/2024 1:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTable] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
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
                      AND DIPPCId =  @DIPPCId
                      AND LotNo = @LotNo)
        BEGIN
            UPDATE DIPTimeTable
               SET  ProductCode = @ProductCode ,
                    DIPPCId =  @DIPPCId ,
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
               AND DIPPCId =  @DIPPCId
               AND RowType = @RowType
               AND ProductCode = @ProductCode
               AND LotNo = @LotNo
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTable
		    (
				ProductCode ,
                DIPPCId , 
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
                @DIPPCId , 
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


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStdVRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTableStdVRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @Date datetime,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
--DECLARE @Today datetime = NULL
DECLARE @RowType int = -2
	BEGIN TRY
        /*
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        */
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM DIPTimeTable 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          --AND PeriodTime = @Today
                          AND PeriodTime = @Date
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO DIPTimeTable
            (
                 [DIPPCId]
                ,[RowType]
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
                ,[S8TempD]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHN]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            )
            SELECT DIPPCId = @DIPPCId
                , RowType = @RowType
                --, PeriodTime = @Today
                , PeriodTime = @Date
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
                ,[S8TempD]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHN]
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


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStdBRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTableStdBRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @Date datetime,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
--DECLARE @Today datetime = NULL
DECLARE @RowType int = -1
	BEGIN TRY
        /*
        IF (@Date IS NOT NULL)
        BEGIN
            SET @Today = DATEADD(HH, 8, DATEDIFF(dd, 0, @Date));
        END
        */
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM DIPTimeTable 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          --AND PeriodTime = @Today
                          AND PeriodTime = @Date
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO DIPTimeTable
            (
                 [DIPPCId]
                ,[RowType]
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
                ,[S8TempD]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHN]
                ,[S8TempHNErr]
                ,[S9GlideStatusSC]
            )
            SELECT DIPPCId = @DIPPCId
                , RowType = @RowType
                --, PeriodTime = @Today
                , PeriodTime = @Date
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
                ,[S8TempD]
                ,[S8TempDErr]
                ,[S8TempHNSC]
                ,[S8TempHN]
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


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPTableStdVRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATe PROCEDURE [dbo].[GetDIPTableStdVRow]
(
  @DIPPCId int
)
AS
BEGIN
    SELECT ProductCode,
           DIPPCId,
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
     WHERE DIPPCId = @DIPPCId
       AND RowType = -2
     ORDER BY DIPPCId, RowType, PeriodTime;

END

GO


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPTableStdVRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATe PROCEDURE [dbo].[GetDIPTableStdVRow]
(
  @DIPPCId int
)
AS
BEGIN
    SELECT ProductCode,
           DIPPCId,
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
     WHERE DIPPCId = @DIPPCId
       AND RowType = -1
     ORDER BY DIPPCId, RowType, PeriodTime;

END

GO


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[ResetDIPTimeTableStd]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteDIPTimeTableStd] (
    @DIPPCId int 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        DELETE FROM DIPTimeTable
         WHERE DIPPCId = @DIPPCId
           AND (RowType = -2 OR RowType = -1)

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


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8BeforeStdVRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8BeforeStdVRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @RowType int = -2
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM S8BeforeCondition 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO S8BeforeCondition
            (
                  [DIPPCId]
                , [RowType]
                ,[LotNo]
                ,[ProductCode]
                ,[SolutionNameBath1SC]
                ,[SolutionNameBath1]
                ,[SolutionNameBath2SC]
                ,[SolutionNameBath2]
                ,[TempJacketDrumBath1SC]
                ,[TempJacketDrumBath1Min]
                ,[TempJacketDrumBath1Max]
                ,[TempJacketDrumBath2SC]
                ,[TempJacketDrumBath2Min]
                ,[TempJacketDrumBath2Max]
                ,[TempChemicalBath1SC]
                ,[TempChemicalBath1Min]
                ,[TempChemicalBath1Max]
                ,[TempChemicalBath2SC]
                ,[TempChemicalBath2Min]
                ,[TempChemicalBath2Max]
                ,[StretchDSC]
                ,[StretchD]
                ,[StretchDErr]
                ,[StretchHSC]
                ,[StretchH]
                ,[StretchHErr]
                ,[StretchNSC]
                ,[StretchN]
                ,[StretchNErr]
                ,[TempDSC]
                ,[TempD]
                ,[TempDErr]
                ,[TempHNSC]
                ,[TempHN]
                ,[TempHNErr]
                ,[SpeedSC]
                ,[Speed]
                ,[SpeedErr]
                ,[ExhaustFanDryerSC]
                ,[ExhaustFanDryer]
                ,[ExhaustFanHNSC]
                ,[ExhaustFanHN]
                ,[CleanBath1SC]
                ,[CleanBath2SC]
                ,[CleanFrontSC]
                ,[CamboxSC]
            )
            SELECT DIPPCId = @DIPPCId 
                , RowType = @RowType
                , LotNo = @LotNo
                ,[ProductCode]
                ,[SolutionNameBath1SC]
                ,[SolutionNameBath1]
                ,[SolutionNameBath2SC]
                ,[SolutionNameBath2]
                ,[TempJacketDrumBath1SC]
                ,[TempJacketDrumBath1Min]
                ,[TempJacketDrumBath1Max]
                ,[TempJacketDrumBath2SC]
                ,[TempJacketDrumBath2Min]
                ,[TempJacketDrumBath2Max]
                ,[TempChemicalBath1SC]
                ,[TempChemicalBath1Min]
                ,[TempChemicalBath1Max]
                ,[TempChemicalBath2SC]
                ,[TempChemicalBath2Min]
                ,[TempChemicalBath2Max]
                ,[StretchDSC]
                ,[StretchD]
                ,[StretchDErr]
                ,[StretchHSC]
                ,[StretchH]
                ,[StretchHErr]
                ,[StretchNSC]
                ,[StretchN]
                ,[StretchNErr]
                ,[TempDSC]
                ,[TempD]
                ,[TempDErr]
                ,[TempHNSC]
                ,[TempHN]
                ,[TempHNErr]
                ,[SpeedSC]
                ,[Speed]
                ,[SpeedErr]
                ,[ExhaustFanDryerSC]
                ,[ExhaustFanDryer]
                ,[ExhaustFanHNSC]
                ,[ExhaustFanHN]
                ,[CleanBath1SC]
                ,[CleanBath2SC]
                ,[CleanFrontSC]
                ,[CamboxSC]
            FROM S8BeforeConditionStd 
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


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8BeforeStdBRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8BeforeStdBRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @RowType int = -1
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM S8BeforeCondition 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO S8BeforeCondition
            (
                  [DIPPCId]
                , [RowType]
                ,[LotNo]
                ,[ProductCode]
                ,[SolutionNameBath1SC]
                ,[SolutionNameBath1]
                ,[SolutionNameBath2SC]
                ,[SolutionNameBath2]
                ,[TempJacketDrumBath1SC]
                ,[TempJacketDrumBath1Min]
                ,[TempJacketDrumBath1Max]
                ,[TempJacketDrumBath2SC]
                ,[TempJacketDrumBath2Min]
                ,[TempJacketDrumBath2Max]
                ,[TempChemicalBath1SC]
                ,[TempChemicalBath1Min]
                ,[TempChemicalBath1Max]
                ,[TempChemicalBath2SC]
                ,[TempChemicalBath2Min]
                ,[TempChemicalBath2Max]
                ,[StretchDSC]
                ,[StretchD]
                ,[StretchDErr]
                ,[StretchHSC]
                ,[StretchH]
                ,[StretchHErr]
                ,[StretchNSC]
                ,[StretchN]
                ,[StretchNErr]
                ,[TempDSC]
                ,[TempD]
                ,[TempDErr]
                ,[TempHNSC]
                ,[TempHN]
                ,[TempHNErr]
                ,[SpeedSC]
                ,[Speed]
                ,[SpeedErr]
                ,[ExhaustFanDryerSC]
                ,[ExhaustFanDryer]
                ,[ExhaustFanHNSC]
                ,[ExhaustFanHN]
                ,[CleanBath1SC]
                ,[CleanBath2SC]
                ,[CleanFrontSC]
                ,[CamboxSC]
            )
            SELECT DIPPCId = @DIPPCId 
                , RowType = @RowType
                , LotNo = @LotNo
                ,[ProductCode]
                ,[SolutionNameBath1SC]
                ,[SolutionNameBath1]
                ,[SolutionNameBath2SC]
                ,[SolutionNameBath2]
                ,[TempJacketDrumBath1SC]
                ,[TempJacketDrumBath1Min]
                ,[TempJacketDrumBath1Max]
                ,[TempJacketDrumBath2SC]
                ,[TempJacketDrumBath2Min]
                ,[TempJacketDrumBath2Max]
                ,[TempChemicalBath1SC]
                ,[TempChemicalBath1Min]
                ,[TempChemicalBath1Max]
                ,[TempChemicalBath2SC]
                ,[TempChemicalBath2Min]
                ,[TempChemicalBath2Max]
                ,[StretchDSC]
                ,[StretchD]
                ,[StretchDErr]
                ,[StretchHSC]
                ,[StretchH]
                ,[StretchHErr]
                ,[StretchNSC]
                ,[StretchN]
                ,[StretchNErr]
                ,[TempDSC]
                ,[TempD]
                ,[TempDErr]
                ,[TempHNSC]
                ,[TempHN]
                ,[TempHNErr]
                ,[SpeedSC]
                ,[Speed]
                ,[SpeedErr]
                ,[ExhaustFanDryerSC]
                ,[ExhaustFanDryer]
                ,[ExhaustFanHNSC]
                ,[ExhaustFanHN]
                ,[CleanBath1SC]
                ,[CleanBath2SC]
                ,[CleanFrontSC]
                ,[CamboxSC]
            FROM S8BeforeConditionStd 
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


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8BeforeStdBRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8BeforeStdCFRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @RowType int = 0
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM S8BeforeCondition 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO S8BeforeCondition
            (
                  [DIPPCId]
                , [RowType]
                ,[LotNo]
                ,[ProductCode]
                ,[SolutionNameBath1SC]
                ,[SolutionNameBath1]
                ,[SolutionNameBath2SC]
                ,[SolutionNameBath2]
                ,[TempJacketDrumBath1SC]
                ,[TempJacketDrumBath1Min]
                ,[TempJacketDrumBath1Max]
                ,[TempJacketDrumBath2SC]
                ,[TempJacketDrumBath2Min]
                ,[TempJacketDrumBath2Max]
                ,[TempChemicalBath1SC]
                ,[TempChemicalBath1Min]
                ,[TempChemicalBath1Max]
                ,[TempChemicalBath2SC]
                ,[TempChemicalBath2Min]
                ,[TempChemicalBath2Max]
                ,[StretchDSC]
                ,[StretchD]
                ,[StretchDErr]
                ,[StretchHSC]
                ,[StretchH]
                ,[StretchHErr]
                ,[StretchNSC]
                ,[StretchN]
                ,[StretchNErr]
                ,[TempDSC]
                ,[TempD]
                ,[TempDErr]
                ,[TempHNSC]
                ,[TempHN]
                ,[TempHNErr]
                ,[SpeedSC]
                ,[Speed]
                ,[SpeedErr]
                ,[ExhaustFanDryerSC]
                ,[ExhaustFanDryer]
                ,[ExhaustFanHNSC]
                ,[ExhaustFanHN]
                ,[CleanBath1SC]
                ,[CleanBath2SC]
                ,[CleanFrontSC]
                ,[CamboxSC]
            )
            SELECT DIPPCId = @DIPPCId 
                , RowType = @RowType
                , LotNo = @LotNo
                ,[ProductCode]
                ,[SolutionNameBath1SC]
                ,[SolutionNameBath1]
                ,[SolutionNameBath2SC]
                ,[SolutionNameBath2]
                ,[TempJacketDrumBath1SC]
                ,[TempJacketDrumBath1Min]
                ,[TempJacketDrumBath1Max]
                ,[TempJacketDrumBath2SC]
                ,[TempJacketDrumBath2Min]
                ,[TempJacketDrumBath2Max]
                ,[TempChemicalBath1SC]
                ,[TempChemicalBath1Min]
                ,[TempChemicalBath1Max]
                ,[TempChemicalBath2SC]
                ,[TempChemicalBath2Min]
                ,[TempChemicalBath2Max]
                ,[StretchDSC]
                ,[StretchD]
                ,[StretchDErr]
                ,[StretchHSC]
                ,[StretchH]
                ,[StretchHErr]
                ,[StretchNSC]
                ,[StretchN]
                ,[StretchNErr]
                ,[TempDSC]
                ,[TempD]
                ,[TempDErr]
                ,[TempHNSC]
                ,[TempHN]
                ,[TempHNErr]
                ,[SpeedSC]
                ,[Speed]
                ,[SpeedErr]
                ,[ExhaustFanDryerSC]
                ,[ExhaustFanDryer]
                ,[ExhaustFanHNSC]
                ,[ExhaustFanHN]
                ,[CleanBath1SC]
                ,[CleanBath2SC]
                ,[CleanFrontSC]
                ,[CamboxSC]
            FROM S8BeforeConditionStd 
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


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8BeforeStdVRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATe PROCEDURE [dbo].[GetS8BeforeStdVRow]
(
  @DIPPCId int
)
AS
BEGIN
    SELECT  ProductCode
           ,DIPPCId
           ,RowType -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
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
     WHERE DIPPCId = @DIPPCId
       AND RowType = -2
     ORDER BY DIPPCId, LotNo, RowType;

END

GO


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8BeforeStdBRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATe PROCEDURE [dbo].[GetS8BeforeStdBRow]
(
  @DIPPCId int
)
AS
BEGIN
    SELECT  ProductCode
           ,DIPPCId
           ,RowType -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
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
     WHERE DIPPCId = @DIPPCId
       AND RowType = -1
     ORDER BY DIPPCId, LotNo, RowType;

END

GO


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8BeforeStdCFRow]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATe PROCEDURE [dbo].[GetS8BeforeStdCFRow]
(
  @DIPPCId int
)
AS
BEGIN
    SELECT  ProductCode
           ,DIPPCId
           ,RowType -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
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
     WHERE DIPPCId = @DIPPCId
       AND RowType = 0
     ORDER BY DIPPCId, LotNo, RowType;

END

GO


/*********** Script Update Date: 2024-01-16  ***********/
/****** Object:  StoredProcedure [dbo].[DeleteS8BeforeStd]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteS8BeforeStd] (
    @DIPPCId int 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        DELETE FROM S8BeforeCondition
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

