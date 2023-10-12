/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DropAllViews]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- CHECK IF EXIST THEN DROP FIRST
IF (OBJECT_ID('DropAllViews', 'P') IS NOT NULL) DROP PROCEDURE DropAllViews 
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: DropAllViews.
-- Description:	Drop all Views
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropAllViews
-- =============================================
CREATE PROCEDURE [dbo].[DropAllViews]
AS
BEGIN
CREATE TABLE #VIEW_NAMES
(
    ViewName nvarchar(100)
);

DECLARE @sql nvarchar(MAX);
DECLARE @name nvarchar(100);
DECLARE @dropViewCursor CURSOR;
	/*========= DROP VIEWS =========*/
    INSERT INTO #VIEW_NAMES
        (ViewName)
    SELECT name
    FROM sys.views;

    SET @dropViewCursor = CURSOR LOCAL FAST_FORWARD 
	    FOR SELECT ViewName
    FROM #VIEW_NAMES;

    OPEN @dropViewCursor;
    FETCH NEXT FROM @dropViewCursor INTO @name;
    WHILE @@FETCH_STATUS = 0
	BEGIN
        -- drop table.
        SET @sql = 'DROP VIEW ' + @name;
        EXECUTE SP_EXECUTESQL @sql;
        
        FETCH NEXT FROM @dropViewCursor INTO @name;
    END
    CLOSE @dropViewCursor;
    DEALLOCATE @dropViewCursor;

    DROP TABLE #VIEW_NAMES;
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DropAllFNs]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- CHECK IF EXIST THEN DROP FIRST
IF (OBJECT_ID('DropAllFNs', 'P') IS NOT NULL) DROP PROCEDURE DropAllFNs 
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: DropAllFNs.
-- Description:	Drop all Functions
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropAllFNs
-- =============================================
CREATE PROCEDURE [dbo].[DropAllFNs]
AS
BEGIN
CREATE TABLE #FN_NAMES
(
    FuncName nvarchar(100)
);

DECLARE @sql nvarchar(MAX);
DECLARE @name nvarchar(100);
DECLARE @dropFuncCursor CURSOR;
	/*========= DROP FUNCTIONS =========*/
    INSERT INTO #FN_NAMES
        (FuncName)
    SELECT O.name
      FROM sys.sql_modules M
     INNER JOIN sys.objects O 
	    ON M.object_id = O.object_id
     WHERE O.type IN ('IF','TF','FN')

    SET @dropFuncCursor = CURSOR LOCAL FAST_FORWARD 
	    FOR SELECT FuncName
    FROM #FN_NAMES;

    OPEN @dropFuncCursor;
    FETCH NEXT FROM @dropFuncCursor INTO @name;
    WHILE @@FETCH_STATUS = 0
	BEGIN
        -- drop table.
        SET @sql = 'DROP FUNCTION ' + @name;
        EXECUTE SP_EXECUTESQL @sql;
        
        FETCH NEXT FROM @dropFuncCursor INTO @name;
    END
    CLOSE @dropFuncCursor;
    DEALLOCATE @dropFuncCursor;

    DROP TABLE #FN_NAMES;
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DropAllSPs]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- CHECK IF EXIST THEN DROP FIRST
IF (OBJECT_ID('DropAllSPs', 'P') IS NOT NULL) DROP PROCEDURE DropAllSPs 
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: Drop All SPs.
-- Description:	Drop all Stored Procedures
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropAllSPs
-- =============================================
CREATE PROCEDURE DropAllSPs
AS
BEGIN
CREATE TABLE #SP_NAMES
(
    ProcName nvarchar(100)
);

DECLARE @sql nvarchar(MAX);
DECLARE @name nvarchar(100);
DECLARE @dropSPCursor CURSOR;
	/*========= DROP PROCEDURES =========*/
    INSERT INTO #SP_NAMES
        (ProcName)
    SELECT name
      FROM sys.objects 
	 WHERE type = 'P' 
	   AND NAME NOT IN (
             'DropAll'
           , 'DropAllSPs'
           , 'DropAllFNs'
           , 'DropAllViews'
           , 'DropTable'
           , 'DropAllTables') -- ignore
	 ORDER BY modify_date DESC

    SET @dropSPCursor = CURSOR LOCAL FAST_FORWARD 
	    FOR SELECT ProcName
    FROM #SP_NAMES;

    OPEN @dropSPCursor;
    FETCH NEXT FROM @dropSPCursor INTO @name;
    WHILE @@FETCH_STATUS = 0
	BEGIN
        -- drop procedures.
        SET @sql = 'DROP PROCEDURE ' + @name;
        EXECUTE SP_EXECUTESQL @sql;
        
        FETCH NEXT FROM @dropSPCursor INTO @name;
    END
    CLOSE @dropSPCursor;
    DEALLOCATE @dropSPCursor;

    DROP TABLE #SP_NAMES;
END

GO


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

-- CHECK IF EXIST THEN DROP FIRST
IF (OBJECT_ID('DropTable', 'P') IS NOT NULL) DROP PROCEDURE DropTable 
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
/****** Object:  StoredProcedure [dbo].[DropAllTables]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- CHECK IF EXIST THEN DROP FIRST
IF (OBJECT_ID('DropAllTables', 'P') IS NOT NULL) DROP PROCEDURE DropAllTables 
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: DropAll.
-- Description:	Drop all Tables and it's related indexes, constrains, keys
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropAllTables
-- =============================================
CREATE PROCEDURE [dbo].[DropAllTables]
AS
BEGIN
CREATE TABLE #TABLE_NAMES
(
    TableName nvarchar(100)
);

DECLARE @sql nvarchar(MAX);
DECLARE @name nvarchar(100);
DECLARE @dropTableCursor CURSOR;
	/*========= DROP TABLES =========*/
    INSERT INTO #TABLE_NAMES
        (TableName)
    SELECT TABLE_NAME
      FROM INFORMATION_SCHEMA.TABLES
     WHERE TABLE_TYPE = N'BASE TABLE';

       SET @dropTableCursor = CURSOR LOCAL FAST_FORWARD FOR SELECT TableName FROM #TABLE_NAMES;

    OPEN @dropTableCursor;
    FETCH NEXT FROM @dropTableCursor INTO @name;
    WHILE @@FETCH_STATUS = 0
	BEGIN
        -- drop table (by sp).
		EXEC DropTable @name;

		-- drop table (by sql sql script).
        --SET @sql = 'DROP TABLE ' + @name;
        --EXECUTE SP_EXECUTESQL @sql;
        
        FETCH NEXT FROM @dropTableCursor INTO @name;
    END
    CLOSE @dropTableCursor;
    DEALLOCATE @dropTableCursor;

    DROP TABLE #TABLE_NAMES;
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
EXEC DropAllSPs
GO

EXEC DropAllFNs
GO

EXEC DropAllViews
GO

DROP TABLE UserInfo
GO

DROP TABLE UserRole
GO

EXEC DropAllTables
GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** UserRole ******/ 
CREATE TABLE UserRole (
	RoleId int NOT NULL,
	RoleName nvarchar(100) NOT NULL,
	CONSTRAINT PK_UserRole PRIMARY KEY (RoleId ASC)
)
GO

CREATE UNIQUE INDEX IX_UserRole_RoleName ON UserRole(RoleName ASC)
GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** UserInfo ******/ 
CREATE TABLE UserInfo(
	UserId int IDENTITY(1,1) NOT NULL,
	RoleId int NOT NULL,
	FullName nvarchar(200) NOT NULL,
	UserName nvarchar(100) NOT NULL,
	[Password] nvarchar(100) NOT NULL,
	Active int NOT NULL DEFAULT 1,
	LastUpdated datetime NOT NULL DEFAULT getdate(),
	CONSTRAINT PK_UserInfo PRIMARY KEY (UserId ASC)
)
GO

CREATE INDEX IX_UserInfo_UserId ON UserInfo(UserId ASC)
GO

CREATE UNIQUE INDEX IX_UserInfo_FullName ON UserInfo(FullName ASC)
GO

CREATE UNIQUE INDEX IX_UserInfo_UserName ON UserInfo(UserName ASC)
GO

ALTER TABLE UserInfo WITH CHECK
	ADD CONSTRAINT FK_UserInfo_UserRole FOREIGN KEY (RoleId) REFERENCES UserRole(RoleId)
GO

ALTER TABLE UserInfo CHECK CONSTRAINT FK_UserInfo_UserRole
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
    ExpiredDate datetime NULL,
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
CREATE TABLE G4IssueYarn(
	G4IssueYarnPkId int IDENTITY(1,1) NOT NULL,
    RequestNo nvarchar(30) NULL,
    IssueDate datetime NULL,
    IssueBy int NULL,
    TraceNo nvarchar(30) NULL, -- รหัสเส้นด้ายจาก supplier 2170330024
    PalletNo nvarchar(30) NULL, -- รหัส Pallet (แท่นวาง) S7G280004
    WeightQty decimal(16, 3) NULL,
    ConeCH decimal(16, 3) NULL, -- จำนวน Cheese
    PalletType nvarchar(30) NULL, -- ประเภท Pallet 'F' or 'H'
    EditDate datetime NULL,
    EditBy int NULL,
    DeleteFlag bit NULL DEFAULT 0,
    FinishFlag bit NULL DEFAULT 0,
    WHReceiveFlag bit NULL DEFAULT 0,
    WHReceiveDate datetime NULL,
    [Remark] nvarchar(200) NULL,
 CONSTRAINT PK_G4IssueYarn PRIMARY KEY (G4IssueYarnPkId ASC)
)

CREATE INDEX IX_G4IssueYarn_RequestNo ON G4IssueYarn(RequestNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_IssueDate ON G4IssueYarn(IssueDate ASC)
GO

CREATE INDEX IX_G4IssueYarn_PalletNo ON G4IssueYarn(PalletNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_TraceNo ON G4IssueYarn(TraceNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_IssueBy ON G4IssueYarn(IssueBy ASC)
GO



/*********** Script Update Date: 2023-06-20  ***********/
CREATE TABLE FirstTwistMC(
	MCCode nvarchar(10) NOT NULL,
    ProcessName nvarchar(30) NOT NULL,
    DeckPerCore int NOT NULL DEFAULT 1,
    StartCore int NOT NULL DEFAULT 0,
    EndCore int NOT NULL DEFAULT 0,
CONSTRAINT PK_FirstTwistMC PRIMARY KEY (MCCode ASC)
)

CREATE INDEX IX_FirstTwistMC_ProcessName ON FirstTwistMC(ProcessName ASC)
GO


/*********** Script Update Date: 2023-06-20  ***********/
CREATE TABLE CordProduct(
	CordProductPkId int IDENTITY(1,1) NOT NULL,
    ProductLotNo nvarchar(30) NULL, -- เบอร์ชุดผลิตภัณฑ์
    CustomerCode nvarchar(30) NULL, -- รหัสลูกค้า
    CustomerName nvarchar(150) NULL, -- ชื่อลูกค้า
    ItemYarn nvarchar(30) NULL, -- รหัสเส้นด้าย 470-72-1781-JJ
    ItemCode nvarchar(30) NULL, -- รหัส ผลิตภัณฑ์
    Item400 nvarchar(30) NULL, -- รหัส ผลิตภัณฑ์ AS400
    Color nvarchar(100) NULL, -- สี/ลาย
    TargetQty decimal(16, 3) NULL, -- น้ำหนักที่ต้องการ
    ActualQty decimal(16, 3) NULL, -- น้ำหนักจริง
    ProcessingFlag bit NULL DEFAULT 0,
    FinishFlag bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_CordProduct PRIMARY KEY (CordProductPkId ASC)
)

CREATE INDEX IX_CordProduct_ProductLotNo ON CordProduct(ProductLotNo ASC)
GO

CREATE INDEX IX_CordProduct_ItemYarn ON CordProduct(ItemYarn ASC)
GO

CREATE INDEX IX_CordProduct_Item400 ON CordProduct(Item400 ASC)
GO


/*********** Script Update Date: 2023-06-20  ***********/

CREATE TABLE RawMaterialSheet(
	RawMaterialSheetId int IDENTITY(1,1) NOT NULL,
    MCCode nvarchar(10) NOT NULL,
    CordProductPkId int NOT NULL,
    DeleteFlag bit NULL DEFAULT 0,
    FinishFlag bit NULL DEFAULT 0,
CONSTRAINT PK_RawMaterialSheet PRIMARY KEY (RawMaterialSheetId ASC)
)

GO


/*********** Script Update Date: 2023-06-20  ***********/

CREATE TABLE RawMaterialSheetItem(
	RawMaterialSheetId int NOT NULL,
    Seq int NOT NULL,
    ProductionDate datetime NULL DEFAULT (GETDATE()),
    ItemYarn nvarchar(30) NULL,
    PalletNo nvarchar(30) NULL,
    TraceNo nvarchar(30) NULL,
    InputCH int NULL DEFAULT 0,
    DoffNos nvarchar(50) NULL,
    SPNos nvarchar(50) NULL,
    DeleteFlag bit NULL DEFAULT 0,
    FinishFlag bit NULL DEFAULT 0,
CONSTRAINT PK_RawMaterialSheetItem PRIMARY KEY (RawMaterialSheetId ASC, Seq ASC)
)

GO


/*********** Script Update Date: 2023-06-20  ***********/
-- THIS SHOULD BE CLASS AND SAVE TO LOCAL FOLDER
-- MAY NOT WORK BECAUSE THE INPUT CONTROL MAY HAS SOME CUSTOM LOGIC
/*
CREATE TABLE DocumentLayout(
	LayoutId int IDENTITY(1,1) NOT NULL,
    LayoutCode nvarchar(20) NOT NULL,
    LayoutName nvarchar(100) NOT NULL,
CONSTRAINT PK_DocumentLayout PRIMARY KEY (LayoutId ASC)
)

GO

CREATE TABLE DocumentLayoutItem(
	LayoutItemId int IDENTITY(1,1) NOT NULL,
    LayoutCode nvarchar(20) NOT NULL,
    RowNo int NOT NULL DEFAULT 0,
    ColNo int NOT NULL DEFAULT 0,
    RowSpan int NOT NULL DEFAULT 1,
    ColSpan int NOT NULL DEFAULT 1,
CONSTRAINT PK_DocumentLayoutItem PRIMARY KEY (LayoutItemId ASC)
)

GO
*/

/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  View [dbo].[UserInfoView]    Script Date: 11/27/2022 10:10:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW UserInfoView
AS
	SELECT A.UserId
	     , A.FullName
	     , A.UserName
	     , A.[Password]
		 , A.Active
         , A.LastUpdated
		 , A.RoleId
		 , B.RoleName
	  FROM UserInfo A
	     , UserRole B
	 WHERE A.RoleId = B.RoleId

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  View [dbo].[UserInfoView]    Script Date: 11/27/2022 10:10:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW G4YarnView
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
         , A.ExpiredDate
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
/****** Object:  View [dbo].[RawMaterialSheetView]    Script Date: 11/27/2022 10:10:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW RawMaterialSheetView
AS
	SELECT A.RawMaterialSheetId
	     , A.MCCode
	     , A.CordProductPkId
         , B.ProductLotNo
         , B.CustomerCode
         , B.CustomerName
         , B.ItemYarn
         , B.ItemCode
         , B.Item400
         , B.Color
         , B.TargetQty
         , B.ActualQty
	     , A.DeleteFlag
		 , A.FinishFlag
	  FROM RawMaterialSheet A LEFT OUTER JOIN CordProduct B ON A.CordProductPkId = B.CordProductPkId

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  UserDefinedFunction [dbo].[IsNullOrEmpty]    Script Date: 11/26/2022 2:02:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: IsNullOrEmpty.
-- Description:	IsNullOrEmpty is function to check is string is in null or empty
--              returns 1 if string is null or empty string otherwise return 0.
-- [== History ==]
-- <2022-08-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--SELECT dbo.IsNullOrEmpty(null) AS RET;     -- NULL Returns 1
--SELECT dbo.IsNullOrEmpty('') AS RET;       -- Empty Returns 1
--SELECT dbo.IsNullOrEmpty(' ') AS RET;      -- Whitespace Returns 1
--SELECT dbo.IsNullOrEmpty('Test') AS RET;   -- Has data Returns 0
-- =============================================
CREATE FUNCTION [dbo].[IsNullOrEmpty](@str nvarchar)
RETURNS bit
AS
BEGIN
DECLARE @diff int;
DECLARE @result bit;
    IF @str IS NULL OR RTRIM(LTRIM(@str)) = N''
		SET @result = 1
	ELSE SET @result = 0

    RETURN @result;
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 11/27/2022 10:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetUser
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetUser N'user1', N'123'  -- Get active user that has UserName = 'user1' and password = '123'
-- =============================================
CREATE PROCEDURE [dbo].[GetUser]
(
  @UserName nvarchar(100)
, @Password nvarchar(100)
)
AS
BEGIN
	SELECT *
	  FROM UserInfoView
	 WHERE UPPER(LTRIM(RTRIM(UserName))) = UPPER(LTRIM(RTRIM(@UserName)))
       AND UPPER(LTRIM(RTRIM([Password]))) = UPPER(LTRIM(RTRIM(@Password)))
       AND Active = 1
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 11/27/2022 10:10:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetUsers
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetUsers                                  -- Gets all active users
-- EXEC GetUsers N'user'                          -- Gets active all users that full name contains 'user'
-- EXEC GetUsers NULL, N'sup'                     -- Gets all active users that user name contains 'sup'
-- EXEC GetUsers NULL, NULL, N'u'                 -- Gets all active users that role name contains 'u'
-- EXEC GetUsers NULL, NULL, N'u', 10             -- Gets all active users that role name contains 'u' and RoleId = 10
-- EXEC GetUsers NULL, NULL, NULL, NULL, NULL     -- Gets all users (active/inactive)
-- =============================================
CREATE PROCEDURE [dbo].[GetUsers]
(
  @FullName nvarchar(200) = NULL
, @UserName nvarchar(100) = NULL
, @RoleName nvarchar(100) = NULL
, @RoleId int = NULL
, @Active int = 1
)
AS
BEGIN
	SELECT *
	  FROM UserInfoView
	 WHERE UPPER(LTRIM(RTRIM(FullName))) LIKE '%' + UPPER(LTRIM(RTRIM(COALESCE(@FullName, FullName)))) + '%'
       AND UPPER(LTRIM(RTRIM(UserName))) LIKE '%' + UPPER(LTRIM(RTRIM(COALESCE(@UserName, UserName)))) + '%'
       AND UPPER(LTRIM(RTRIM(RoleName))) LIKE '%' + UPPER(LTRIM(RTRIM(COALESCE(@RoleName, RoleName)))) + '%'
       AND RoleId = COALESCE(@RoleId, RoleId)
       AND Active = COALESCE(@Active, Active)
     ORDER BY FullName, UserName
END

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
CREATE PROCEDURE [dbo].[GetItemCodes]
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
CREATE PROCEDURE [dbo].[SaveItemCode] (
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
/****** Object:  StoredProcedure [dbo].[GetItemYarns]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetItemYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetItemYarns NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetItemYarns]
(
  @unused nvarchar(30) = NULL
)
AS
BEGIN
	SELECT DISTINCT ItemYarn
	  FROM ItemCode
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
CREATE PROCEDURE [dbo].[GetG4Yarns]
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
       AND (ReceiveDate IS NULL) -- Only no receive date.
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
CREATE PROCEDURE [dbo].[SaveG4Yarn] (
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
, @ExpiredDate datetime
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
                 , ExpiredDate = @ExpiredDate
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
                , ExpiredDate
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
                , @ExpiredDate
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
CREATE PROCEDURE [dbo].[G4InsertUpdateIssueYarn] (
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
CREATE PROCEDURE [dbo].[GetG4ReceiveYarnInStock]
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
CREATE PROCEDURE [dbo].[SearchG4YarnStock]
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
       AND (ReceiveDate IS NOT NULL)
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
CREATE PROCEDURE [dbo].[GetG4IssueYarns]
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
         , Y.ExpiredDate
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
CREATE PROCEDURE [dbo].[SearchG4IssueYarns]
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
         , I.WHReceiveDate
         , I.[Remark]
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
CREATE PROCEDURE [dbo].[G4IssueYarnReceive] (
  @G4IssueYarnPkId int
, @Receive bit = 1
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM G4IssueYarn WHERE G4IssueYarnPkId = @G4IssueYarnPkId)
        BEGIN
            IF (@Receive = 1)
            BEGIN
                UPDATE G4IssueYarn 
                   SET WHReceiveFlag = @Receive
                     , WHReceiveDate = GETDATE()
                 WHERE G4IssueYarnPkId = @G4IssueYarnPkId
            END
            ELSE
            BEGIN
                UPDATE G4IssueYarn 
                   SET WHReceiveFlag = @Receive
                     , WHReceiveDate = NULL
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


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveCordProduct]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveCordProduct
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveCordProduct] (
  @ProductLotNo nvarchar(30)
, @CustomerCode nvarchar(30)
, @CustomerName nvarchar(150)
, @ItemYarn nvarchar(30)
, @ItemCode nvarchar(30)
, @Item400 nvarchar(30)
, @Color nvarchar(100)
, @TargetQty decimal(16, 3)
, @ActualQty decimal(16, 3)
, @FinishFlag bit
, @DeleteFlag bit
, @CordProductPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM CordProduct WHERE CordProductPkId = @CordProductPkId)
        BEGIN
            UPDATE CordProduct 
               SET ProductLotNo = @ProductLotNo
                 , CustomerCode = @CustomerCode
                 , CustomerName = @CustomerName
                 , ItemYarn = @ItemYarn
                 , ItemCode = @ItemCode
                 , Item400 = @Item400
                 , Color = @Color
                 , TargetQty = @TargetQty
                 , ActualQty = @ActualQty
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE CordProductPkId = @CordProductPkId
        END
        ELSE
        BEGIN
			INSERT INTO CordProduct
		    (
                  ProductLotNo
                , CustomerCode
                , CustomerName
                , ItemYarn
                , ItemCode
                , Item400
                , Color
                , TargetQty
                , ActualQty
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
                  @ProductLotNo
                , @CustomerCode
                , @CustomerName
                , @ItemYarn
                , @ItemCode
                , @Item400
                , @Color
                , @TargetQty
                , @ActualQty
                , @FinishFlag
                , @DeleteFlag
			);

			SET @CordProductPkId = @@IDENTITY;
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
/****** Object:  StoredProcedure [dbo].[GetCordProducts]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCordProducts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetCordProducts]
(
  @CustomerName nvarchar(150) = NULL
, @ProductLotNo nvarchar(30) = NULL
, @ItemYarn nvarchar(30) = NULL
)
AS
BEGIN
    SELECT I.CordProductPkId -- FROM CordProduct
         , I.ProductLotNo
         , I.CustomerCode
         , I.CustomerName
         , I.ItemYarn
         , I.ItemCode
         , I.Item400
         , I.Color
         , I.TargetQty
         , I.ActualQty
         , I.ProcessingFlag
         , I.FinishFlag
         , I.DeleteFlag
      FROM CordProduct I
     WHERE UPPER(LTRIM(RTRIM(I.CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, I.CustomerName))))
       AND UPPER(LTRIM(RTRIM(I.ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, I.ProductLotNo))))
       AND UPPER(LTRIM(RTRIM(I.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, I.ItemYarn))))
       AND (I.ProcessingFlag IS NULL OR I.ProcessingFlag = 0)
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
     ORDER BY I.ItemYarn, I.ProductLotNo;

END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DeleteCordProduct]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	DeleteCordProduct
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[DeleteCordProduct] (
  @CordProductPkId int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM CordProduct WHERE CordProductPkId = @CordProductPkId)
        BEGIN
            UPDATE CordProduct 
               SET DeleteFlag = 1
             WHERE CordProductPkId = @CordProductPkId
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
/****** Object:  StoredProcedure [dbo].[GetFirstTwistMCs]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetFirstTwistMCs
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetFirstTwistMCs NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetFirstTwistMCs]
AS
BEGIN
    SELECT MCCode
         , ProcessName
         , DeckPerCore
         , StartCore
         , EndCore
      FROM FirstTwistMC
     ORDER BY ProcessName, MCCode;
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetRawMaterialSheet]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSheet
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetRawMaterialSheet NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetRawMaterialSheet]
(
  @MCCode nvarchar(10)
)
AS
BEGIN
	SELECT RawMaterialSheetId
	     , MCCode
	     , CordProductPkId
         , ProductLotNo
         , CustomerCode
         , CustomerName
         , ItemYarn
         , ItemCode
         , Item400
         , Color
         , TargetQty
         , ActualQty
	     , DeleteFlag
		 , FinishFlag
      FROM RawMaterialSheetView
     WHERE UPPER(LTRIM(RTRIM(MCCode))) = UPPER(LTRIM(RTRIM(@MCCode)))
	   AND (DeleteFlag IS NULL OR DeleteFlag = 0)
	   AND (FinishFlag IS NULL OR FinishFlag = 0)
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[NewRawMaterialSheet]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	NewRawMaterialSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[NewRawMaterialSheet] (
  @MCCode nvarchar(10)
, @CordProductPkId int = NULL
, @RawMaterialSheetId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM RawMaterialSheet WHERE CordProductPkId = @CordProductPkId)
        BEGIN
			INSERT INTO RawMaterialSheet
		    (
                  MCCode
                , CordProductPkId
			)
			VALUES
			(
                  @MCCode
                , @CordProductPkId
			);

			SET @RawMaterialSheetId = @@IDENTITY;

            UPDATE CordProduct
               SET ProcessingFlag = 1
             WHERE CordProductPkId = @CordProductPkId;
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
/****** Object:  StoredProcedure [dbo].[SaveRawMaterialSheetItem]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveRawMaterialSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveRawMaterialSheetItem] (
  @RawMaterialSheetId int = NULL out
, @ProductionDate datetime
, @ItemYarn nvarchar(30)
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @InputCH int
, @DoffNos nvarchar(50)
, @SPNos nvarchar(50)
, @Seq as int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @iMax int;
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM RawMaterialSheetItem 
                        WHERE RawMaterialSheetId = @RawMaterialSheetId 
                          AND Seq = @Seq)
        BEGIN
            SELECT @iMax = MAX(Seq) 
              FROM RawMaterialSheetItem 
             WHERE RawMaterialSheetId = @RawMaterialSheetId;

            IF (@iMax IS NULL OR @iMax < 1) 
            BEGIN
                SET @iMax = 0;
            END
            SET @Seq = @iMax + 1;

			INSERT INTO RawMaterialSheetItem
		    (
                  RawMaterialSheetId
                , Seq
                , ProductionDate
                , ItemYarn
                , PalletNo
                , TraceNo
                , InputCH
                , DoffNos
                , SPNos
			)
			VALUES
			(
                  @RawMaterialSheetId
                , @Seq
                , @ProductionDate
                , @ItemYarn
                , @PalletNo
                , @TraceNo
                , @InputCH
                , @DoffNos
                , @SPNos
			);
        END
        ELSE
        BEGIN
            UPDATE RawMaterialSheetItem
               SET ProductionDate = @ProductionDate
                 , ItemYarn = @ItemYarn
                 , PalletNo = @PalletNo
                 , TraceNo = @TraceNo
                 , InputCH = @InputCH
                 , DoffNos = @DoffNos
                 , SPNos = @SPNos
             WHERE RawMaterialSheetId = @RawMaterialSheetId
               AND Seq = @Seq
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
/****** Object:  StoredProcedure [dbo].[GetRawMaterialSheetItems]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetRawMaterialSheetItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetRawMaterialSheetItems]
(
  @RawMaterialSheetId int
)
AS
BEGIN
	SELECT RawMaterialSheetId
	     , Seq
         , ProductionDate
         , ItemYarn
         , PalletNo
         , TraceNo
         , InputCH
         , DoffNos
         , SPNos
      FROM RawMaterialSheetItem
     WHERE RawMaterialSheetId = @RawMaterialSheetId

END

GO


/*********** Script Update Date: 2023-06-20  ***********/
-- CREATE DEFAULT USER ROLES
INSERT INTO UserRole(RoleId, RoleName) VALUES(1, N'Admistrator');
INSERT INTO UserRole(RoleId, RoleName) VALUES(10, N'Supervisor');
INSERT INTO UserRole(RoleId, RoleName) VALUES(20, N'User');
GO

-- CREATE DEFAULT USERS
INSERT INTO UserInfo(RoleId, FullName, UserName, [Password]) VALUES(1, N'Administrator', N'admin', N'admin');

INSERT INTO UserInfo(RoleId, FullName, UserName, [Password]) VALUES(10, N'Supervisor 1', N'sup1', N'123');

INSERT INTO UserInfo(RoleId, FullName, UserName, [Password]) VALUES(20, N'User 1', N'user1', N'123');
INSERT INTO UserInfo(RoleId, FullName, UserName, [Password]) VALUES(20, N'User 2', N'user2', N'123');
INSERT INTO UserInfo(RoleId, FullName, UserName, [Password]) VALUES(20, N'User 3', N'user3', N'123');
GO


/*********** Script Update Date: 2023-06-20  ***********/
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1000192', N'1000-192-702C-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1050520N', N'1050-36-520N-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1100707C', N'1100-240-707-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'24070435', N'1100-240-704 035-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'24070455', N'1100-240-704 055-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'240705', N'1100-240-705M-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'240707', N'1100-240-707M-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'360704', N'1100-360-704M-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'14001781', N'1400-204-1781-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'14001782', N'1400-204-1782-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1500288', N'1500-288-702C-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1500707C', N'1500-288-707C-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'707C01', N'1500-288-707C-01-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'707C43', N'1500-288-707C-43-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1620707C', N'1620-288-707C-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1670300T', N'1670-288-300T-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1670707C', N'1670-288-707C-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1670705', N'1670-360-705M-OKA', N'OKA');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'1800707C', N'1800-288-707C-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'2220ABT', N'2220ABT-THCT', N'THC');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'3220ABT', N'3220ABT-THCT', N'THC');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'HM10A', N'HM10A-TTS', N'TTS');
INSERT INTO ItemCode (Item400, ItemYarn, ItemGroup) VALUES(N'HM15A', N'HM15A-TTS', N'TTS');
GO



/*********** Script Update Date: 2023-06-20  ***********/
INSERT INTO FirstTwistMC(MCCode, ProcessName, DeckPerCore, StartCore, EndCore) VALUES(N'S-1-1', N'S-1', 2, 1, 100);
INSERT INTO FirstTwistMC(MCCode, ProcessName, DeckPerCore, StartCore, EndCore) VALUES(N'S-1-2', N'S-1', 2, 1, 100);
INSERT INTO FirstTwistMC(MCCode, ProcessName, DeckPerCore, StartCore, EndCore) VALUES(N'S-1-3', N'S-1', 2, 1, 100);
INSERT INTO FirstTwistMC(MCCode, ProcessName, DeckPerCore, StartCore, EndCore) VALUES(N'S-4-1', N'S-4', 1, 1, 72);
INSERT INTO FirstTwistMC(MCCode, ProcessName, DeckPerCore, StartCore, EndCore) VALUES(N'S-4-2', N'S-4', 1, 73, 112);
GO

