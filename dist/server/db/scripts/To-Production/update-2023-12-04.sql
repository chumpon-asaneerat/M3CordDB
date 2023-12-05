/*********** Script Update Date: 2023-12-04  ***********/
ALTER TABLE Product ADD DIPProductCode nvarchar(30) NULL;
GO

UPDATE Product
   SET DIPProductCode = ProductCode;
GO

UPDATE Product
   SET DIPProductCode = N'4673'
 WHERE ProductCode = N'1800TW';
GO

INSERT INTO Product(  ProductCode
                    , ProductName
                    , ItemYarn
                    , CordStructure
                    , TreatRoute
                    , TwistSpec
                    , DIPProductCode) 
             VALUES(  N'1800TW'
                    , N'BRAKE HOSE'
                    , N'1620-288-707C-TTS'
                    , N'1800T/1'
                    , N'S-5 → S-1 → S-13 → S -8 → S-24'
                    , N'75.0 ± 15.0 (S) T/M'
                    , N'8335');
GO


/*********** Script Update Date: 2023-12-04  ***********/
ALTER TABLE S5Condition DROP COLUMN LotOrTraceNo;
GO

ALTER TABLE S5Condition ADD FromSource int NULL;
GO

ALTER TABLE S5Condition ADD CustomerName nvarchar(100) NULL;
GO

ALTER TABLE S5Condition ADD ProductName1 nvarchar(100) NULL;
GO

ALTER TABLE S5Condition ADD ProductName2 nvarchar(100) NULL;
GO

ALTER TABLE S5Condition ADD IssueDate datetime NULL;
GO

ALTER TABLE S5Condition ADD IssueBy nvarchar(100) NULL;
GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  View [dbo].[DIPPCCardView]    Script Date: 12/4/2023 10:54:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[DIPPCCardView]
AS
    SELECT PC.DIPPCId
         , PC.CustomerId
         , CM.CustomerName
         , PC.ProductCode
         , PD.ProductName
         , PD.ItemYarn
	     , PC.MCCode
	     , PC.DoffNo
         , PD.CordStructure
         , PD.TreatRoute
         , PD.TwistSpec
         , PC.DIPLotNo
         , PC.StartTime
         , PC.EndTime
         , PC.FinishTime
         , PC.FinishFlag
         , PC.DeleteFlag
         , PC.CreateBy
         , PC.CreateDate
      FROM DIPPCCard PC 
           LEFT OUTER JOIN Customer CM ON PC.CustomerId = CM.CustomerId
           LEFT OUTER JOIN Product PD ON LTRIM(RTRIM(PC.ProductCode)) = LTRIM(RTRIM(PD.DIPProductCode))



GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPProductsByCustomerName]    Script Date: 12/4/2023 7:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetDIPProductsByCustomerName]
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
	 )
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetProductsByCustomerName]    Script Date: 12/4/2023 7:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetProductsByCustomerName]
(
  @CustomerName nvarchar(100) = NULL
)
AS
BEGIN
    SELECT DISTINCT 
           ProductId
         , ProductCode
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
	 )
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[SearchPCTwist1ByLotNo]    Script Date: 12/4/2023 8:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchPCTwist1
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchPCTwist1ByLotNo NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchPCTwist1ByLotNo]
(
  @ProductLotNo nvarchar(30) = NULL
)
AS
BEGIN
	SELECT DISTINCT *
	  FROM PCTwist1View
	 WHERE UPPER(LTRIM(RTRIM(ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, ProductLotNo))))
	   AND ProductCode IS NOT NULL
     ORDER BY PCDate, ProductLotNo, MCCode
END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[SearchG4AgeingPallet]    Script Date: 11/29/2023 1:27:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchPCTwist1
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchG4AgeingPallet NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchG4AgeingPallet]
(
  @traceNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT I.G4IssueYarnPkId -- FROM G4IssueYarn
         , I.RequestNo
         , I.IssueDate
         , I.IssueBy
         , I.TraceNo
         , I.PalletNo
         , I.WeightQty
         , I.ConeCH
         , I.PalletType
         , I.DeleteFlag
         , I.FinishFlag
         , I.WHReceiveFlag
         , I.WHReceiveDate
         , I.[Remark]
         , I.UsedCH
         , I.IsAgeing
         , I.AgeingDate
         , I.AgeingBy
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.Item400
		 , Y.ReceiveDate
		 , Y.ReceiveBy
         , Y.ExpiredDate
		 , Y.Verify
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y, Product P
	 WHERE UPPER(LTRIM(RTRIM(Y.TraceNo))) = UPPER(LTRIM(RTRIM(COALESCE(@traceNo, Y.TraceNo))))
       AND I.PalletNo = Y.PalletNo
       AND P.ItemYarn = Y.ItemYarn
       AND P.ItemYarn LIKE '1620-288-707%'
       AND P.ProductCode LIKE N'1800TW%'
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.IsAgeing IS NULL OR I.IsAgeing = 0)
       AND (I.WHReceiveFlag  = 1)
     ORDER BY I.IssueDate , I.PalletNo;
END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPPCCards]    Script Date: 12/4/2023 10:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPPCCards
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPCards NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetDIPPCCards]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , MCCode
	     , DoffNo
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
         , CreateBy
         , CreateDate
      FROM DIPPCCardView 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPPCCardsByMCCode]    Script Date: 12/4/2023 10:57:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*********** Script Update Date: 2023-11-03  ***********/
ALTER PROCEDURE [dbo].[GetDIPPCCardsByMCCode]
(
  @MCCode nvarchar(10) = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , MCCode
	     , DoffNo
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
     FROM DIPPCCardView 
     WHERE MCCode = COALESCE(@mccode, MCCode)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetLastDIPPCCard]    Script Date: 12/4/2023 10:58:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetLastDIPPCCard
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetLastDIPPCCard NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetLastDIPPCCard]
(
  @MCCode nvarchar(10) = NULL
)
AS
BEGIN
    SELECT TOP 1 
	       DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , MCCode
	     , DoffNo
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
         , CreateBy
         , CreateDate
      FROM DIPPCCardView 
     WHERE MCCode = @MCCode 
	   AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
	   AND (   StartTime IS NULL 
	        OR EndTime IS NULL 
			OR FinishTime IS NULL)
     ORDER BY DIPPCId DESC;

END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPPCCard]    Script Date: 12/4/2023 11:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPPCCard
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveDIPPCCard] (
  @CustomerId int = NULL out
, @ProductCode nvarchar(30)
, @DIPLotNo nvarchar(30)
, @ItemYarn nvarchar(30)
, @MCCode nvarchar(10)
, @DoffNo int
, @CreateDate datetime
, @CreateBy nvarchar(100)
, @FinishFlag bit
, @DeleteFlag bit
, @DIPPCId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPPCCard WHERE DIPPCId = @DIPPCId)
        BEGIN
            UPDATE DIPPCCard  
               SET CustomerId = @CustomerId
			     , ProductCode = @ProductCode
                 , DIPLotNo = @DIPLotNo
                 , ItemYarn = @ItemYarn
				 , MCCode = @MCCode
				 , DoffNo = @DoffNo
				 , CreateBy = @CreateBy
				 , CreateDate = CreateDate
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE DIPPCId = @DIPPCId
        END
        ELSE
        BEGIN
			INSERT INTO DIPPCCard 
		    (
			      CustomerId
                , ProductCode
                , DIPLotNo
                , ItemYarn
				, MCCode
				, DoffNo
				, CreateBy
				, CreateDate
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
			      @CustomerId
                , @ProductCode
                , @DIPLotNo
                , @ItemYarn
				, @MCCode
				, @DoffNo
				, @CreateBy
				, @CreateDate
                , @FinishFlag
                , @DeleteFlag
			);

			SET @DIPPCId = @@IDENTITY;
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


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS5Condition]    Script Date: 12/5/2023 16:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS5Condition
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveS5Condition] (
	@ProductCode nvarchar (30),
	@MainSupplySteamPressureSC bit,
	@MainSupplySteamPressureSet decimal (18, 3),
	@MainSupplySteamPressureSetErr decimal (18, 3),
	@MainSupplySteamPressureSetActual decimal (18, 3),
	@MainSupplySteamPressureSpec decimal (18, 3),
	@MainSupplySteamPressureSpecErr decimal (18, 3),
	@MainSupplySteamPressureSpecActual decimal (18, 3),
	@AgeingSteamPressureSC bit,
	@AgeingSteamPressureSet decimal (18, 3),
	@AgeingSteamPressureSetErr decimal (18, 3),
	@AgeingSteamPressureSetActual decimal (18, 3),
	@AgeingSteamPressureSpec decimal (18, 3),
	@AgeingSteamPressureSpecErr decimal (18, 3),
	@AgeingSteamPressureActual decimal (18, 3),
	@SettingTemperatureSC bit,
	@SettingTemperatureSet decimal (18, 3),
	@SettingTemperatureSetErr decimal (18, 3),
	@SettingTemperatureSetActual decimal (18, 3),
	@SettingTemperatureSpec decimal (18, 3),
	@SettingTemperatureSpecErr decimal (18, 3),
	@SettingTemperatureSpecActual decimal (18, 3),
	@SettingTimeSC bit,
	@SettingTimeSet decimal (18, 3),
	@SettingTimeSetErr decimal (18, 3),
	@SettingTimeSetActual decimal (18, 3),
	@SettingTimeSpec decimal (18, 3),
	@SettingTimeSpecErr decimal (18, 3),
	@SettingTimeSpecActual decimal (18, 3),
	@LampStatusSystemSC bit,
	@LampStatusSystemSet nvarchar (100),
	@LampStatusSystemSetActual bit,
	@LampStatusSystemSpec nvarchar (100),
	@LampStatusSystemSpecActual bit,
	@SoudSystemTemperatureSC bit,
	@SoudSystemTemperatureSet nvarchar (100),
	@SoudSystemTemperatureSetActual bit,
	@SoudSystemTemperatureSpec nvarchar (100),
	@SoudSystemTemperatureSpecActual bit,
	@YarnTypeSC bit,
	@YarnTypeSet nvarchar (100),
	@YarnTypeSetActual nvarchar (100),
	@YarnTypeSpec nvarchar (100),
	@YarnTypeSpecActual nvarchar (100),
	@CordStructureSC bit,
	@CordStructureSet nvarchar (100),
	@CordStructureSetActual nvarchar (100),
	@CordStructureSpec nvarchar (100),
	@CordStructureSpecActual nvarchar (100),
	@TwistingNoSC bit,
	@TwistingNoSet decimal (18, 3),
	@TwistingNoSetErr decimal (18, 3),
	@TwistingNoSetActual decimal (18, 3),
	@TwistingNoSpec decimal (18, 3),
	@TwistingNoSpecErr decimal (18, 3),
	@TwistingNoSpecActual decimal (18, 3),
	@UnitWeightSC bit,
	@UnitWeightSet decimal (18, 3),
	@UnitWeightSetErr decimal (18, 3),
	@UnitWeightSetActual decimal (18, 3),
	@UnitWeightSpec decimal (18, 3),
	@UnitWeightSpecErr decimal (18, 3),
	@UnitWeightSpecActual decimal (18, 3),
	@StartingTimeSC bit,
	@StartingTimeSettingTime datetime,
	@StartingTimeStartAgeingTime datetime,
	@FinishTimeSC bit,
	@FinishTime datetime,
	@OutTimeSC bit,
	@OutTime datetime,
	@DoffNo1SC bit,
	@DoffNo1PalletCode nvarchar (50),
	@DoffNo1TraceNo nvarchar (50),
	@DoffNo1MCNo nvarchar (50),
	@DoffNo1Doff nvarchar (50),
	@DoffNo1Qty nvarchar (50),
	@DoffNo2SC bit,
	@DoffNo2PalletCode nvarchar (50),
	@DoffNo2TraceNo nvarchar (50),
	@DoffNo2MCNo nvarchar (50),
	@DoffNo2Doff nvarchar (50),
	@DoffNo2Qty nvarchar (50),
    @UpdateBy nvarchar(100) , 
	@Remark nvarchar(MAX),
    @ProductCode1 nvarchar(30),
    @ProductCode2 nvarchar(30),
    @FromSource int,
    @CustomerName nvarchar(100),
    @ProductName1 nvarchar(100),
    @ProductName2 nvarchar(100),
    @IssueDate datetime , 
    @IssueBy nvarchar(100), 
    @S5ConditionId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S5Condition WHERE S5ConditionId = @S5ConditionId)
        BEGIN
            UPDATE S5Condition 
               SET ProductCode = @ProductCode,
					MainSupplySteamPressureSC = @MainSupplySteamPressureSC,
					MainSupplySteamPressureSet = @MainSupplySteamPressureSet,
					MainSupplySteamPressureSetErr = @MainSupplySteamPressureSetErr,
					MainSupplySteamPressureSetActual = @MainSupplySteamPressureSetActual,
					MainSupplySteamPressureSpec = @MainSupplySteamPressureSpec,
					MainSupplySteamPressureSpecErr = @MainSupplySteamPressureSpecErr,
					MainSupplySteamPressureSpecActual = @MainSupplySteamPressureSpecActual,
					AgeingSteamPressureSC = @AgeingSteamPressureSC,
					AgeingSteamPressureSet = @AgeingSteamPressureSet,
					AgeingSteamPressureSetErr = @AgeingSteamPressureSetErr,
					AgeingSteamPressureSetActual = @AgeingSteamPressureSetActual ,
					AgeingSteamPressureSpec = @AgeingSteamPressureSpec ,
					AgeingSteamPressureSpecErr = @AgeingSteamPressureSpecErr ,
					AgeingSteamPressureActual = @AgeingSteamPressureActual ,
					SettingTemperatureSC = @SettingTemperatureSC ,
					SettingTemperatureSet = @SettingTemperatureSet ,
					SettingTemperatureSetErr = @SettingTemperatureSetErr ,
					SettingTemperatureSetActual = @SettingTemperatureSetActual ,
					SettingTemperatureSpec = @SettingTemperatureSpec ,
					SettingTemperatureSpecErr = @SettingTemperatureSpecErr ,
					SettingTemperatureSpecActual = @SettingTemperatureSpecActual ,
					SettingTimeSC = @SettingTimeSC ,
					SettingTimeSet = @SettingTimeSet ,
					SettingTimeSetErr = @SettingTimeSetErr ,
					SettingTimeSetActual = @SettingTimeSetActual ,
					SettingTimeSpec = @SettingTimeSpec ,
					SettingTimeSpecErr = @SettingTimeSpecErr ,
					SettingTimeSpecActual = @SettingTimeSpecActual ,
					LampStatusSystemSC = @LampStatusSystemSC ,
					LampStatusSystemSet = @LampStatusSystemSet ,
					LampStatusSystemSetActual = @LampStatusSystemSetActual ,
					LampStatusSystemSpec = @LampStatusSystemSpec ,
					LampStatusSystemSpecActual = @LampStatusSystemSpecActual ,
					SoudSystemTemperatureSC = @SoudSystemTemperatureSC ,
					SoudSystemTemperatureSet = @SoudSystemTemperatureSet ,
					SoudSystemTemperatureSetActual = @SoudSystemTemperatureSetActual ,
					SoudSystemTemperatureSpec = @SoudSystemTemperatureSpec ,
					SoudSystemTemperatureSpecActual = @SoudSystemTemperatureSpecActual ,
					YarnTypeSC = @YarnTypeSC ,
					YarnTypeSet = @YarnTypeSet ,
					YarnTypeSetActual = @YarnTypeSetActual ,
					YarnTypeSpec = @YarnTypeSpec ,
					YarnTypeSpecActual = @YarnTypeSpecActual ,
					CordStructureSC = @CordStructureSC ,
					CordStructureSet = @CordStructureSet ,
					CordStructureSetActual = @CordStructureSetActual ,
					CordStructureSpec = @CordStructureSpec ,
					CordStructureSpecActual = @CordStructureSpecActual ,
					TwistingNoSC = @TwistingNoSC ,
					TwistingNoSet = @TwistingNoSet ,
					TwistingNoSetErr = @TwistingNoSetErr ,
					TwistingNoSetActual = @TwistingNoSetActual ,
					TwistingNoSpec = @TwistingNoSpec ,
					TwistingNoSpecErr = @TwistingNoSpecErr ,
					TwistingNoSpecActual = @TwistingNoSpecActual ,
					UnitWeightSC = @UnitWeightSC ,
					UnitWeightSet = @UnitWeightSet ,
					UnitWeightSetErr = @UnitWeightSetErr ,
					UnitWeightSetActual = @UnitWeightSetActual ,
					UnitWeightSpec = @UnitWeightSpec ,
					UnitWeightSpecErr = @UnitWeightSpecErr ,
					UnitWeightSpecActual = @UnitWeightSpecActual ,
					StartingTimeSC = @StartingTimeSC ,
					StartingTimeSettingTime = @StartingTimeSettingTime ,
					StartingTimeStartAgeingTime = @StartingTimeStartAgeingTime ,
					FinishTimeSC = @FinishTimeSC ,
					FinishTime = @FinishTime ,
					OutTimeSC = @OutTimeSC ,
					OutTime = @OutTime ,
					DoffNo1SC = @DoffNo1SC ,
					DoffNo1PalletCode = @DoffNo1PalletCode ,
					DoffNo1TraceNo = @DoffNo1TraceNo ,
					DoffNo1MCNo = @DoffNo1MCNo ,
					DoffNo1Doff = @DoffNo1Doff ,
					DoffNo1Qty = @DoffNo1Qty ,
					DoffNo2SC = @DoffNo2SC ,
					DoffNo2PalletCode = @DoffNo2PalletCode ,
					DoffNo2TraceNo = @DoffNo2TraceNo ,
					DoffNo2MCNo = @DoffNo2MCNo ,
					DoffNo2Doff = @DoffNo2Doff ,
					DoffNo2Qty = @DoffNo2Qty ,
                    UpdateBy = @UpdateBy ,
                    UpdateDate = GETDATE(),
					[Remark] = @Remark,
                    ProductCode1 = @ProductCode1,
                    ProductCode2 = @ProductCode2,
                    FromSource = @FromSource,
                    CustomerName = @CustomerName,
                    ProductName1 = @ProductName1,
                    ProductName2 = @ProductName2,
                    IssueBy = @IssueBy,
                    IssueDate = @IssueDate
             WHERE S5ConditionId = @S5ConditionId
        END
        ELSE
        BEGIN
			INSERT INTO S5Condition
		    (
                ProductCode ,
				MainSupplySteamPressureSC ,
				MainSupplySteamPressureSet ,
				MainSupplySteamPressureSetErr ,
				MainSupplySteamPressureSetActual ,
				MainSupplySteamPressureSpec ,
				MainSupplySteamPressureSpecErr ,
				MainSupplySteamPressureSpecActual ,
				AgeingSteamPressureSC ,
				AgeingSteamPressureSet ,
				AgeingSteamPressureSetErr ,
				AgeingSteamPressureSetActual ,
				AgeingSteamPressureSpec ,
				AgeingSteamPressureSpecErr ,
				AgeingSteamPressureActual ,
				SettingTemperatureSC ,
				SettingTemperatureSet ,
				SettingTemperatureSetErr ,
				SettingTemperatureSetActual ,
				SettingTemperatureSpec ,
				SettingTemperatureSpecErr ,
				SettingTemperatureSpecActual ,
				SettingTimeSC ,
				SettingTimeSet ,
				SettingTimeSetErr ,
				SettingTimeSetActual ,
				SettingTimeSpec ,
				SettingTimeSpecErr ,
				SettingTimeSpecActual ,
				LampStatusSystemSC ,
				LampStatusSystemSet ,
				LampStatusSystemSetActual ,
				LampStatusSystemSpec ,
				LampStatusSystemSpecActual ,
				SoudSystemTemperatureSC ,
				SoudSystemTemperatureSet ,
				SoudSystemTemperatureSetActual ,
				SoudSystemTemperatureSpec ,
				SoudSystemTemperatureSpecActual ,
				YarnTypeSC ,
				YarnTypeSet ,
				YarnTypeSetActual ,
				YarnTypeSpec ,
				YarnTypeSpecActual ,
				CordStructureSC ,
				CordStructureSet ,
				CordStructureSetActual ,
				CordStructureSpec ,
				CordStructureSpecActual ,
				TwistingNoSC ,
				TwistingNoSet ,
				TwistingNoSetErr ,
				TwistingNoSetActual ,
				TwistingNoSpec ,
				TwistingNoSpecErr ,
				TwistingNoSpecActual ,
				UnitWeightSC ,
				UnitWeightSet ,
				UnitWeightSetErr ,
				UnitWeightSetActual ,
				UnitWeightSpec ,
				UnitWeightSpecErr ,
				UnitWeightSpecActual ,
				StartingTimeSC ,
				StartingTimeSettingTime,
				StartingTimeStartAgeingTime,
				FinishTimeSC ,
				FinishTime,
				OutTimeSC ,
				OutTime,
				DoffNo1SC ,
				DoffNo1PalletCode,
				DoffNo1TraceNo,
				DoffNo1MCNo,
				DoffNo1Doff,
				DoffNo1Qty,
				DoffNo2SC ,
				DoffNo2PalletCode,
				DoffNo2TraceNo,
				DoffNo2MCNo,
				DoffNo2Doff,
				DoffNo2Qty,
                UpdateBy ,
                UpdateDate,
				[Remark],
                ProductCode1,
                ProductCode2,
                FromSource,
                CustomerName,
                ProductName1,
                ProductName2,
                IssueBy,
                IssueDate
			)
			VALUES
			(
                @ProductCode ,
				@MainSupplySteamPressureSC ,
				@MainSupplySteamPressureSet ,
				@MainSupplySteamPressureSetErr ,
				@MainSupplySteamPressureSetActual ,
				@MainSupplySteamPressureSpec ,
				@MainSupplySteamPressureSpecErr ,
				@MainSupplySteamPressureSpecActual ,
				@AgeingSteamPressureSC ,
				@AgeingSteamPressureSet ,
				@AgeingSteamPressureSetErr ,
				@AgeingSteamPressureSetActual ,
				@AgeingSteamPressureSpec ,
				@AgeingSteamPressureSpecErr ,
				@AgeingSteamPressureActual ,
				@SettingTemperatureSC ,
				@SettingTemperatureSet ,
				@SettingTemperatureSetErr ,
				@SettingTemperatureSetActual ,
				@SettingTemperatureSpec ,
				@SettingTemperatureSpecErr ,
				@SettingTemperatureSpecActual ,
				@SettingTimeSC ,
				@SettingTimeSet ,
				@SettingTimeSetErr ,
				@SettingTimeSetActual ,
				@SettingTimeSpec ,
				@SettingTimeSpecErr ,
				@SettingTimeSpecActual ,
				@LampStatusSystemSC ,
				@LampStatusSystemSet ,
				@LampStatusSystemSetActual ,
				@LampStatusSystemSpec ,
				@LampStatusSystemSpecActual ,
				@SoudSystemTemperatureSC ,
				@SoudSystemTemperatureSet ,
				@SoudSystemTemperatureSetActual ,
				@SoudSystemTemperatureSpec ,
				@SoudSystemTemperatureSpecActual ,
				@YarnTypeSC ,
				@YarnTypeSet ,
				@YarnTypeSetActual ,
				@YarnTypeSpec ,
				@YarnTypeSpecActual ,
				@CordStructureSC ,
				@CordStructureSet ,
				@CordStructureSetActual ,
				@CordStructureSpec ,
				@CordStructureSpecActual ,
				@TwistingNoSC ,
				@TwistingNoSet ,
				@TwistingNoSetErr ,
				@TwistingNoSetActual ,
				@TwistingNoSpec ,
				@TwistingNoSpecErr ,
				@TwistingNoSpecActual ,
				@UnitWeightSC ,
				@UnitWeightSet ,
				@UnitWeightSetErr ,
				@UnitWeightSetActual ,
				@UnitWeightSpec ,
				@UnitWeightSpecErr ,
				@UnitWeightSpecActual ,
				@StartingTimeSC ,
				@StartingTimeSettingTime,
				@StartingTimeStartAgeingTime,
				@FinishTimeSC ,
				@FinishTime,
				@OutTimeSC ,
				@OutTime,
				@DoffNo1SC ,
				@DoffNo1PalletCode,
				@DoffNo1TraceNo,
				@DoffNo1MCNo,
				@DoffNo1Doff,
				@DoffNo1Qty,
				@DoffNo2SC ,
				@DoffNo2PalletCode,
				@DoffNo2TraceNo,
				@DoffNo2MCNo,
				@DoffNo2Doff,
				@DoffNo2Qty,
                @UpdateBy ,
                GETDATE(),
				@Remark,
                @ProductCode1,
                @ProductCode2,
                @FromSource,
                @CustomerName,
                @ProductName1,
                @ProductName2,
                @IssueBy,
                @IssueDate
			);
        END

        SET @S5ConditionId = @@IDENTITY;

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


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetS5Conditions]    Script Date: 12/5/2023 16:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS5Conditions
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS5Conditions NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetS5Conditions]
(
  @S5ConditionId int = NULL
)
AS
BEGIN
    SELECT  S5ConditionId, 
            ProductCode ,
			MainSupplySteamPressureSC ,
			MainSupplySteamPressureSet ,
			MainSupplySteamPressureSetErr ,
			MainSupplySteamPressureSetActual ,
			MainSupplySteamPressureSpec ,
			MainSupplySteamPressureSpecErr ,
			MainSupplySteamPressureSpecActual ,
			AgeingSteamPressureSC ,
			AgeingSteamPressureSet ,
			AgeingSteamPressureSetErr ,
			AgeingSteamPressureSetActual ,
			AgeingSteamPressureSpec ,
			AgeingSteamPressureSpecErr ,
			AgeingSteamPressureActual ,
			SettingTemperatureSC ,
			SettingTemperatureSet ,
			SettingTemperatureSetErr ,
			SettingTemperatureSetActual ,
			SettingTemperatureSpec ,
			SettingTemperatureSpecErr ,
			SettingTemperatureSpecActual ,
			SettingTimeSC ,
			SettingTimeSet ,
			SettingTimeSetErr ,
			SettingTimeSetActual ,
			SettingTimeSpec ,
			SettingTimeSpecErr ,
			SettingTimeSpecActual ,
			LampStatusSystemSC ,
			LampStatusSystemSet ,
			LampStatusSystemSetActual ,
			LampStatusSystemSpec ,
			LampStatusSystemSpecActual ,
			SoudSystemTemperatureSC ,
			SoudSystemTemperatureSet ,
			SoudSystemTemperatureSetActual ,
			SoudSystemTemperatureSpec ,
			SoudSystemTemperatureSpecActual ,
			YarnTypeSC ,
			YarnTypeSet ,
			YarnTypeSetActual ,
			YarnTypeSpec ,
			YarnTypeSpecActual ,
			CordStructureSC ,
			CordStructureSet ,
			CordStructureSetActual ,
			CordStructureSpec ,
			CordStructureSpecActual ,
			TwistingNoSC ,
			TwistingNoSet ,
			TwistingNoSetErr ,
			TwistingNoSetActual ,
			TwistingNoSpec ,
			TwistingNoSpecErr ,
			TwistingNoSpecActual ,
			UnitWeightSC ,
			UnitWeightSet ,
			UnitWeightSetErr ,
			UnitWeightSetActual ,
			UnitWeightSpec ,
			UnitWeightSpecErr ,
			UnitWeightSpecActual ,
			StartingTimeSC ,
			StartingTimeSettingTime ,
			StartingTimeStartAgeingTime ,
			FinishTimeSC ,
			FinishTime ,
			OutTimeSC ,
			OutTime ,
			DoffNo1SC ,
			DoffNo1PalletCode ,
			DoffNo1TraceNo ,
			DoffNo1MCNo ,
			DoffNo1Doff ,
			DoffNo1Qty ,
			DoffNo2SC ,
			DoffNo2PalletCode ,
			DoffNo2TraceNo ,
			DoffNo2MCNo ,
			DoffNo2Doff ,
			DoffNo2Qty ,
            UpdateBy ,
            UpdateDate ,
            CheckedBy , 
            CheckedDate ,
            ApproveBy ,
            ApproveDate ,
            ShiftLeader , 
            ProductionManager,
            [Remark],
			ProductCode1,
			ProductCode2,
            FromSource,
            CustomerName,
            ProductName1,
            ProductName2,
            IssueDate,
            IssueBy
     FROM S5Condition
     WHERE S5ConditionId = COALESCE(@S5ConditionId, S5ConditionId)
     ORDER BY S5ConditionId;

END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetCurrentS5Condition]    Script Date: 12/5/2023 17:03:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCurrentS5Condition
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCurrentS5Condition NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetCurrentS5Condition]
(
    @FromSource int
)
AS
BEGIN
    SELECT  S5ConditionId, 
            ProductCode ,
			MainSupplySteamPressureSC ,
			MainSupplySteamPressureSet ,
			MainSupplySteamPressureSetErr ,
			MainSupplySteamPressureSetActual ,
			MainSupplySteamPressureSpec ,
			MainSupplySteamPressureSpecErr ,
			MainSupplySteamPressureSpecActual ,
			AgeingSteamPressureSC ,
			AgeingSteamPressureSet ,
			AgeingSteamPressureSetErr ,
			AgeingSteamPressureSetActual ,
			AgeingSteamPressureSpec ,
			AgeingSteamPressureSpecErr ,
			AgeingSteamPressureActual ,
			SettingTemperatureSC ,
			SettingTemperatureSet ,
			SettingTemperatureSetErr ,
			SettingTemperatureSetActual ,
			SettingTemperatureSpec ,
			SettingTemperatureSpecErr ,
			SettingTemperatureSpecActual ,
			SettingTimeSC ,
			SettingTimeSet ,
			SettingTimeSetErr ,
			SettingTimeSetActual ,
			SettingTimeSpec ,
			SettingTimeSpecErr ,
			SettingTimeSpecActual ,
			LampStatusSystemSC ,
			LampStatusSystemSet ,
			LampStatusSystemSetActual ,
			LampStatusSystemSpec ,
			LampStatusSystemSpecActual ,
			SoudSystemTemperatureSC ,
			SoudSystemTemperatureSet ,
			SoudSystemTemperatureSetActual ,
			SoudSystemTemperatureSpec ,
			SoudSystemTemperatureSpecActual ,
			YarnTypeSC ,
			YarnTypeSet ,
			YarnTypeSetActual ,
			YarnTypeSpec ,
			YarnTypeSpecActual ,
			CordStructureSC ,
			CordStructureSet ,
			CordStructureSetActual ,
			CordStructureSpec ,
			CordStructureSpecActual ,
			TwistingNoSC ,
			TwistingNoSet ,
			TwistingNoSetErr ,
			TwistingNoSetActual ,
			TwistingNoSpec ,
			TwistingNoSpecErr ,
			TwistingNoSpecActual ,
			UnitWeightSC ,
			UnitWeightSet ,
			UnitWeightSetErr ,
			UnitWeightSetActual ,
			UnitWeightSpec ,
			UnitWeightSpecErr ,
			UnitWeightSpecActual ,
			StartingTimeSC ,
			StartingTimeSettingTime ,
			StartingTimeStartAgeingTime ,
			FinishTimeSC ,
			FinishTime ,
			OutTimeSC ,
			OutTime ,
			DoffNo1SC ,
			DoffNo1PalletCode ,
			DoffNo1TraceNo ,
			DoffNo1MCNo ,
			DoffNo1Doff ,
			DoffNo1Qty ,
			DoffNo2SC ,
			DoffNo2PalletCode ,
			DoffNo2TraceNo ,
			DoffNo2MCNo ,
			DoffNo2Doff ,
			DoffNo2Qty ,
            UpdateBy ,
            UpdateDate ,
            CheckedBy , 
            CheckedDate ,
            ApproveBy ,
            ApproveDate ,
            ShiftLeader , 
            ProductionManager,
            [Remark],
            ProductCode1,
            ProductCode2,
            FromSource,
            CustomerName,
            ProductName1,
            ProductName2,
            IssueDate,
            IssueBy
     FROM S5Condition
     WHERE FromSource = @FromSource
       AND (
               /*StartingTimeSettingTime IS NULL 
            OR */
               StartingTimeStartAgeingTime IS NULL
            OR FinishTime IS NULL
            OR OutTime IS NULL
           )
     ORDER BY S5ConditionId;

END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[SearchDIPPalletSlip]    Script Date: 12/5/2023 19:28:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchDIPPalletSlip
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchDIPPalletSlip NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchDIPPalletSlip]
(
  @PalletCode nvarchar(30)
, @PalletStatus int = NULL
)
AS
BEGIN
    SELECT *
     FROM DIPPalletSlipView
     WHERE UPPER(LTRIM(RTRIM(PalletCode))) = UPPER(LTRIM(RTRIM(COALESCE(@PalletCode, PalletCode))))
	   AND PalletStatus = COALESCE(@PalletStatus, PalletStatus)
     ORDER BY CreateDate, DIPLotNo
END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetS5ConditionStdByDIPCode]    Script Date: 12/5/2023 19:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS5ConditionStdByDIPCode
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS5ConditionStdByDIPCode NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS5ConditionStdByDIPCode]
(
  @DIPProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT  @DIPProductCode AS ProductCode ,
            ProductCode AS TwistProductCode,
			MainSupplySteamPressureSC ,
			MainSupplySteamPressureSet ,
			MainSupplySteamPressureSetErr ,
			MainSupplySteamPressureSpec ,
			MainSupplySteamPressureSpecErr ,
			AgeingSteamPressureSC ,
			AgeingSteamPressureSet ,
			AgeingSteamPressureSetErr ,
			AgeingSteamPressureSpec ,
			AgeingSteamPressureSpecErr ,
			SettingTemperatureSC ,
			SettingTemperatureSet ,
			SettingTemperatureSetErr ,
			SettingTemperatureSpec ,
			SettingTemperatureSpecErr ,
			SettingTimeSC ,
			SettingTimeSet ,
			SettingTimeSetErr ,
			SettingTimeSpec ,
			SettingTimeSpecErr ,
			LampStatusSystemSC ,
			LampStatusSystemSet ,
			LampStatusSystemSpec ,
			SoudSystemTemperatureSC ,
			SoudSystemTemperatureSet ,
			SoudSystemTemperatureSpec ,
			YarnTypeSC ,
			YarnTypeSet ,
			YarnTypeSpec ,
			CordStructureSC ,
			CordStructureSet ,
			CordStructureSpec ,
			TwistingNoSC ,
			TwistingNoSet ,
			TwistingNoSetErr ,
			TwistingNoSpec ,
			TwistingNoSpecErr ,
			UnitWeightSC ,
			UnitWeightSet ,
			UnitWeightSetErr ,
			UnitWeightSpec ,
			UnitWeightSpecErr 
     FROM S5ConditionStd
     WHERE ProductCode IN 
         (
            SELECT DISTINCT ProductCode FROM Product
             WHERE UPPER(LTRIM(RTRIM(DIPProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@DIPProductCode, DIPProductCode))))
         )
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-12-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPPCCards]    Script Date: 12/5/2023 20:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPPCCards
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPCards NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetDIPPCCards]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , MCCode
	     , DoffNo
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
         , CreateBy
         , CreateDate
      FROM DIPPCCardView 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       --AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

GO


/*********** Script Update Date: 2023-12-04  ***********/

