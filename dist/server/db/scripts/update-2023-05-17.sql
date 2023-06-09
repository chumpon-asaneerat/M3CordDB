/*********** Script Update Date: 2023-05-17  ***********/
/****** UserRole ******/ 
CREATE TABLE UserRole (
	RoleId int NOT NULL,
	RoleName nvarchar(100) NOT NULL,
	CONSTRAINT PK_UserRole PRIMARY KEY (RoleId ASC)
)
GO

CREATE UNIQUE INDEX IX_UserRole_RoleName ON UserRole(RoleName ASC)
GO


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
CREATE TABLE ItemCode(
	ItemPkId int IDENTITY(1,1) NOT NULL,
    ItemCode nvarchar(30) NOT NULL,
    ItemWeaving nvarchar(30) NOT NULL,
    ItemYarn nvarchar(30) NOT NULL,
    ItemGroup nvarchar(30) NULL,
    ItemPrepare nvarchar(30) NULL,
    ItemWidth decimal(16, 3) NULL,
    YarnCode nvarchar(5) NULL,
    WidthCode nvarchar(30) NULL,
    CoreWeight decimal(16, 3) NULL,
    FullWeight decimal(16, 3) NULL,
    WidthWeaving decimal(16, 3) NULL,
    WeaveType nvarchar(20) NULL,
 CONSTRAINT PK_ItemCode PRIMARY KEY (ItemPkId ASC)
)

CREATE INDEX IX_ItemCode_ItemCode ON ItemCode(ItemCode ASC)
GO

CREATE INDEX IX_ItemCode_ItemWeaving ON ItemCode(ItemWeaving ASC)
GO

CREATE INDEX IX_ItemCode_ItemYarn ON ItemCode(ItemYarn ASC)
GO

CREATE INDEX IX_ItemCode_ItemGroup ON ItemCode(ItemGroup ASC)
GO

CREATE INDEX IX_ItemCode_YarnCode ON ItemCode(YarnCode ASC)
GO


/*********** Script Update Date: 2023-05-17  ***********/
CREATE TABLE G4Yarn(
	G4YarnPkId int IDENTITY(1,1) NOT NULL,
    EntryDate datetime NULL,
    TraceNo nvarchar(30) NULL, -- รหัสเส้นด้ายจาก supplier 2170330024
    PalletNo nvarchar(30) NULL, -- รหัส Pallet (แท่นวาง) S7G280004
    LotNo nvarchar(30) NULL, -- เลข Lot No.
    ItemYarn nvarchar(30) NULL, -- รหัสเส้นด้าย 470-72-1781-JJ
    YarnType nvarchar(30) NULL, -- ประเภทการนำไปทอเป็นผ้า Warp, Warp
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

CREATE INDEX IX_G4Yarn_YarnType ON G4Yarn(YarnType ASC)
GO

CREATE INDEX IX_G4Yarn_Item400 ON G4Yarn(Item400 ASC)
GO


/*********** Script Update Date: 2023-05-17  ***********/
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



/*********** Script Update Date: 2023-05-17  ***********/
CREATE TABLE CordYarn(
	CordYarnPkId int IDENTITY(1,1) NOT NULL,
    ReceiveDate datetime NULL,
    ReceiveBy int NULL,
    PalletNo nvarchar(30) NULL, -- รหัส Pallet (แท่นวาง) S7G280004
    TraceNo nvarchar(30) NULL, -- รหัสเส้นด้ายจาก G4 2170330024
    LotNo nvarchar(30) NULL, -- รหัส Lot G4
    YarnType nvarchar(30) NULL, -- ประเภทการนำไปทอเป็นผ้า Warp, Warp
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

CREATE INDEX IX_CordYarn_YarnType ON CordYarn(YarnType ASC)
GO

CREATE INDEX IX_CordYarn_Item400 ON CordYarn(Item400 ASC)
GO


/*********** Script Update Date: 2023-05-17  ***********/
CREATE TABLE CordProduct(
	CordProductPkId int IDENTITY(1,1) NOT NULL,
    ProductLotNo nvarchar(30) NULL, -- เบอร์ชุดผลิตภัณฑ์
    CustomerCode nvarchar(30) NULL, -- รหัสลูกค้า
    CustomerName nvarchar(150) NULL, -- ชื่อลูกค้า
    ItemYarn nvarchar(30) NULL, -- รหัสเส้นด้าย 470-72-1781-JJ
    YarnType nvarchar(30) NULL, -- ประเภทการนำไปทอเป็นผ้า Warp, Warp
    Item400 nvarchar(30) NULL, -- รหัส ผลิตภัณฑ์
    TargetQty decimal(16, 3) NULL, -- น้ำหนักที่ต้องการ
    ActualQty decimal(16, 3) NULL, -- น้ำหนักจริง
    FinishFlag bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_CordProduct PRIMARY KEY (CordProductPkId ASC)
)

CREATE INDEX IX_CordProduct_ProductLotNo ON CordProduct(ProductLotNo ASC)
GO

CREATE INDEX IX_CordProduct_ItemYarn ON CordProduct(ItemYarn ASC)
GO

CREATE INDEX IX_CordProduct_YarnType ON CordProduct(YarnType ASC)
GO

CREATE INDEX IX_CordProduct_Item400 ON CordProduct(Item400 ASC)
GO


/*********** Script Update Date: 2023-05-17  ***********/
CREATE TABLE DoffSheet(
	DoffSheetId int IDENTITY(1,1) NOT NULL,
    CordProductPkId int,
    PaperTubeColor nvarchar(100) NULL, -- สีหลอด
    ProcessFlow nvarchar(100) NULL, -- กระบวนการผลิต i.e. S-4-1
    FinishFlag bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_DoffSheet PRIMARY KEY (DoffSheetId ASC)
)

CREATE INDEX IX_DoffSheet_CordProductPkId ON DoffSheet(CordProductPkId ASC)
GO


/*********** Script Update Date: 2023-05-17  ***********/
CREATE TABLE DoffSheetItem(
	DoffSheetId int NOT NULL,
    SeqNo int NOT NULL,
    ProductionDate datetime NULL,
    PalletNo nvarchar(30) NULL, -- รหัส Pallet (แท่นวาง) S7G280004
    TraceNo nvarchar(30) NULL, -- รหัสเส้นด้ายจาก G4 2170330024
    LotNo nvarchar(30) NULL, -- รหัส Lot G4
    YarnType nvarchar(30) NULL, -- ประเภทการนำไปทอเป็นผ้า Warp, Warp
    DoffType int NOT NULL DEFAULT 0, -- 0: TEST, 1: DOFF
    DoffNo int NOT NULL DEFAULT 0,
    ShiftId int NULL,
    ChiefId int NULL,
    IsKeiba bit NULL DEFAULT 0,
    IsTraverse bit NULL DEFAULT 0,
    IsCrossing bit NULL DEFAULT 0,
    IsScrapeTube bit NULL DEFAULT 0,
    IsForm bit NULL DEFAULT 0,
    IsStain bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_DoffSheetItem PRIMARY KEY (DoffSheetId ASC, SeqNo ASC)
)

CREATE INDEX IX_DoffSheetItem_TraceNo ON DoffSheetItem(TraceNo ASC)
GO

CREATE INDEX IX_DoffSheetItem_PalletNo ON DoffSheetItem(PalletNo ASC)
GO

CREATE INDEX IX_DoffSheetItem_LotNo ON DoffSheetItem(LotNo ASC)
GO

CREATE INDEX IX_DoffSheetItem_YarnType ON DoffSheetItem(YarnType ASC)
GO


/*********** Script Update Date: 2023-05-17  ***********/
CREATE TABLE DoffSheetItemSP(
	DoffSheetId int NOT NULL,
    SeqNo int NOT NULL,
    SPNo int NOT NULL,
    --Core1 bit NULL DEFAULT 1,
    --Core2 bit NULL DEFAULT 0,
    FinishFlag bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_DoffSheetItemSP PRIMARY KEY (DoffSheetId ASC, SeqNo ASC, SPNo ASC)
)

GO


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
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
		 , A.YarnType
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


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
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
  @ItemCode nvarchar(30)
, @ItemWeaving nvarchar(30)
, @ItemYarn nvarchar(30)
, @ItemGroup nvarchar(30)
, @ItemPrepare nvarchar(30)
, @YarnCode nvarchar(5)
, @WidthCode nvarchar(30) = NULL
, @ItemWidth decimal(16, 3) = 0.0
, @CoreWeight decimal(16, 3) = 0.0
, @FullWeight decimal(16, 3) = 0.0
, @WidthWeaving decimal(16, 3) = 0.0
, @WeaveType nvarchar(20) = NULL
, @ItemPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ItemCode WHERE ItemPkId = @ItemPkId)
        BEGIN
            UPDATE ItemCode 
               SET ItemCode = @ItemCode
                 , ItemWeaving = @ItemWeaving
                 , ItemYarn = @ItemYarn
                 , ItemGroup = @ItemGroup
                 , ItemPrepare = @ItemPrepare
                 , YarnCode = @YarnCode
                 , WidthCode = @WidthCode
                 , ItemWidth = @ItemWidth
                 , CoreWeight = @CoreWeight
                 , FullWeight = @FullWeight
                 , WidthWeaving = @WidthWeaving
                 , WeaveType = @WeaveType
             WHERE ItemPkId = @ItemPkId
        END
        ELSE
        BEGIN
			INSERT INTO ItemCode
			(
                   ItemCode
                 , ItemWeaving
                 , ItemYarn
                 , ItemGroup
                 , ItemPrepare
                 , YarnCode
                 , WidthCode
                 , ItemWidth
                 , CoreWeight
                 , FullWeight
                 , WidthWeaving
                 , WeaveType
			)
			VALUES
			(
                   @ItemCode
                 , @ItemWeaving
                 , @ItemYarn
                 , @ItemGroup
                 , @ItemPrepare
                 , @YarnCode
                 , @WidthCode
                 , @ItemWidth
                 , @CoreWeight
                 , @FullWeight
                 , @WidthWeaving
                 , @WeaveType
			);

			SET @ItemPkId = @@IDENTITY;
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


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
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
, @YarnType nvarchar(30)
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
                 , YarnType = @YarnType
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
                , YarnType
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
                , @YarnType
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


/*********** Script Update Date: 2023-05-17  ***********/
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
END

GO


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
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
		 , Y.YarnType
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


/*********** Script Update Date: 2023-05-17  ***********/
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
, @YarnType nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND UPPER(LTRIM(RTRIM(YarnType))) = UPPER(LTRIM(RTRIM(COALESCE(@YarnType, YarnType))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, EntryDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @EntryDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, EntryDate)))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
END

GO


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
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
CREATE PROCEDURE [dbo].[SaveCordYarn] (
  @ItemYarn nvarchar(30)
, @PalletNo nvarchar(30)
, @YarnType nvarchar(30)
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
                 , YarnType = @YarnType
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
                , YarnType
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
                , @YarnType
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


/*********** Script Update Date: 2023-05-17  ***********/
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
, @YarnType nvarchar(30)
, @Item400 nvarchar(30)
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
                 , YarnType = @YarnType
                 , Item400 = @Item400
                 , TargetQty = @TargetQty
                 , ActualQty = @ActualQty
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE @CordProductPkId = @CordProductPkId
        END
        ELSE
        BEGIN
			INSERT INTO CordProduct
		    (
                  ProductLotNo
                , CustomerCode
                , CustomerName
                , ItemYarn
                , YarnType
                , Item400
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
                , @YarnType
                , @Item400
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


/*********** Script Update Date: 2023-05-17  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDoffSheet]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDoffSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDoffSheet] (
  @CordProductPkId int
, @PaperTubeColor nvarchar(100)
, @ProcessFlow nvarchar(100)
, @FinishFlag bit
, @DeleteFlag bit
, @DoffSheetId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DoffSheet WHERE DoffSheetId = @DoffSheetId)
        BEGIN
            UPDATE DoffSheet 
               SET CordProductPkId = @CordProductPkId
                 , PaperTubeColor = @PaperTubeColor
                 , ProcessFlow = @ProcessFlow
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE DoffSheetId = @DoffSheetId
        END
        ELSE
        BEGIN
			INSERT INTO DoffSheet
		    (
                  CordProductPkId
                , PaperTubeColor
                , ProcessFlow
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
                  @CordProductPkId
                , @PaperTubeColor
                , @ProcessFlow
                , @FinishFlag
                , @DeleteFlag
			);

			SET @DoffSheetId = @@IDENTITY;
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


/*********** Script Update Date: 2023-05-17  ***********/
--SaveDoffSheetItem


/*********** Script Update Date: 2023-05-17  ***********/
--SaveDoffSheetItemSP


/*********** Script Update Date: 2023-05-17  ***********/
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
         , I.[Remark]
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.YarnType
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


/*********** Script Update Date: 2023-05-17  ***********/
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


/*********** Script Update Date: 2023-05-17  ***********/
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

