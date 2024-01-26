/*********** Script Update Date: 2024-01-25  ***********/
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

EXEC DROPTABLE 'CordSamplingDetails'
GO


/*********** Script Update Date: 2024-01-25  ***********/
/****** Object:  Table [dbo].[CordSamplingDetails]    Script Date: 1/26/2024 7:03:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CordSamplingDetails](
	[SamplingId] [int] IDENTITY(1,1) NOT NULL,
	[SamplingDate] [datetime] NULL,
	[TwistYarn] [bit] NULL,
	[CordDipping] [bit] NULL,
	[Rawmaterial] [bit] NULL,
	[CustomerName] [nvarchar](100) NULL,
	[ProductCode] [nvarchar](30) NULL,
	[CordStructure] [nvarchar](100) NULL,
	[LotNo] [nvarchar](50) NULL,
	[ProductionSituationTwisting] [bit] NULL,
	[ProductionSituationHeatSet] [bit] NULL,
	[ProductionSituationDipCord] [bit] NULL,
	[ProductionSituationJointing] [bit] NULL,
	[StandardOfTwisting] [nvarchar](100) NULL,
	[MCCode] [nvarchar](10) NULL,
	[Bobbin] [bit] NULL,
	[Cheese] [bit] NULL,
	[TaperBB] [bit] NULL,
	[ContainerOthers] [bit] NULL,
	[SpindleNo] [nvarchar](100) NULL,
	[Quantity] [nvarchar](100) NULL,
	[Polyester] [bit] NULL,
	[Nylon66] [bit] NULL,
	[MaterialOthers] [bit] NULL,
	[YarnType] [nvarchar](100) NULL,
	[Process] [bit] NULL,
	[Product] [bit] NULL,
	[Special] [bit] NULL,
	[Trial] [bit] NULL,
	[Shift] [nvarchar](50) NULL,
	[ShiftName] [nvarchar](100) NULL,
	[Remark] [nvarchar](100) NULL,
	[Sender] [nvarchar](100) NULL,
	[SenderTime] [datetime] NULL,
	[Direct] [bit] NULL,
	[Relax] [bit] NULL,
	[Relax_k] [nvarchar](50) NULL,
	[Relax_n] [nvarchar](50) NULL,
	[Necessary] [bit] NULL,
	[NotNecessary] [bit] NULL,
	[SpecialMentionJointing] [bit] NULL,
	[SpecialMentionNoJointing] [bit] NULL,
	[TensileR1] [decimal](18, 3) NULL,
	[TensileL1] [decimal](18, 3) NULL,
	[TensileR2] [decimal](18, 3) NULL,
	[TensileL2] [decimal](18, 3) NULL,
	[TensileR3] [decimal](18, 3) NULL,
	[TensileL3] [decimal](18, 3) NULL,
	[TensileR4] [decimal](18, 3) NULL,
	[TensileL4] [decimal](18, 3) NULL,
	[TensileR5] [decimal](18, 3) NULL,
	[TensileL5] [decimal](18, 3) NULL,
	[TensileRSum] [decimal](18, 3) NULL,
	[TensileLSum] [decimal](18, 3) NULL,
	[FirstTwistingR1] [decimal](18, 3) NULL,
	[FirstTwistingL1] [decimal](18, 3) NULL,
	[FirstTwistingR2] [decimal](18, 3) NULL,
	[FirstTwistingL2] [decimal](18, 3) NULL,
	[FirstTwistingR3] [decimal](18, 3) NULL,
	[FirstTwistingL3] [decimal](18, 3) NULL,
	[FirstTwistingR4] [decimal](18, 3) NULL,
	[FirstTwistingL4] [decimal](18, 3) NULL,
	[FirstTwistingR5] [decimal](18, 3) NULL,
	[FirstTwistingL5] [decimal](18, 3) NULL,
	[FirstTwistingRSum] [decimal](18, 3) NULL,
	[FirstTwistingLSum] [decimal](18, 3) NULL,
	[SecondTwistingR1] [decimal](18, 3) NULL,
	[SecondTwistingL1] [decimal](18, 3) NULL,
	[SecondTwistingR2] [decimal](18, 3) NULL,
	[SecondTwistingL2] [decimal](18, 3) NULL,
	[SecondTwistingR3] [decimal](18, 3) NULL,
	[SecondTwistingL3] [decimal](18, 3) NULL,
	[SecondTwistingR4] [decimal](18, 3) NULL,
	[SecondTwistingL4] [decimal](18, 3) NULL,
	[SecondTwistingR5] [decimal](18, 3) NULL,
	[SecondTwistingL5] [decimal](18, 3) NULL,
	[SecondTwistingRSum] [decimal](18, 3) NULL,
	[SecondTwistingLSum] [decimal](18, 3) NULL,
	[Remark1] [nvarchar](100) NULL,
	[Remark2] [nvarchar](100) NULL,
	[Remark3] [nvarchar](100) NULL,
	[Remark4] [nvarchar](100) NULL,
	[Remark5] [nvarchar](100) NULL,
	[RemarkSum] [nvarchar](100) NULL,
	[RemarkOther] [nvarchar](max) NULL,
	[Tester] [nvarchar](100) NULL,
	[TesterTime] [datetime] NULL,
	[TestResult] [bit] NULL,
 CONSTRAINT [PK_CordSamplingDetails] PRIMARY KEY CLUSTERED 
(
	[SamplingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


/*********** Script Update Date: 2024-01-25  ***********/
/****** Object:  StoredProcedure [dbo].[GetCordSamplingDetails]    Script Date: 1/26/2024 3:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCordSamplingDetails
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordSamplingDetails NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetCordSamplingDetails]
(
  @MCCode nvarchar(10) = NULL,
  @LotNo nvarchar(50) = NULL,
  @ProductCode nvarchar (30) = NULL
)
AS
BEGIN
    SELECT SamplingId,
			SamplingDate,
	        TwistYarn,
	        TwistYarn,
			CordDipping,
			Rawmaterial,
			CustomerName,
			ProductCode,
			CordStructure,
			LotNo,
			ProductionSituationTwisting,
			ProductionSituationHeatSet,
			ProductionSituationDipCord,
			ProductionSituationJointing,
			StandardOfTwisting,
			MCCode,
			Bobbin,
			Cheese,
			TaperBB,
			ContainerOthers,
			SpindleNo,
			Quantity,
			Polyester,
			Nylon66,
			MaterialOthers,
			YarnType,
			Process,
			Product,
			Special,
			Trial,
			[Shift],
			ShiftName,
			Remark,
			Sender,
			SenderTime,
			Direct,
			Relax,
			Relax_k,
			Relax_n,
			Necessary,
			NotNecessary,
			SpecialMentionJointing,
			SpecialMentionNoJointing,
			TensileR1,
			TensileL1,
			TensileR2,
			TensileL2,
			TensileR3,
			TensileL3,
			TensileR4,
			TensileL4,
			TensileR5,
			TensileL5,
			TensileRSum,
			TensileLSum,
			FirstTwistingR1,
			FirstTwistingL1,
			FirstTwistingR2,
			FirstTwistingL2,
			FirstTwistingR3,
			FirstTwistingL3,
			FirstTwistingR4,
			FirstTwistingL4,
			FirstTwistingR5,
			FirstTwistingL5,
			FirstTwistingRSum,
			FirstTwistingLSum,
			SecondTwistingR1,
			SecondTwistingL1,
			SecondTwistingR2,
			SecondTwistingL2,
			SecondTwistingR3,
			SecondTwistingL3,
			SecondTwistingR4,
			SecondTwistingL4,
			SecondTwistingR5,
			SecondTwistingL5,
			SecondTwistingRSum,
			SecondTwistingLSum,
			Remark1,
			Remark2,
			Remark3,
			Remark4,
			Remark5,
			RemarkSum,
			RemarkOther,
			Tester,
			TesterTime,
			TestResult
     FROM CordSamplingDetails
     WHERE UPPER(LTRIM(RTRIM(MCCode))) = UPPER(LTRIM(RTRIM(COALESCE(@MCCode, MCCode))))
	   AND UPPER(LTRIM(RTRIM(LotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@LotNo, LotNo))))
	   AND UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY SamplingDate, LotNo;

END

GO


/*********** Script Update Date: 2024-01-25  ***********/
/****** Object:  StoredProcedure [dbo].[SaveCordSamplingDetails]    Script Date: 1/26/2024 3:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveCordSamplingDetails
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveCordSamplingDetails] (
	@SamplingDate datetime ,
  	@TwistYarn bit ,
	@CordDipping bit ,
	@Rawmaterial bit ,
	@CustomerName nvarchar (100) ,
	@ProductCode nvarchar (30) ,
	@CordStructure nvarchar (100) ,
	@LotNo nvarchar (50) ,
	@ProductionSituationTwisting bit ,
	@ProductionSituationHeatSet bit ,
	@ProductionSituationDipCord bit ,
	@ProductionSituationJointing bit ,
	@StandardOfTwisting nvarchar (100) ,
	@MCCode nvarchar(10) ,
	@Bobbin bit ,
	@Cheese bit ,
	@TaperBB bit,
	@ContainerOthers bit,
	@SpindleNo nvarchar (100) ,
	@Quantity nvarchar (100) ,
	@Polyester bit,
	@Nylon66 bit,
	@MaterialOthers bit,
	@YarnType nvarchar (100) ,
	@Process bit,
	@Product bit,
	@Special bit,
	@Trial bit,
	@Shift nvarchar (50) ,
	@ShiftName nvarchar (100) ,
	@Remark nvarchar (100) ,
	@Sender nvarchar (100) ,
	@SenderTime datetime ,
	@Direct bit,
	@Relax bit,
	@Relax_k nvarchar (50) ,
	@Relax_n nvarchar (50) ,
	@Necessary bit,
	@NotNecessary bit,
	@SpecialMentionJointing bit,
	@SpecialMentionNoJointing bit,
	@TensileR1 decimal (18, 3) ,
	@TensileL1 decimal (18, 3) ,
	@TensileR2 decimal (18, 3) ,
	@TensileL2 decimal (18, 3) ,
	@TensileR3 decimal (18, 3) ,
	@TensileL3 decimal (18, 3) ,
	@TensileR4 decimal (18, 3) ,
	@TensileL4 decimal (18, 3) ,
	@TensileR5 decimal (18, 3) ,
	@TensileL5 decimal (18, 3) ,
	@TensileRSum decimal (18, 3) ,
	@TensileLSum decimal (18, 3) ,
	@FirstTwistingR1 decimal (18, 3) ,
	@FirstTwistingL1 decimal (18, 3) ,
	@FirstTwistingR2 decimal (18, 3) ,
	@FirstTwistingL2 decimal (18, 3) ,
	@FirstTwistingR3 decimal (18, 3) ,
	@FirstTwistingL3 decimal (18, 3) ,
	@FirstTwistingR4 decimal (18, 3) ,
	@FirstTwistingL4 decimal (18, 3) ,
	@FirstTwistingR5 decimal (18, 3) ,
	@FirstTwistingL5 decimal (18, 3) ,
	@FirstTwistingRSum decimal (18, 3) ,
	@FirstTwistingLSum decimal (18, 3) ,
	@SecondTwistingR1 decimal (18, 3) ,
	@SecondTwistingL1 decimal (18, 3) ,
	@SecondTwistingR2 decimal (18, 3) ,
	@SecondTwistingL2 decimal (18, 3) ,
	@SecondTwistingR3 decimal (18, 3) ,
	@SecondTwistingL3 decimal (18, 3) ,
	@SecondTwistingR4 decimal (18, 3) ,
	@SecondTwistingL4 decimal (18, 3) ,
	@SecondTwistingR5 decimal (18, 3) ,
	@SecondTwistingL5 decimal (18, 3) ,
	@SecondTwistingRSum decimal (18, 3) ,
	@SecondTwistingLSum decimal (18, 3) ,
	@Remark1 nvarchar (100) ,
	@Remark2 nvarchar (100) ,
	@Remark3 nvarchar (100) ,
	@Remark4 nvarchar (100) ,
	@Remark5 nvarchar (100) ,
	@RemarkSum nvarchar (100) ,
	@RemarkOther nvarchar(max) ,
	@Tester nvarchar (100) ,
	@TesterTime datetime ,
	@TestResult bit ,
	@SamplingId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM CordSamplingDetails WHERE SamplingId = @SamplingId)
        BEGIN
            UPDATE CordSamplingDetails 
               SET 	TwistYarn = @TwistYarn ,
					CordDipping = @CordDipping ,
					Rawmaterial = @Rawmaterial ,
					SamplingDate = @SamplingDate ,
					CustomerName = @CustomerName ,
					ProductCode = @ProductCode ,
					CordStructure = @CordStructure ,
					LotNo = @LotNo ,
					ProductionSituationTwisting = @ProductionSituationTwisting ,
					ProductionSituationHeatSet = @ProductionSituationHeatSet ,
					ProductionSituationDipCord = @ProductionSituationDipCord ,
					ProductionSituationJointing = @ProductionSituationJointing ,
					StandardOfTwisting = @StandardOfTwisting ,
					MCCode = @MCCode ,
					Bobbin = @Bobbin ,
					Cheese = @Cheese ,
					TaperBB = @TaperBB ,
					ContainerOthers = @ContainerOthers ,
					SpindleNo = @SpindleNo ,
					Quantity = @Quantity ,
					Polyester = @Polyester ,
					Nylon66 = @Nylon66 ,
					MaterialOthers = @MaterialOthers ,
					YarnType = @YarnType ,
					Process = @Process ,
					Product = @Product ,
					Special = @Special ,
					Trial = @Trial ,
					[Shift] = @Shift ,
					ShiftName = @ShiftName ,
					Remark = @Remark ,
					Sender = @Sender ,
					SenderTime = @SenderTime ,
					Direct = @Direct ,
					Relax = @Relax ,
					Relax_k = @Relax_k ,
					Relax_n = @Relax_n ,
					Necessary = @Necessary ,
					NotNecessary = @NotNecessary ,
					SpecialMentionJointing = @SpecialMentionJointing ,
					SpecialMentionNoJointing = @SpecialMentionNoJointing ,
					TensileR1 = @TensileR1 ,
					TensileL1 = @TensileL1 ,
					TensileR2 = @TensileR2 ,
					TensileL2 = @TensileL2 ,
					TensileR3 = @TensileR3 ,
					TensileL3 = @TensileL3 ,
					TensileR4 = @TensileR4 ,
					TensileL4 = @TensileL4 ,
					TensileR5 = @TensileR5 ,
					TensileL5 = @TensileL5 ,
					TensileRSum = @TensileRSum ,
					TensileLSum = @TensileLSum ,
					FirstTwistingR1 = @FirstTwistingR1 ,
					FirstTwistingL1 = @FirstTwistingL1 ,
					FirstTwistingR2 = @FirstTwistingR2 ,
					FirstTwistingL2 = @FirstTwistingL2 ,
					FirstTwistingR3 = @FirstTwistingR3 ,
					FirstTwistingL3 = @FirstTwistingL3 ,
					FirstTwistingR4 = @FirstTwistingR4 ,
					FirstTwistingL4 = @FirstTwistingL4 ,
					FirstTwistingR5 = @FirstTwistingR5 ,
					FirstTwistingL5 = @FirstTwistingL5 ,
					FirstTwistingRSum = @FirstTwistingRSum ,
					FirstTwistingLSum = @FirstTwistingLSum ,
					SecondTwistingR1 = @SecondTwistingR1 ,
					SecondTwistingL1 = @SecondTwistingL1 ,
					SecondTwistingR2 = @SecondTwistingR2 ,
					SecondTwistingL2 = @SecondTwistingL2 ,
					SecondTwistingR3 = @SecondTwistingR3 ,
					SecondTwistingL3 = @SecondTwistingL3 ,
					SecondTwistingR4 = @SecondTwistingR4 ,
					SecondTwistingL4 = @SecondTwistingL4 ,
					SecondTwistingR5 = @SecondTwistingR5 ,
					SecondTwistingL5 = @SecondTwistingL5 ,
					SecondTwistingRSum = @SecondTwistingRSum ,
					SecondTwistingLSum = @SecondTwistingLSum ,
					Remark1 = @Remark1 ,
					Remark2 = @Remark2 ,
					Remark3 = @Remark3 ,
					Remark4 = @Remark4 ,
					Remark5 = @Remark5 ,
					RemarkSum = @RemarkSum ,
					RemarkOther = @RemarkOther ,
					Tester = @Tester ,
					TesterTime = @TesterTime ,
					TestResult = @TestResult
             WHERE SamplingId = @SamplingId
        END
        ELSE
        BEGIN
			INSERT INTO CordSamplingDetails
		    (
                TwistYarn ,
				CordDipping ,
				Rawmaterial ,
				SamplingDate ,
				CustomerName ,
				ProductCode ,
				CordStructure ,
				LotNo ,
				ProductionSituationTwisting ,
				ProductionSituationHeatSet ,
				ProductionSituationDipCord ,
				ProductionSituationJointing ,
				StandardOfTwisting ,
				MCCode ,
				Bobbin ,
				Cheese ,
				TaperBB ,
				ContainerOthers ,
				SpindleNo ,
				Quantity ,
				Polyester ,
				Nylon66 ,
				MaterialOthers ,
				YarnType ,
				Process ,
				Product ,
				Special ,
				Trial ,
				[Shift] ,
				ShiftName ,
				Remark ,
				Sender ,
				SenderTime ,
				Direct ,
				Relax ,
				Relax_k ,
				Relax_n ,
				Necessary ,
				NotNecessary ,
				SpecialMentionJointing ,
				SpecialMentionNoJointing ,
				TensileR1 ,
				TensileL1 ,
				TensileR2 ,
				TensileL2 ,
				TensileR3 ,
				TensileL3 ,
				TensileR4 ,
				TensileL4 ,
				TensileR5 ,
				TensileL5 ,
				TensileRSum ,
				TensileLSum ,
				FirstTwistingR1 ,
				FirstTwistingL1 ,
				FirstTwistingR2 ,
				FirstTwistingL2 ,
				FirstTwistingR3 ,
				FirstTwistingL3 ,
				FirstTwistingR4 ,
				FirstTwistingL4 ,
				FirstTwistingR5 ,
				FirstTwistingL5 ,
				FirstTwistingRSum ,
				FirstTwistingLSum ,
				SecondTwistingR1 ,
				SecondTwistingL1 ,
				SecondTwistingR2 ,
				SecondTwistingL2 ,
				SecondTwistingR3 ,
				SecondTwistingL3 ,
				SecondTwistingR4 ,
				SecondTwistingL4 ,
				SecondTwistingR5 ,
				SecondTwistingL5 ,
				SecondTwistingRSum ,
				SecondTwistingLSum ,
				Remark1 ,
				Remark2 ,
				Remark3 ,
				Remark4 ,
				Remark5 ,
				RemarkSum ,
				RemarkOther ,
			    Tester,
			    TesterTime,
			    TestResult
			)
			VALUES
			(
                @TwistYarn ,
				@CordDipping ,
				@Rawmaterial ,
				@SamplingDate ,
				@CustomerName ,
				@ProductCode ,
				@CordStructure ,
				@LotNo ,
				@ProductionSituationTwisting ,
				@ProductionSituationHeatSet ,
				@ProductionSituationDipCord ,
				@ProductionSituationJointing ,
				@StandardOfTwisting ,
				@MCCode ,
				@Bobbin ,
				@Cheese ,
				@TaperBB ,
				@ContainerOthers ,
				@SpindleNo ,
				@Quantity ,
				@Polyester ,
				@Nylon66 ,
				@MaterialOthers ,
				@YarnType ,
				@Process ,
				@Product ,
				@Special ,
				@Trial ,
				@Shift ,
				@ShiftName ,
				@Remark ,
				@Sender ,
				@SenderTime ,
				@Direct ,
				@Relax ,
				@Relax_k ,
				@Relax_n ,
				@Necessary ,
				@NotNecessary ,
				@SpecialMentionJointing ,
				@SpecialMentionNoJointing ,
				@TensileR1 ,
				@TensileL1 ,
				@TensileR2 ,
				@TensileL2 ,
				@TensileR3 ,
				@TensileL3 ,
				@TensileR4 ,
				@TensileL4 ,
				@TensileR5 ,
				@TensileL5 ,
				@TensileRSum ,
				@TensileLSum ,
				@FirstTwistingR1 ,
				@FirstTwistingL1 ,
				@FirstTwistingR2 ,
				@FirstTwistingL2 ,
				@FirstTwistingR3 ,
				@FirstTwistingL3 ,
				@FirstTwistingR4 ,
				@FirstTwistingL4 ,
				@FirstTwistingR5 ,
				@FirstTwistingL5 ,
				@FirstTwistingRSum ,
				@FirstTwistingLSum ,
				@SecondTwistingR1 ,
				@SecondTwistingL1 ,
				@SecondTwistingR2 ,
				@SecondTwistingL2 ,
				@SecondTwistingR3 ,
				@SecondTwistingL3 ,
				@SecondTwistingR4 ,
				@SecondTwistingL4 ,
				@SecondTwistingR5 ,
				@SecondTwistingL5 ,
				@SecondTwistingRSum ,
				@SecondTwistingLSum ,
				@Remark1 ,
				@Remark2 ,
				@Remark3 ,
				@Remark4 ,
				@Remark5 ,
				@RemarkSum ,
				@RemarkOther ,
			    @Tester,
			    @TesterTime,
			    @TestResult
			);

			SET @SamplingId = @@IDENTITY;
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


/*********** Script Update Date: 2024-01-25  ***********/
/****** Object:  StoredProcedure [dbo].[GetCordSamplingDetails]    Script Date: 1/26/2024 3:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetQACordSamplingDetails
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetQACordSamplingDetails NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetQACordSamplingDetails]
(
  @Date datetime = NULL,
  @LotNo nvarchar(50) = NULL
)
AS
BEGIN
    SELECT SamplingId,
			SamplingDate,
	        TwistYarn,
	        TwistYarn,
			CordDipping,
			Rawmaterial,
			CustomerName,
			ProductCode,
			CordStructure,
			LotNo,
			ProductionSituationTwisting,
			ProductionSituationHeatSet,
			ProductionSituationDipCord,
			ProductionSituationJointing,
			StandardOfTwisting,
			MCCode,
			Bobbin,
			Cheese,
			TaperBB,
			ContainerOthers,
			SpindleNo,
			Quantity,
			Polyester,
			Nylon66,
			MaterialOthers,
			YarnType,
			Process,
			Product,
			Special,
			Trial,
			[Shift],
			ShiftName,
			Remark,
			Sender,
			SenderTime,
			Direct,
			Relax,
			Relax_k,
			Relax_n,
			Necessary,
			NotNecessary,
			SpecialMentionJointing,
			SpecialMentionNoJointing,
			TensileR1,
			TensileL1,
			TensileR2,
			TensileL2,
			TensileR3,
			TensileL3,
			TensileR4,
			TensileL4,
			TensileR5,
			TensileL5,
			TensileRSum,
			TensileLSum,
			FirstTwistingR1,
			FirstTwistingL1,
			FirstTwistingR2,
			FirstTwistingL2,
			FirstTwistingR3,
			FirstTwistingL3,
			FirstTwistingR4,
			FirstTwistingL4,
			FirstTwistingR5,
			FirstTwistingL5,
			FirstTwistingRSum,
			FirstTwistingLSum,
			SecondTwistingR1,
			SecondTwistingL1,
			SecondTwistingR2,
			SecondTwistingL2,
			SecondTwistingR3,
			SecondTwistingL3,
			SecondTwistingR4,
			SecondTwistingL4,
			SecondTwistingR5,
			SecondTwistingL5,
			SecondTwistingRSum,
			SecondTwistingLSum,
			Remark1,
			Remark2,
			Remark3,
			Remark4,
			Remark5,
			RemarkSum,
			RemarkOther,
			Tester,
			TesterTime,
			TestResult
     FROM CordSamplingDetails
     WHERE DATEADD(dd, 0, DATEDIFF(dd, 0, SamplingDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @Date)), DATEADD(dd, 0, DATEDIFF(dd, 0, SamplingDate)))
	   AND UPPER(LTRIM(RTRIM(LotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@LotNo, LotNo))))
     ORDER BY SamplingDate, LotNo;

END

GO



/*********** Script Update Date: 2024-01-25  ***********/
/****** Object:  StoredProcedure [dbo].[GetLabelCHS9Summary]    Script Date: 1/26/2024 3:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetLabelCHS9Summary
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetLabelCHS9Summary NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetLabelCHS9Summary]
(
  @LotNo nvarchar(50) = NULL
)
AS
BEGIN
    SELECT A.DIPPCId
         , A.CustomerName
         , A.ProductCode
         , A.ItemYarn
         , A.MCCode 
         , B.AppearId
		 , MIN(C.SPNo) AS SPStart
		 , MAX(C.SPNo) AS SPEnd
         , Count(C.CheckGood) AS TotalGood
     FROM DIPPCCardView A
         , S9AppearanceCheckSheet B
         , S9AppearanceCheckSheetItem C  
     WHERE B.DIPPCId = A.DIPPCId
       AND C.AppearId = B.AppearId
       AND C.CheckGood = 1
       AND A.DIPLotNo = @LotNo
     GROUP BY A.DIPPCId
            , A.CustomerName
            , A.ProductCode
            , A.ItemYarn
            , A.MCCode 
            , B.AppearId

END

GO



/*********** Script Update Date: 2024-01-25  ***********/
/****** Object:  StoredProcedure [dbo].[GetLabelCHS9Items]    Script Date: 1/26/2024 3:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetLabelCHS9Items
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetLabelCHS9Items NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetLabelCHS9Items]
(
  @LotNo nvarchar(50) = NULL
, @SPStart int = NULL
, @SPEnd int = NULL
)
AS
BEGIN
DECLARE @minSP int
DECLARE @maxSP int
    IF (@SPStart IS NULL) 
        SET @minSP = 1;
    ELSE SET @minSP = @SPStart;

    IF (@SPEnd IS NULL) 
        SET @maxSP = 200;
    ELSE SET @maxSP = @SPEnd;

    SELECT A.DIPLotNo
         , A.ProductCode
		 , C.SPNo
     FROM DIPPCCardView A
         , S9AppearanceCheckSheet B
         , S9AppearanceCheckSheetItem C  
     WHERE B.DIPPCId = A.DIPPCId
       AND C.AppearId = B.AppearId
       AND C.CheckGood = 1
       AND A.DIPLotNo = @LotNo
	   AND C.SPNo >= @minSP
	   AND C.SPNo <= @maxSP
     ORDER BY C.SPNo

END

GO

