/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[ResetPKId]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	ResetPKId
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC ResetPkId N'TABLE NAME'
-- =============================================
CREATE PROCEDURE [dbo].[ResetPKId]
(
  @TableName nvarchar(max)
, @seedId int = 0
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out
)
AS
BEGIN
    BEGIN TRY
		IF (@seedId IS NULL) SET @seedId = 0
        DBCC CHECKIDENT(@TableName, RESEED, @seedId);
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


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DropTable]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: DropAll.
-- Description:	Drop Table and it's related indexes, constrains, keys
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropTable
-- =============================================
CREATE PROCEDURE [dbo].[DropTable]
(
  @tableName nvarchar(max)
)
AS
BEGIN
DECLARE @sqlDropIndexes nvarchar(MAX)
DECLARE @sqlDropConstrains nvarchar(MAX)
DECLARE @sqlDropTable nvarchar(MAX)
	-- DROP CONSTRAINS (PK, FK)
	SET @sqlDropConstrains = ''
	SELECT @sqlDropConstrains += N'ALTER TABLE ' + QUOTENAME(object_schema_name(object_id)) + '.' + QUOTENAME(OBJECT_NAME(PARENT_OBJECT_ID)) + ' DROP CONSTRAINT ' + QUOTENAME(OBJECT_NAME(OBJECT_ID)) + ';' + CHAR(13) + CHAR(10)
	  FROM SYS.OBJECTS
	 WHERE TYPE_DESC LIKE '%CONSTRAINT' AND OBJECT_NAME(PARENT_OBJECT_ID) = @tableName;

	--PRINT 'DROP CONSTRAINS (PK, FK)'
	--PRINT @sqlDropConstrains
	EXECUTE SP_EXECUTESQL @sqlDropConstrains

	-- DROP INDEXES
	SET @sqlDropIndexes = ''
	SELECT @sqlDropIndexes = (
		SELECT 'DROP INDEX ' + QUOTENAME(ix.name) + ' ON ' + QUOTENAME(object_schema_name(object_id)) + '.' + QUOTENAME(OBJECT_NAME(object_id)) + ';' + CHAR(10)
		  FROM sys.indexes ix
		 WHERE ix.Name IS NOT NULL 
		   AND object_schema_name(object_id) NOT IN ('sys')
		   --AND ix.Name like '%IX_%'
		   AND OBJECT_NAME(object_id) = COALESCE(@tableName, OBJECT_NAME(object_id))
		   FOR XML PATH(''))

	--PRINT 'DROP INDEXES'
	--PRINT @sqlDropIndexes
	EXEC SP_EXECUTESQL @sqlDropIndexes

	-- DROP TABLE (Identity Property should be remove when table is drop.
	-- To check all identity columns use below query
	--SELECT object_name(object_id) as TableName, name as ColumnName FROM sys.columns WHERE is_identity = 1

	SET @sqlDropTable = 'DROP TABLE ' + @tableName
	--PRINT 'DROP TABLE'
	EXEC SP_EXECUTESQL @sqlDropTable
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
EXEC DropTable N'ItemCode'
GO

EXEC DropTable N'G4Yarn'
GO

EXEC DropTable N'CordYarn'
GO


/*********** Script Update Date: 2023-06-20  ***********/
CREATE TABLE ItemCode(
    Item400 nvarchar(30) NOT NULL, -- AS400
    ItemYarn nvarchar(30) NOT NULL, -- TRACE
    ItemGroup nvarchar(30) NULL, -- LOT GROUP
 CONSTRAINT PK_ItemCode PRIMARY KEY (Item400 ASC)
)

CREATE INDEX IX_ItemCode_ItemYarn ON ItemCode(ItemYarn ASC)
GO

CREATE INDEX IX_ItemCode_ItemGroup ON ItemCode(ItemGroup ASC)
GO


/*********** Script Update Date: 2023-06-20  ***********/
CREATE TABLE G4Yarn(
	G4YarnPkId int IDENTITY(1,1) NOT NULL,
    EntryDate datetime NULL,
    TraceNo nvarchar(30) NULL, -- รหัสเส้นด้ายจาก supplier 2170330024
    PalletNo nvarchar(30) NULL, -- รหัส Pallet (แท่นวาง) S7G280004
    LotNo nvarchar(30) NULL, -- เลข Lot No.
    ItemYarn nvarchar(30) NULL, -- รหัสเส้นด้าย 470-72-1781-JJ
    PalletType nvarchar(30) NULL, -- ประเภท Pallet 'F' อาจจะย่อมาจาก Flat
    Item400 nvarchar(30) NULL, -- รหัส Item จาก AS 400
    ConeCH decimal(16, 3) NULL, -- จำนวน CH
    Unit nvarchar(20) NULL, -- Unit KG
    KgPerCH decimal(16, 3) NULL, -- น้ำหนักต่อ CH
    WeightQty decimal(16, 3) NULL, -- น้ำหนักรวมทั้ง Pallet
    RemainQty decimal(16, 3) NULL, -- น้ำหนักที่เหลือ กรณี ถูกเอาไปใช้แล้ว
    ReceiveDate datetime NULL,
    ReceiveBy int NULL,
    UpdateDate datetime NULL,
    MovementDate datetime NULL,
    Verify bit NULL DEFAULT 0,
    Packing bit NULL DEFAULT 0,
    Clean bit NULL DEFAULT 0,
    Tearing bit NULL DEFAULT 0,
    Falldown bit NULL DEFAULT 0,
    Certification bit NULL DEFAULT 0,
    Invoice bit NULL DEFAULT 0,
    IdentifyArea bit NULL DEFAULT 0,
    AmountPallet bit NULL DEFAULT 0,
    Other nvarchar(1000) NULL,
    [Action] nvarchar(1000) NULL,
    FinishFlag bit NULL DEFAULT 0,
    UpdateFlag bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_G4Yarn PRIMARY KEY (G4YarnPkId ASC)
)

CREATE INDEX IX_G4Yarn_TraceNo ON G4Yarn(TraceNo ASC)
GO

CREATE INDEX IX_G4Yarn_PalletNo ON G4Yarn(PalletNo ASC)
GO

CREATE INDEX IX_G4Yarn_LotNo ON G4Yarn(LotNo ASC)
GO

CREATE INDEX IX_G4Yarn_ItemYarn ON G4Yarn(ItemYarn ASC)
GO

CREATE INDEX IX_G4Yarn_Item400 ON G4Yarn(Item400 ASC)
GO


/*********** Script Update Date: 2023-06-20  ***********/
CREATE TABLE CordYarn(
	CordYarnPkId int IDENTITY(1,1) NOT NULL,
    ReceiveDate datetime NULL,
    ReceiveBy int NULL,
    PalletNo nvarchar(30) NULL, -- รหัส Pallet (แท่นวาง) S7G280004
    TraceNo nvarchar(30) NULL, -- รหัสเส้นด้ายจาก G4 2170330024
    LotNo nvarchar(30) NULL, -- รหัส Lot G4
    ItemYarn nvarchar(30) NULL, -- รหัสเส้นด้าย 470-72-1781-JJ
    PalletType nvarchar(30) NULL, -- ประเภท Pallet 'F' อาจจะย่อมาจาก Flat
    Item400 nvarchar(30) NULL, -- รหัส Item จาก AS 400
    ConeCH decimal(16, 3) NULL, -- จำนวน CH
    WeightQty decimal(16, 3) NULL, -- น้ำหนักรวมทั้ง Pallet
    FinishFlag bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_CordYarn PRIMARY KEY (CordYarnPkId ASC)
)

CREATE INDEX IX_CordYarn_TraceNo ON CordYarn(TraceNo ASC)
GO

CREATE INDEX IX_CordYarn_PalletNo ON CordYarn(PalletNo ASC)
GO

CREATE INDEX IX_CordYarn_LotNo ON CordYarn(LotNo ASC)
GO

CREATE INDEX IX_CordYarn_ItemYarn ON CordYarn(ItemYarn ASC)
GO

CREATE INDEX IX_CordYarn_Item400 ON CordYarn(Item400 ASC)
GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  View [dbo].[UserInfoView]    Script Date: 11/27/2022 10:10:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW G4YarnView
AS
	SELECT A.G4YarnPkId
	     , A.EntryDate
	     , A.TraceNo
	     , A.PalletNo
		 , A.LotNo
		 , A.ItemYarn
		 , A.PalletType
		 , A.Item400
		 , A.ConeCH
		 , A.Unit
		 , A.KgPerCH
		 , A.WeightQty
		 , A.RemainQty
		 , A.ReceiveDate
		 , A.ReceiveBy
		 , A.UpdateDate
		 , A.MovementDate
		 , A.Verify
		 , A.Packing
		 , A.Clean
		 , A.Tearing
		 , A.Falldown
		 , A.Certification
		 , A.Invoice
		 , A.IdentifyArea
		 , A.AmountPallet
		 , A.Other
		 , A.[Action]
		 , A.FinishFlag
		 , A.UpdateFlag
		 , A.DeleteFlag
		 , B.RoleId
		 , B.RoleName
		 , B.FullName AS ReceiveByFullName
		 , B.UserName AS ReceiveByUserName
	  FROM G4Yarn A LEFT OUTER JOIN UserInfoView B ON A.ReceiveBy = B.UserID

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetItemCodes]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetItemCodes
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetItemCodes NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetItemCodes]
(
  @unused nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM ItemCode
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveItemCode]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveItemCode
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveItemCode] (
  @Item400 nvarchar(30)
, @ItemYarn nvarchar(30)
, @ItemGroup nvarchar(30)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ItemCode WHERE Item400 = @Item400)
        BEGIN
            UPDATE ItemCode 
               SET ItemYarn = @ItemYarn
                 , ItemGroup = @ItemGroup
             WHERE Item400 = @Item400
        END
        ELSE
        BEGIN
			INSERT INTO ItemCode
			(
                   Item400
                 , ItemYarn
                 , ItemGroup
			)
			VALUES
			(
                   @Item400
                 , @ItemYarn
                 , @ItemGroup
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


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveBCSPRFTP]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveBCSPRFTP
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveBCSPRFTP] (
  @DTTRA datetime  -- MovementDate
, @DTINP datetime  -- EntryDate
, @CDCON nvarchar(30) -- Pallet No
, @BLELE nvarchar(30) -- Weight Qty
, @CDUM0 nvarchar(20) -- Unit
, @CDKE1 nvarchar(30) -- ItemCode400
, @CDLOT nvarchar(30) -- Lot No
, @CDQUA nvarchar(30) -- N/A
, @TECU1 decimal(16, 3) = 0.0
, @TECU2 decimal(16, 3) = 0.0
, @TECU3 decimal(16, 3) = 0.0 -- ConeCH
, @TECU4 decimal(16, 3) = 0.0
, @TECU5 decimal(16, 3) = 0.0
, @TECU6 nvarchar(30) = NULL -- Trace No
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @ItemYarn nvarchar(30)
DECLARE @iCnt int
DECLARE @KgPerCH decimal(16, 3) 
	BEGIN TRY
        SELECT @ItemYarn = ItemYarn 
          FROM ItemCode 
         WHERE Item400 = @CDKE1

        --IF (@ItemYarn IS NULL)
        --BEGIN
        --    SET @ItemYarn = @CDKE1
        --    INSERT INTO ItemCode (ItemCode400, ItemYarn) VALUES (@CDKE1, @ItemYarn)
        --END

        SELECT @iCnt = COUNT(*)
          FROM G4Yarn
         WHERE PALLETNO = @CDCON;

        SET @KgPerCH = @BLELE / @TECU3; -- CALC Kg Per CH
        
        IF (@iCnt = 0)
        BEGIN

			INSERT INTO G4Yarn
			(
                   EntryDate
                 , TraceNo
                 , PalletNo
                 , ItemYarn
                 , LotNo
                 , Item400
                 , Unit
                 , ConeCH
                 , WeightQty
                 , MovementDate
                 , KgPerCH
			)
			VALUES
			(
                   @DTINP
                 , @TECU6
                 , @CDCON
                 , @ItemYarn
                 , @CDLOT
                 , @CDKE1
                 , @CDUM0
                 , @TECU3
                 , @BLELE
                 , @DTTRA
                 , @KgPerCH
			);
        END
        ELSE
        BEGIN
            UPDATE G4Yarn 
               SET EntryDate = COALESCE(@DTINP, EntryDate)
                 , TraceNo = COALESCE(@TECU6, TraceNo)
                 , PalletNo = COALESCE(@CDCON, PalletNo)
                 , ItemYarn = COALESCE(@ItemYarn, ItemYarn)
                 , LotNo = COALESCE(@CDLOT, LotNo)
                 , Item400 = COALESCE(@CDKE1, Item400)
                 , Unit = COALESCE(@CDUM0, Unit)
                 , ConeCH = COALESCE(@TECU3, ConeCH)
                 , WeightQty = COALESCE(@BLELE, WeightQty)
                 , MovementDate = COALESCE(@DTTRA, MovementDate)
                 , KgPerCH = COALESCE(@KgPerCH, KgPerCH)
             WHERE PalletNo = @CDCON;
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


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveG4Yarn]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveG4Yarn
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveG4Yarn] (
  @EntryDate datetime
, @ItemYarn nvarchar(30)
, @PalletNo nvarchar(30)
, @WeightQty decimal(16, 3)
, @LotNo nvarchar(30)
, @TraceNo nvarchar(30)
, @KgPerCH decimal(16, 3)
, @ConeCH decimal(16, 3)
, @PalletType nvarchar(30)
, @Item400 nvarchar(30)
, @Unit nvarchar(20)
, @RemainQty decimal(16, 3)
, @ReceiveDate datetime
, @ReceiveBy int
, @UpdateDate datetime
, @MovementDate datetime
, @Verify bit
, @Packing bit
, @Clean bit
, @Tearing bit
, @Falldown bit
, @Certification bit
, @Invoice bit
, @IdentifyArea bit
, @AmountPallet bit
, @Other nvarchar(1000)
, @Action nvarchar(1000)
, @FinishFlag bit
, @UpdateFlag bit
, @DeleteFlag bit
, @G4YarnPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM G4Yarn WHERE G4YarnPkId = @G4YarnPkId)
        BEGIN
            UPDATE G4Yarn 
               SET EntryDate = @EntryDate
                 , ItemYarn = @ItemYarn
                 , PalletNo = @PalletNo
                 , WeightQty = @WeightQty
                 , LotNo = @LotNo
                 , TraceNo = @TraceNo
                 , KgPerCH = @KgPerCH
                 , ConeCH = @ConeCH
                 , PalletType = @PalletType
                 , Item400 = @Item400
                 , Unit = @Unit
                 , RemainQty = @RemainQty
                 , ReceiveDate = @ReceiveDate
                 , ReceiveBy = @ReceiveBy
                 , UpdateDate = @UpdateDate
                 , MovementDate = @MovementDate
                 , Verify = @Verify
                 , Packing = @Packing
                 , Clean = @Clean
                 , Tearing = @Tearing
                 , Falldown = @Falldown
                 , Certification = @Certification
                 , Invoice = @Invoice
                 , IdentifyArea = @IdentifyArea
                 , AmountPallet = @AmountPallet
                 , Other = @Other
                 , [Action] = @Action
                 , FinishFlag = @FinishFlag
                 , UpdateFlag = @UpdateFlag
                 , DeleteFlag = @DeleteFlag
             WHERE G4YarnPkId = @G4YarnPkId
        END
        ELSE
        BEGIN
			INSERT INTO G4Yarn
		    (
                  EntryDate
                , ItemYarn
                , PalletNo
                , WeightQty
                , LotNo
                , TraceNo
                , KgPerCH
                , ConeCH
                , PalletType
                , Item400
                , Unit
                , RemainQty
                , ReceiveDate
                , ReceiveBy
                , UpdateDate
                , MovementDate
                , Verify
                , Packing
                , Clean
                , Tearing
                , Falldown
                , Certification
                , Invoice
                , IdentifyArea
                , AmountPallet
                , Other
                , [Action]
                , FinishFlag
                , UpdateFlag
                , DeleteFlag
			)
			VALUES
			(
                  @EntryDate
                , @ItemYarn
                , @PalletNo
                , @WeightQty
                , @LotNo
                , @TraceNo
                , @KgPerCH
                , @ConeCH
                , @PalletType
                , @Item400
                , @Unit
                , @RemainQty
                , @ReceiveDate
                , @ReceiveBy
                , @UpdateDate
                , @MovementDate
                , @Verify
                , @Packing
                , @Clean
                , @Tearing
                , @Falldown
                , @Certification
                , @Invoice
                , @IdentifyArea
                , @AmountPallet
                , @Other
                , @Action
                , @FinishFlag
                , @UpdateFlag
                , @DeleteFlag
			);

			SET @G4YarnPkId = @@IDENTITY;
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


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetG4Yarns]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4Yarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetG4Yarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetG4Yarns]
(
  @traceNo nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(TraceNo))) = UPPER(LTRIM(RTRIM(COALESCE(@traceNo, TraceNo))))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetG4IssueYarns]    Script Date: 11/27/2022 9:58:05 PM ******/
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
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.Item400
		 , Y.ReceiveDate
		 , Y.ReceiveBy
		 , Y.Verify
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
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[G4InsertUpdateIssueYarn]    Script Date: 5/31/2023 10:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	G4InsertUpdateIssueYarn
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
ALTER PROCEDURE [dbo].[G4InsertUpdateIssueYarn] (
  @RequestNo nvarchar(30)
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @WeightQty decimal(16, 3)
, @ConeCH decimal(16, 3)
, @PalletType nvarchar(30)
, @IssueDate datetime
, @IssueBy int
--, @G4IssueYarnPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @cnt int
DECLARE @G4YarnWeight decimal(16, 3)
DECLARE @G4RemainWeight decimal(16, 3)
DECLARE @RemainWeight decimal(16, 3)
DECLARE @NewPalletType nvarchar(30)
DECLARE @FinishFlag bit
    BEGIN TRY
		IF (
		       @PalletNo IS NULL 
		    OR @TraceNo IS NULL 
			OR @WeightQty IS NULL
			OR @ConeCH IS NULL
			--OR @PalletType IS NULL
		)
		BEGIN
			-- Update Error Status/Message
			SET @errNum = 101;
			SET @errMsg = 'Paramter(s) is null.';
			RETURN;
		END

        SELECT @cnt = COUNT(*) 
          FROM G4IssueYarn
         WHERE RequestNo = @RequestNo
           AND PalletNo = @PalletNo
           AND (DeleteFlag IS NULL OR DeleteFlag = 0)
        IF (@cnt = 0)
        BEGIN
            -- NO ISSUE YARN FOUND. SO INSERT NEW ONE
            INSERT INTO G4IssueYarn
            (
                  RequestNo
                , IssueDate
                , IssueBy
                , PalletNo
                , TraceNo
                , WeightQty
                , ConeCH
                , PalletType
                , DeleteFlag
            )
            VALUES
            (
                  @RequestNo
                , @IssueDate
                , @IssueBy
                , @PalletNo
                , @TraceNo
                , @WeightQty
                , @ConeCH
                , @PalletType
                , 0 -- DeleteFlag = 0 (Not delete)
            )
            -- NOW CALCULATE WEIGHT
            SELECT @G4YarnWeight = WeightQty
              FROM G4Yarn
             WHERE PalletNo = @PalletNo;
            
            IF (@G4YarnWeight = @WeightQty)
            BEGIN
                SET @RemainWeight = 0
                SET @FinishFlag = 1 -- SET FLAG THAT PALLET IS FINISH
                SET @NewPalletType = NULL
            END
            ELSE
            BEGIN
                SET @RemainWeight = @G4YarnWeight - @WeightQty
                SET @FinishFlag = NULL
                SET @NewPalletType = N'H'
            END
            -- UPDATE CALCULATE WEIGHT AND FLAGS
            UPDATE G4Yarn
               SET RemainQty = @RemainWeight
                 , FinishFlag = COALESCE(@FinishFlag, FinishFlag)
                 , PalletType = COALESCE(@NewPalletType, PalletType)
                 , UpdateDate = COALESCE(@IssueDate, UpdateDate)
             WHERE PalletNo = @PalletNo
        END
        ELSE
        BEGIN
            -- ISSUE YARN FOUND. SO CANCEL YARN FROM Request No.
            UPDATE G4IssueYarn
               SET DeleteFlag = 1 -- Set flag = 1 (Deleted)
                 , [Remark] = N'Cancel Pallet'
                 , EditDate = GETDATE()
                 , EditBy = COALESCE(@IssueBy, EditBy)
             WHERE RequestNo = @RequestNo
               AND PalletNo = @PalletNo

            -- NOW CALCULATE WEIGHT
            SELECT @G4YarnWeight = WeightQty
                 , @G4RemainWeight = RemainQty
              FROM G4Yarn
             WHERE PalletNo = @PalletNo;

            IF (@G4RemainWeight IS NULL) 
            BEGIN
                -- PREVENT CALCULATION ERROR WITH NULL VALUE
                SET @G4RemainWeight = 0
            END

            SET @RemainWeight = @G4RemainWeight + @WeightQty

            IF (@G4YarnWeight = @RemainWeight)
            BEGIN
                SET @NewPalletType = N'F'
            END
            ELSE
            BEGIN
                SET @NewPalletType = N'H'
            END
            -- UPDATE CALCULATE WEIGHT AND FLAGS
            UPDATE G4Yarn
               SET RemainQty = @RemainWeight
                 , FinishFlag = 0 -- SET FLAG THAT PALLET IS NOT FINISH
                 , PalletType = COALESCE(@NewPalletType, PalletType)
                 , UpdateDate = GETDATE()
             WHERE PalletNo = @PalletNo
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


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetG4ReceiveYarnInStock]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4ReceiveYarnInStock
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetG4ReceiveYarnInStock NULL, NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetG4ReceiveYarnInStock]
(
  @ItemYarn nvarchar(30) = NULL
, @ReceiveDate datetime = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, ReceiveDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @ReceiveDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, ReceiveDate)))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       --AND (FinishFlag IS NULL OR FinishFlag = 0)
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[SearchG4YarnStock]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchG4YarnStock
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchG4YarnStock NULL, NULL, NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchG4YarnStock]
(
  @ItemYarn nvarchar(30) = NULL
, @EntryDate datetime = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, EntryDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @EntryDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, EntryDate)))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[SearchG4IssueYarns]    Script Date: 11/27/2022 9:58:05 PM ******/
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
--
-- [== Example ==]
--
-- EXEC SearchG4IssueYarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchG4IssueYarns]
(
  @IssueDate datetime = NULL
, @ItemYarn nvarchar(30) = NULL
, @Item400 nvarchar(30) = NULL
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
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.Item400
		 , Y.ReceiveDate
		 , Y.ReceiveBy
		 , Y.Verify
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y
     WHERE DATEADD(dd, 0, DATEDIFF(dd, 0, I.IssueDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @IssueDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, I.IssueDate)))
       AND UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, Y.ItemYarn))))
       AND UPPER(LTRIM(RTRIM(Y.Item400))) = UPPER(LTRIM(RTRIM(COALESCE(@Item400, Y.Item400))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.WHReceiveFlag IS NULL OR I.WHReceiveFlag = 0)
       AND (I.IssueDate IS NOT NULL)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[G4IssueYarnReceive]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	G4IssueYarnReceive
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[G4IssueYarnReceive] (
  @G4IssueYarnPkId int
, @Receive bit = 1
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM G4IssueYarn WHERE G4IssueYarnPkId = @G4IssueYarnPkId)
        BEGIN
            UPDATE G4IssueYarn 
               SET WHReceiveFlag = @Receive
             WHERE G4IssueYarnPkId = @G4IssueYarnPkId
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


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveCordYarn]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveCordYarn
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveCordYarn] (
  @ItemYarn nvarchar(30)
, @PalletNo nvarchar(30)
, @WeightQty decimal(16, 3)
, @LotNo nvarchar(30)
, @TraceNo nvarchar(30)
, @ConeCH decimal(16, 3)
, @PalletType nvarchar(30)
, @Item400 nvarchar(30)
, @ReceiveDate datetime
, @ReceiveBy int
, @FinishFlag bit
, @DeleteFlag bit
, @CordYarnPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM CordYarn WHERE CordYarnPkId = @CordYarnPkId)
        BEGIN
            UPDATE CordYarn 
               SET ItemYarn = @ItemYarn
                 , PalletNo = @PalletNo
                 , WeightQty = @WeightQty
                 , LotNo = @LotNo
                 , TraceNo = @TraceNo
                 , ConeCH = @ConeCH
                 , PalletType = @PalletType
                 , Item400 = @Item400
                 , ReceiveDate = @ReceiveDate
                 , ReceiveBy = @ReceiveBy
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE CordYarnPkId = @CordYarnPkId
        END
        ELSE
        BEGIN
			INSERT INTO CordYarn
		    (
                  ItemYarn
                , PalletNo
                , WeightQty
                , LotNo
                , TraceNo
                , ConeCH
                , PalletType
                , Item400
                , ReceiveDate
                , ReceiveBy
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
                  @ItemYarn
                , @PalletNo
                , @WeightQty
                , @LotNo
                , @TraceNo
                , @ConeCH
                , @PalletType
                , @Item400
                , @ReceiveDate
                , @ReceiveBy
                , @FinishFlag
                , @DeleteFlag
			);

			SET @CordYarnPkId = @@IDENTITY;
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

