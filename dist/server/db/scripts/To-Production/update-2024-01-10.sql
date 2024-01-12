/*********** Script Update Date: 2024-01-10  ***********/
EXEC DROPTABLE 'DIPTimeTableStd'
GO

EXEC DROPTABLE 'DIPTimeTable'
GO

EXEC DROPTABLE 'S8BeforeConditionStd'
GO

EXEC DROPTABLE 'S8BeforeConditionCF'
GO

EXEC DROPTABLE 'S8BeforeConditionItem'
GO

DROP PROCEDURE GetS8BeforeConditionCF
GO

DROP PROCEDURE GetS8BeforeConditionItems
GO

DROP PROCEDURE SaveS8BeforeConditionCF
GO

DROP PROCEDURE SaveS8BeforeConditionItem
GO


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  Table [dbo].[DIPTimeTableStd]    Script Date: 1/11/2024 1:30:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPTimeTableStd](
	[ProductCode] [nvarchar](30) NULL,
	[S7BobbinSC] [bit] NULL,
	[S8CoolingWaterSystemBath1SC] [bit] NULL,
	[S8CoolingWaterSystemBath1] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Err] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2SC] [bit] NULL,
	[S8CoolingWaterSystemBath2] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Err] [decimal](18, 3) NULL,
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


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  Table [dbo].[DIPTimeTable]    Script Date: 1/12/2024 8:01:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPTimeTable](
	[DIPTimeTableId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NOT NULL,
	[ProductCode] [nvarchar](30) NULL,
	[RowType] [int] NULL,
	[PeriodTime] [datetime] NULL,
	[S7BobbinSC] [bit] NULL,
	[S7Bobbin] [bit] NULL,
	[S8CoolingWaterSystemBath1SC] [bit] NULL,
	[S8CoolingWaterSystemBath1] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Err] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath1Value] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2SC] [bit] NULL,
	[S8CoolingWaterSystemBath2] [decimal](18, 3) NULL,
	[S8CoolingWaterSystemBath2Err] [decimal](18, 3) NULL,
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
	[CheckDate] [datetime] NULL,
CONSTRAINT [PK_DIPTimeTable] PRIMARY KEY CLUSTERED 
(
	[DIPTimeTableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  Table [dbo].[S8BeforeConditionStd]    Script Date: 1/12/2024 1:09:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8BeforeConditionStd](
	[ProductCode] [nvarchar](30) NULL,
	[SolutionNameBath1SC] [bit] NULL,
	[SolutionNameBath1] [nvarchar](50) NULL,
	[SolutionNameBath2SC] [bit] NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
	[TempJacketDrumBath1SC] [bit] NULL,
	[TempJacketDrumBath1Min] [decimal](18, 3) NULL,
	[TempJacketDrumBath1Max] [decimal](18, 3) NULL,
	[TempJacketDrumBath2SC] [bit] NULL,
	[TempJacketDrumBath2Min] [decimal](18, 3) NULL,
	[TempJacketDrumBath2Max] [decimal](18, 3) NULL,
	[TempChemicalBath1SC] [bit] NULL,
	[TempChemicalBath1Min] [decimal](18, 3) NULL,
	[TempChemicalBath1Max] [decimal](18, 3) NULL,
	[TempChemicalBath2SC] [bit] NULL,
	[TempChemicalBath2Min] [decimal](18, 3) NULL,
	[TempChemicalBath2Max] [decimal](18, 3) NULL,
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
	[ExhaustFanDryerSC] [bit] NULL,
	[ExhaustFanDryer] [decimal](18, 3) NULL,
	[ExhaustFanHNSC] [bit] NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
	[CleanBath1SC] [bit] NULL,
	[CleanBath2SC] [bit] NULL,
	[CleanFrontSC] [bit] NULL,
	[CamboxSC] [bit] NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  Table [dbo].[S8BeforeCondition]    Script Date: 1/12/2024 9:06:26 ******/
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
	[SolutionNameBath2SC] [bit] NULL,
	[SolutionNameBath2] [nvarchar](50) NULL,
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
	[ExhaustFanHNSC] [bit] NULL,
	[ExhaustFanHN] [decimal](18, 3) NULL,
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


/*********** Script Update Date: 2024-01-10  ***********/
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
        S8CoolingWaterSystemBath1,
        S8CoolingWaterSystemBath1Err,
        S8CoolingWaterSystemBath2SC,
        S8CoolingWaterSystemBath2,
        S8CoolingWaterSystemBath2Err,
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


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStd]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTableStd] (
    @ProductCode nvarchar (30) ,
	@S7BobbinSC bit  ,
	@S8CoolingWaterSystemBath1SC bit  ,
	@S8CoolingWaterSystemBath1 decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Err decimal (18, 3) ,
	@S8CoolingWaterSystemBath2SC bit  ,
	@S8CoolingWaterSystemBath2 decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Err decimal (18, 3) ,
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
					S8CoolingWaterSystemBath1 = @S8CoolingWaterSystemBath1 ,
					S8CoolingWaterSystemBath1Err = @S8CoolingWaterSystemBath1Err ,
					S8CoolingWaterSystemBath2SC = @S8CoolingWaterSystemBath2SC ,
					S8CoolingWaterSystemBath2 = @S8CoolingWaterSystemBath2 ,
					S8CoolingWaterSystemBath2Err = @S8CoolingWaterSystemBath2Err ,
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
				S8CoolingWaterSystemBath1 ,
				S8CoolingWaterSystemBath1Err ,
				S8CoolingWaterSystemBath2SC ,
				S8CoolingWaterSystemBath2 ,
				S8CoolingWaterSystemBath2Err ,
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
				@S8CoolingWaterSystemBath1 ,
				@S8CoolingWaterSystemBath1Err ,
				@S8CoolingWaterSystemBath2SC ,
				@S8CoolingWaterSystemBath2 ,
				@S8CoolingWaterSystemBath2Err ,
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


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPTimeTables]    Script Date: 1/11/2024 1:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetDIPTimeTables]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPTimeTableId
           DIPPCId,
           ProductCode,
           RowType, -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
           PeriodTime,
           S7BobbinSC,
           S7Bobbin,
           S8CoolingWaterSystemBath1SC,
           S8CoolingWaterSystemBath1,
           S8CoolingWaterSystemBath1Err,
           S8CoolingWaterSystemBath1Value,
           S8CoolingWaterSystemBath2SC,
           S8CoolingWaterSystemBath2,
           S8CoolingWaterSystemBath2Err,
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
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
     ORDER BY RowType, PeriodTime;

END

GO


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTable]    Script Date: 1/11/2024 1:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTable] (
    @DIPPCId int ,
    @ProductCode nvarchar (30) ,
    @RowType int , -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
    @PeriodTime datetime,
	@S7BobbinSC bit  ,
	@S7Bobbin bit  ,
	@S8CoolingWaterSystemBath1SC bit  ,
	@S8CoolingWaterSystemBath1 decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Err decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Value decimal (18, 3) ,
	@S8CoolingWaterSystemBath2SC bit  ,
	@S8CoolingWaterSystemBath2 decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Err decimal (18, 3) ,
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
    @CheckDate datetime,
    @DIPTimeTableId  int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTable WHERE DIPTimeTableId = @DIPTimeTableId)
        BEGIN
            UPDATE DIPTimeTable
               SET  DIPPCId = @DIPPCId ,
                    ProductCode = @ProductCode ,
                    RowType = @RowType ,
                    PeriodTime = @PeriodTime ,
					S7BobbinSC = @S7BobbinSC ,
					S7Bobbin = @S7Bobbin ,
					S8CoolingWaterSystemBath1SC = @S8CoolingWaterSystemBath1SC ,
					S8CoolingWaterSystemBath1 = @S8CoolingWaterSystemBath1 ,
					S8CoolingWaterSystemBath1Err = @S8CoolingWaterSystemBath1Err ,
					S8CoolingWaterSystemBath1Value = @S8CoolingWaterSystemBath1Value ,
					S8CoolingWaterSystemBath2SC = @S8CoolingWaterSystemBath2SC ,
					S8CoolingWaterSystemBath2Err = @S8CoolingWaterSystemBath2Err ,
					S8CoolingWaterSystemBath2Value = @S8CoolingWaterSystemBath2Value ,
					S8CoolingWaterSystemBath2 = @S8CoolingWaterSystemBath2 ,
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
             WHERE DIPTimeTableId = @DIPTimeTableId
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTable
		    (
                DIPPCId ,
				ProductCode ,
                RowType ,
                PeriodTime ,
				S7BobbinSC ,
				S7Bobbin ,
				S8CoolingWaterSystemBath1SC ,
				S8CoolingWaterSystemBath1 ,
				S8CoolingWaterSystemBath1Err ,
				S8CoolingWaterSystemBath1Value ,
				S8CoolingWaterSystemBath2SC ,
				S8CoolingWaterSystemBath2 ,
				S8CoolingWaterSystemBath2Err ,
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
                @DIPPCId ,
                @ProductCode ,
                @RowType ,
                @PeriodTime ,
				@S7BobbinSC ,
				@S7Bobbin ,
				@S8CoolingWaterSystemBath1SC ,
				@S8CoolingWaterSystemBath1 ,
				@S8CoolingWaterSystemBath1Err ,
				@S8CoolingWaterSystemBath1Value ,
				@S8CoolingWaterSystemBath2SC ,
				@S8CoolingWaterSystemBath2 ,
				@S8CoolingWaterSystemBath2Err ,
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

            SET @DIPTimeTableId = @@IDENTITY;
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


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditionStd]    Script Date: 1/12/2024 1:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetS8BeforeConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductCode,
    SolutionNameBath1SC,
	SolutionNameBath1,
    SolutionNameBath2SC,
	SolutionNameBath2,
	TempJacketDrumBath1SC,
    TempJacketDrumBath1Min,
	TempJacketDrumBath1Max,
	TempJacketDrumBath2SC,
    TempJacketDrumBath2Min,
	TempJacketDrumBath2Max,
	TempChemicalBath1SC,
	TempChemicalBath1Min,
	TempChemicalBath1Max,
	TempChemicalBath2SC,
	TempChemicalBath2Min,
	TempChemicalBath2Max,
	StretchDSC,
	StretchD,
	StretchDErr,
	StretchHSC,
	StretchH,
	StretchHErr,
	StretchNSC,
	StretchN,
	StretchNErr,
	TempDSC,
	TempD,
	TempDErr,
	TempHNSC,
	TempHN,
	TempHNErr,
	SpeedSC,
	Speed,
	SpeedErr,
	ExhaustFanDryerSC,
	ExhaustFanDryer,
	ExhaustFanHNSC,
	ExhaustFanHN,
	CleanBath1SC,
	CleanBath2SC,
	CleanFrontSC,
	CamboxSC
     FROM S8BeforeConditionStd
     WHERE ProductCode = COALESCE(@ProductCode, ProductCode)
     ORDER BY ProductCode;

END;

GO


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8BeforeConditionStd]    Script Date: 1/12/2024 1:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveS8BeforeConditionStd] (
    @ProductCode nvarchar (30),
    @SolutionNameBath1SC bit,
	@SolutionNameBath1 nvarchar (50),
    @SolutionNameBath2SC bit,
	@SolutionNameBath2 nvarchar (50),
	@TempJacketDrumBath1SC bit,
	@TempJacketDrumBath1Min decimal(18, 3),
	@TempJacketDrumBath1Max decimal(18, 3),
	@TempJacketDrumBath2SC bit,
	@TempJacketDrumBath2Min decimal(18, 3),
	@TempJacketDrumBath2Max decimal(18, 3),
	@TempChemicalBath1SC bit,
	@TempChemicalBath1Min decimal(18, 3),
	@TempChemicalBath1Max decimal(18, 3),
	@TempChemicalBath2SC bit,
	@TempChemicalBath2Min decimal(18, 3),
	@TempChemicalBath2Max decimal(18, 3),
	@StretchDSC bit,
	@StretchD decimal(18, 3),
	@StretchDErr decimal(18, 3),
	@StretchHSC bit,
	@StretchH decimal(18, 3),
	@StretchHErr decimal(18, 3),
	@StretchNSC bit,
	@StretchN decimal(18, 3),
	@StretchNErr decimal(18, 3),
	@TempDSC bit,
	@TempD decimal(18, 3),
	@TempDErr decimal(18, 3),
	@TempHNSC bit,
	@TempHN decimal(18, 3),
	@TempHNErr decimal(18, 3),
	@SpeedSC bit,
	@Speed decimal(18, 3),
	@SpeedErr decimal(18, 3),
	@ExhaustFanDryerSC bit,
	@ExhaustFanDryer decimal(18, 3),
	@ExhaustFanHNSC bit,
	@ExhaustFanHN decimal(18, 3),
	@CleanBath1SC bit,
	@CleanBath2SC bit,
	@CleanFrontSC bit,
	@CamboxSC bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S8BeforeConditionStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE S8BeforeConditionStd 
               SET  ProductCode = @ProductCode ,
					SolutionNameBath1SC = @SolutionNameBath1SC ,
					SolutionNameBath1 = @SolutionNameBath1 ,
					SolutionNameBath2SC = @SolutionNameBath2SC ,
					SolutionNameBath2 = @SolutionNameBath2 ,
					TempJacketDrumBath1SC = @TempJacketDrumBath1SC ,
					TempJacketDrumBath1Min = @TempJacketDrumBath1Min ,
					TempJacketDrumBath1Max = @TempJacketDrumBath1Max ,
					TempJacketDrumBath2SC = @TempJacketDrumBath2SC ,
					TempJacketDrumBath2Min = @TempJacketDrumBath2Min ,
					TempJacketDrumBath2Max = @TempJacketDrumBath2Max ,
					TempChemicalBath1SC = @TempChemicalBath1SC ,
					TempChemicalBath1Min = @TempChemicalBath1Min ,
					TempChemicalBath1Max = @TempChemicalBath1Max ,
					TempChemicalBath2SC = @TempChemicalBath2SC ,
					TempChemicalBath2Min = @TempChemicalBath2Min ,
					TempChemicalBath2Max = @TempChemicalBath2Max ,
					StretchDSC = @StretchDSC ,
					StretchD = @StretchD ,
					StretchDErr = @StretchDErr ,
					StretchHSC = @StretchHSC ,
					StretchH = @StretchH ,
					StretchHErr = @StretchHErr ,
					StretchNSC = @StretchNSC ,
					StretchN = @StretchN ,
					StretchNErr = @StretchNErr ,
					TempDSC = @TempDSC ,
					TempD = @TempD ,
					TempDErr = @TempDErr ,
					TempHNSC = @TempHNSC ,
					TempHN = @TempHN ,
					TempHNErr = @TempHNErr ,
					SpeedSC = @SpeedSC ,
					Speed = @Speed ,
					SpeedErr = @SpeedErr ,
					ExhaustFanDryerSC = @ExhaustFanDryerSC ,
					ExhaustFanDryer = @ExhaustFanDryer ,
					ExhaustFanHNSC = @ExhaustFanHNSC ,
					ExhaustFanHN = @ExhaustFanHN ,
					CleanBath1SC = @CleanBath1SC ,
					CleanBath2SC = @CleanBath2SC ,
					CleanFrontSC = @CleanFrontSC ,
					CamboxSC  = @CamboxSC 
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO S8BeforeConditionStd
		    (
				ProductCode ,
				SolutionNameBath1SC ,
				SolutionNameBath1 ,
				SolutionNameBath2SC ,
				SolutionNameBath2 ,
				TempJacketDrumBath1SC ,
				TempJacketDrumBath1Min ,
				TempJacketDrumBath1Max ,
				TempJacketDrumBath2SC ,
				TempJacketDrumBath2Min ,
				TempJacketDrumBath2Max ,
				TempChemicalBath1SC ,
				TempChemicalBath1Min ,
				TempChemicalBath1Max ,
				TempChemicalBath2SC ,
				TempChemicalBath2Min ,
				TempChemicalBath2Max ,
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
				ExhaustFanDryerSC ,
				ExhaustFanDryer ,
				ExhaustFanHNSC ,
				ExhaustFanHN ,
				CleanBath1SC ,
				CleanBath2SC ,
				CleanFrontSC ,
				CamboxSC 
			)
			VALUES
			(
                @ProductCode ,
				@SolutionNameBath1SC ,
				@SolutionNameBath1 ,
				@SolutionNameBath2SC ,
				@SolutionNameBath2 ,
				@TempJacketDrumBath1SC ,
				@TempJacketDrumBath1Min ,
				@TempJacketDrumBath1Max ,
				@TempJacketDrumBath2SC ,
				@TempJacketDrumBath2Min ,
				@TempJacketDrumBath2Max ,
				@TempChemicalBath1SC ,
				@TempChemicalBath1Min ,
				@TempChemicalBath1Max ,
				@TempChemicalBath2SC ,
				@TempChemicalBath2Min ,
				@TempChemicalBath2Max ,
				@StretchDSC ,
				@StretchD ,
				@StretchDErr ,
				@StretchHSC ,
				@StretchH ,
				@StretchHErr ,
				@StretchNSC ,
				@StretchN ,
				@StretchNErr ,
				@TempDSC ,
				@TempD ,
				@TempDErr ,
				@TempHNSC ,
				@TempHN ,
				@TempHNErr ,
				@SpeedSC ,
				@Speed ,
				@SpeedErr ,
				@ExhaustFanDryerSC ,
				@ExhaustFanDryer ,
				@ExhaustFanHNSC ,
				@ExhaustFanHN ,
				@CleanBath1SC ,
				@CleanBath2SC ,
				@CleanFrontSC ,
				@CamboxSC 
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


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  StoredProcedure [dbo].[GetS8BeforeConditions]    Script Date: 1/12/2024 8:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetS8BeforeConditions]
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
        ,SolutionNameBath2SC
        ,SolutionNameBath2
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
        ,ExhaustFanHNSC
        ,ExhaustFanHN
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


/*********** Script Update Date: 2024-01-10  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS8BeforeCondition]    Script Date: 1/12/2024 8:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8BeforeCondition] (
    @DIPPCId int ,
    @ProductCode nvarchar (30),
    @RowType int , -- -2 = STD (V)alue-- -1 = STD (B)ool, 0 = CONF, 1 = DATA
	@LotNo nvarchar (50),
	@SolutionNameBath1SC bit,
	@SolutionNameBath1 nvarchar (50),
	@SolutionNameBath2SC bit,
	@SolutionNameBath2 nvarchar (50),
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
	@ExhaustFanDryerErr decimal(18, 3),
	@ExhaustFanDryerValue decimal(18, 3),
	@ExhaustFanHNSC bit,
	@ExhaustFanHN decimal(18, 3),
	@ExhaustFanHNErr decimal(18, 3),
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
					SolutionNameBath2SC = @SolutionNameBath2SC ,
					SolutionNameBath2 = @SolutionNameBath2 ,
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
					ExhaustFanHNSC = @ExhaustFanHNSC ,
					ExhaustFanHN = @ExhaustFanHN ,
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
				SolutionNameBath2SC ,
				SolutionNameBath2 ,
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
				ExhaustFanHNSC ,
				ExhaustFanHN ,
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
				@SolutionNameBath2SC ,
				@SolutionNameBath2 ,
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
				@ExhaustFanHNSC ,
				@ExhaustFanHN ,
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

