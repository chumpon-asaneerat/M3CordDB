/*********** Script Update Date: 2023-11-29  ***********/
ALTER TABLE S5Condition ADD [Remark] nvarchar(100) NULL;
GO

ALTER TABLE S5Condition ADD LotOrTraceNo nvarchar(30) NULL;
GO

ALTER TABLE S5Condition ADD ProductCode1 nvarchar(30) NULL;
GO

ALTER TABLE S5Condition ADD ProductCode2 nvarchar(30) NULL;
GO


/*********** Script Update Date: 2023-11-29  ***********/
ALTER TABLE G4IssueYarn ADD IsAgeing bit NULL;
GO

ALTER TABLE G4IssueYarn ADD AgeingDate datetime NULL;
GO

ALTER TABLE G4IssueYarn ADD AgeingBy nvarchar(100) NULL;
GO


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[GetG4IssueYarns]    Script Date: 11/29/2023 1:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4IssueYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetG4IssueYarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetG4IssueYarns]
(
  @RequestNo nvarchar(30) = NULL
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
		 , Y.Verify
         , Y.ExpiredDate
		 , Y.DirectionNo
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y
     WHERE UPPER(LTRIM(RTRIM(I.RequestNo))) = UPPER(LTRIM(RTRIM(COALESCE(@RequestNo, I.RequestNo))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
       AND (I.WHReceiveFlag IS NULL OR I.WHReceiveFlag = 0)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[SearchG4IssueYarns]    Script Date: 11/29/2023 2:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchG4IssueYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
-- <2023-09-14> :
--	- Add parameter Request No
--	- Comment parameter @IssueDate  
--
-- [== Example ==]
--
-- EXEC SearchG4IssueYarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchG4IssueYarns]
(
  @ItemYarn nvarchar(30) = NULL
, @RequestNo nvarchar(30) = NULL
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
      FROM G4IssueYarn I, G4Yarn Y
     WHERE UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, Y.ItemYarn))))
       --AND UPPER(LTRIM(RTRIM(Y.Item400))) = UPPER(LTRIM(RTRIM(COALESCE(@Item400, Y.Item400))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.WHReceiveFlag IS NULL OR I.WHReceiveFlag = 0)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
	   AND I.RequestNo = COALESCE(@RequestNo, I.RequestNo)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[SearchWarehousePallet]    Script Date: 11/29/2023 2:02:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4IssueYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchWarehousePallet NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchWarehousePallet]
(
  @TraceNo nvarchar(30) = NULL,
  @ItemYarn nvarchar(30) = NULL
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
		 , Y.Verify
         , Y.ExpiredDate
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y
     WHERE I.PalletNo = Y.PalletNo
	   AND UPPER(LTRIM(RTRIM(I.TraceNo))) = UPPER(LTRIM(RTRIM(@TraceNo)))
	   AND UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(@ItemYarn)))
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
       AND (I.WHReceiveFlag = 1)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[SearchWarehouseStockYarns]    Script Date: 11/29/2023 2:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchWarehouseStockYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
-- <2023-09-14> :
--	- Add parameter Request No
--	- Comment parameter @IssueDate  
--
-- [== Example ==]
--
-- EXEC SearchWarehouseStockYarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchWarehouseStockYarns]
(
  @ItemYarn nvarchar(30) = NULL
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
      FROM G4IssueYarn I, G4Yarn Y
     WHERE UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, Y.ItemYarn))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.WHReceiveFlag  = 1)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[G4MarkAgeingFlag]    Script Date: 11/29/2023 2:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	G4MarkAgeingFlag
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[G4MarkAgeingFlag] (
  @G4IssueYarnPkId int
, @IsAgeing bit = 1
, @AgeingBy nvarchar(100) = NULL
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM G4IssueYarn WHERE G4IssueYarnPkId = @G4IssueYarnPkId)
        BEGIN
            IF (@IsAgeing = 1)
            BEGIN
                UPDATE G4IssueYarn 
                   SET IsAgeing = @IsAgeing
                     , AgeingDate = GETDATE()
					 , AgeingBy = @AgeingBy
                 WHERE G4IssueYarnPkId = @G4IssueYarnPkId
            END
            ELSE
            BEGIN
                UPDATE G4IssueYarn 
                   SET IsAgeing = @IsAgeing
                     , AgeingDate = NULL
					 , AgeingBy = NULL
                 WHERE G4IssueYarnPkId = @G4IssueYarnPkId
            END
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


/*********** Script Update Date: 2023-11-29  ***********/
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
CREATE PROCEDURE [dbo].[SearchG4AgeingPallet]
(
  @PalletOrTraceNo nvarchar(30) = NULL
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
	 WHERE (UPPER(LTRIM(RTRIM(Y.TraceNo))) = UPPER(LTRIM(RTRIM(COALESCE(@PalletOrTraceNo, Y.TraceNo))))
	    OR UPPER(LTRIM(RTRIM(Y.PalletNo))) = UPPER(LTRIM(RTRIM(COALESCE(@PalletOrTraceNo, Y.PalletNo)))))
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


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[SearchPCTwist1ByLotNo]    Script Date: 11/29/2023 1:27:10 ******/
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
	SELECT *
	  FROM PCTwist1View
	 WHERE UPPER(LTRIM(RTRIM(ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, ProductLotNo))))
	   AND ProductCode IS NOT NULL
     ORDER BY PCDate, ProductLotNo
END

GO


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS5Condition]    Script Date: 11/29/2023 0:23:39 ******/
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
    @LotOrTraceNo nvarchar(30),
    @ProductCode1 nvarchar(30),
    @ProductCode2 nvarchar(30),
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
                    LotOrTraceNo = @LotOrTraceNo,
                    ProductCode1 = @ProductCode1,
                    ProductCode2 = @ProductCode2
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
                LotOrTraceNo,
                ProductCode1,
                ProductCode2
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
                @LotOrTraceNo,
                @ProductCode1,
                @ProductCode2
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


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[GetS5Conditions]    Script Date: 11/29/2023 0:25:22 ******/
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
            LotOrTraceNo,
            ProductCode1,
            ProductCode2
     FROM S5Condition
     WHERE S5ConditionId = COALESCE(@S5ConditionId, S5ConditionId)
     ORDER BY S5ConditionId;

END

GO


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[GetPCTwist1]    Script Date: 11/29/2023 0:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetPCTwist1
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPCTwist1 NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetPCTwist1]
(
  @PCTwist1Id int
)
AS
BEGIN
    SELECT PCTwist1Id
         , IssueDate
         , IssueBy
         , CheckBy
         , ApproveBy
         , SectionHead
         , SectionMgr
         , MCCode
         , PaperTubeColor
         , ActualQty
         , Remark
         , LastTestNo
         , LastDoffNo
         , FinishFlag
         , DeleteFlag
         , PCId
         , PINo
         , PCDate
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TwistSpec
         , ProductLotNo
         , ProductLotNo
         , TargetQty
      FROM PCTwist1View
     WHERE PCTwist1Id = @PCTwist1Id
       --AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       --AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY PCDate;

END

GO


/*********** Script Update Date: 2023-11-29  ***********/
/****** Object:  StoredProcedure [dbo].[GetCurrentS5Condition]    Script Date: 11/29/2023 3:55:14 ******/
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
            LotOrTraceNo,
            ProductCode1,
            ProductCode2
     FROM S5Condition
     WHERE /*StartingTimeSettingTime IS NULL 
        OR */
           StartingTimeStartAgeingTime IS NULL
        OR FinishTime IS NULL
        OR OutTime IS NULL
     ORDER BY S5ConditionId;

END

GO


/*********** Script Update Date: 2023-11-29  ***********/
INSERT [dbo].[S5ConditionStd] ([ProductCode], [MainSupplySteamPressureSC], [MainSupplySteamPressureSet], [MainSupplySteamPressureSetErr], [MainSupplySteamPressureSpec], [MainSupplySteamPressureSpecErr], [AgeingSteamPressureSC], [AgeingSteamPressureSet], [AgeingSteamPressureSetErr], [AgeingSteamPressureSpec], [AgeingSteamPressureSpecErr], [SettingTemperatureSC], [SettingTemperatureSet], [SettingTemperatureSetErr], [SettingTemperatureSpec], [SettingTemperatureSpecErr], [SettingTimeSC], [SettingTimeSet], [SettingTimeSetErr], [SettingTimeSpec], [SettingTimeSpecErr], [LampStatusSystemSC], [LampStatusSystemSet], [LampStatusSystemSpec], [SoudSystemTemperatureSC], [SoudSystemTemperatureSet], [SoudSystemTemperatureSpec], [YarnTypeSC], [YarnTypeSet], [YarnTypeSpec], [CordStructureSC], [CordStructureSet], [CordStructureSpec], [TwistingNoSC], [TwistingNoSet], [TwistingNoSetErr], [TwistingNoSpec], [TwistingNoSpecErr], [UnitWeightSC], [UnitWeightSet], [UnitWeightSetErr], [UnitWeightSpec], [UnitWeightSpecErr]) VALUES (N'1800TW', NULL, CAST(6.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), NULL, NULL, NULL, CAST(6.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), NULL, NULL, NULL, CAST(60.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), NULL, NULL, NULL, CAST(20.000 AS Decimal(18, 3)), CAST(0.500 AS Decimal(18, 3)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1620-288-707C-TTS', NULL, NULL, N'P 1100T//2', NULL, NULL, CAST(60.000 AS Decimal(18, 3)), CAST(15.000 AS Decimal(18, 3)), NULL, NULL, NULL, CAST(5.000 AS Decimal(18, 3)), CAST(0.100 AS Decimal(18, 3)), NULL, NULL);
GO

