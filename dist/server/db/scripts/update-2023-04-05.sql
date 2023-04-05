/*********** Script Update Date: 2023-04-05  ***********/
CREATE TABLE MC1StTwist(
	MCId int IDENTITY(1,1) NOT NULL,
	MCCode nvarchar(30) NOT NULL,
	[Description] nvarchar(200) NULL,
	NoOfCore int NOT NULL,
	SheetPerCore int NOT NULL,
 CONSTRAINT PK_MC1StTwist PRIMARY KEY ( MCId ASC)
)

GO
ALTER TABLE MC1StTwist ADD  CONSTRAINT DF_MC1StTwist_NoOfCore  DEFAULT (0) FOR NoOfCore
GO
ALTER TABLE MC1StTwist ADD  CONSTRAINT DF_MC1StTwist_SheetPerCore  DEFAULT (0) FOR SheetPerCore
GO


/*********** Script Update Date: 2023-04-05  ***********/
CREATE TABLE [Operator](
	OperatorId int IDENTITY(1,1) NOT NULL,
	OpertorCode nvarchar(30) NOT NULL,
    Title nvarchar(50) NULL,
    FirstName nvarchar(200) NOT NULL,
	LastName nvarchar(200) NULL,
    UserName nvarchar(200) NOT NULL,
    [Password] nvarchar(200) NOT NULL,
    Active int NOT NULL,
 CONSTRAINT PK_Operator PRIMARY KEY (OperatorId ASC)
)

CREATE INDEX IX_Operator_OpertorCode ON [Operator](OpertorCode ASC)
GO

CREATE INDEX IX_Operator_Title ON [Operator](Title ASC)
GO

CREATE INDEX IX_Operator_FirstName ON [Operator](FirstName ASC)
GO

CREATE INDEX IX_Operator_LastName ON [Operator](LastName ASC)
GO

CREATE UNIQUE INDEX IX_Operator_UserName ON [Operator](UserName ASC)
GO

ALTER TABLE [Operator] ADD  CONSTRAINT DF_Operator_Active  DEFAULT 1 FOR Active
GO


/*********** Script Update Date: 2023-04-05  ***********/
CREATE TABLE ItemCode(
	ItemId int IDENTITY(1,1) NOT NULL,
    ItemCode nvarchar(30) NULL,
    ItemWeaving nvarchar(30) NULL,
    ItemYarn nvarchar(30) NULL,
    ItemWidth decimal(16, 3) NULL,
    ItemProc1 nvarchar(20) NULL,
    ItemProc2 nvarchar(20) NULL,
    ItemProc3 nvarchar(20) NULL,
    ItemProc4 nvarchar(20) NULL,
    ItemProc5 nvarchar(20) NULL,
    ItemProc6 nvarchar(20) NULL,
    ItemPrepare nvarchar(30) NULL,
    CoreWeight decimal(16, 3) NULL,
    FullWeight decimal(16, 3) NULL,
    ItemGroup nvarchar(30) NULL,
    YarnCode nvarchar(10) NULL,
    WidthCode nvarchar(5) NULL,
    WidthWeaving decimal(16, 3) NULL,
    LABForm nvarchar(20) NULL,
    WeaveType nvarchar(20) NULL,
 CONSTRAINT PK_ItemCode PRIMARY KEY (ItemId ASC)
)

CREATE INDEX IX_ItemCode_ItemCode ON ItemCode(ItemCode ASC)
GO

CREATE INDEX IX_ItemCode_ItemWeaving ON ItemCode(ItemWeaving ASC)
GO

CREATE INDEX IX_ItemCode_ItemYarn ON ItemCode(ItemYarn ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc1 ON ItemCode(ItemProc1 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc2 ON ItemCode(ItemProc2 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc3 ON ItemCode(ItemProc3 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc4 ON ItemCode(ItemProc4 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc5 ON ItemCode(ItemProc5 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc6 ON ItemCode(ItemProc6 ASC)
GO

CREATE INDEX IX_ItemCode_ItemGroup ON ItemCode(ItemGroup ASC)
GO

CREATE INDEX IX_ItemCode_YarnCode ON ItemCode(YarnCode ASC)
GO

CREATE INDEX IX_ItemCode_LABForm ON ItemCode(LABForm ASC)
GO

CREATE INDEX IX_ItemCode_WeaveType ON ItemCode(WeaveType ASC)
GO


/*********** Script Update Date: 2023-04-05  ***********/
CREATE TABLE ItemCodeAS400(
	ItemId int IDENTITY(1,1) NOT NULL,
    Item400Code nvarchar(30) NULL,
    ItemYarn nvarchar(30) NULL,
    ItemType nvarchar(10) NULL,
    ItemOldCode nvarchar(30) NULL,
 CONSTRAINT PK_ItemCodeAS400 PRIMARY KEY (ItemId ASC)
)

CREATE INDEX IX_ItemCodeAS400_Item400Code ON ItemCodeAS400(Item400Code ASC)
GO

CREATE INDEX IX_ItemCodeAS400_ItemYarn ON ItemCodeAS400(ItemYarn ASC)
GO

CREATE INDEX IX_ItemCodeAS400_ItemType ON ItemCodeAS400(ItemType ASC)
GO

CREATE INDEX IX_ItemCodeAS40_ItemOldCode ON ItemCodeAS400(ItemOldCode ASC)
GO


/*********** Script Update Date: 2023-04-05  ***********/
CREATE TABLE G4Yarn(
	PkId int IDENTITY(1,1) NOT NULL,
    EntryDate datetime NULL,
    ItemYarn nvarchar(30) NULL,
    PalletNo nvarchar(30) NULL,
    YarnType nvarchar(20) NULL,
    WeightQty decimal(16, 3) NULL,
    Conech decimal(16, 3) NULL,
    Verify nvarchar(5) NULL,
    RemainQty decimal(16, 3) NULL,
    ReceiveDate datetime NULL,
    ReceiveBy nvarchar(30) NULL,
    FinishFlag nvarchar(1) NULL,
    UpdateDate datetime NULL,
    PalletType nvarchar(30) NULL,
    Item400Code nvarchar(30) NULL,
    UM nvarchar(20) NULL,
    Packing nvarchar(1) NULL,
    Clean nvarchar(1) NULL,
    Tearing nvarchar(1) NULL,
    Falldown nvarchar(1) NULL,
    Certification nvarchar(1) NULL,
    Invoice nvarchar(1) NULL,
    IdentifyArea nvarchar(1) NULL,
    AmountPallet nvarchar(1) NULL,
    Other nvarchar(1000) NULL,
    [Action] nvarchar(1000) NULL,
    MovementDate datetime NULL,
    LotNo nvarchar(30) NULL,
    TraceNo nvarchar(30) NULL,
    KGPERCH decimal(16, 3) NULL,
    DeleteFlag nvarchar(1) NULL,
 CONSTRAINT PK_G4Yarn PRIMARY KEY (PkId ASC)
)

CREATE INDEX IX_G4Yarn_ItemYarn ON G4Yarn(ItemYarn ASC)
GO

CREATE INDEX IX_G4Yarn_PalletNo ON G4Yarn(PalletNo ASC)
GO

CREATE INDEX IX_G4Yarn_YarnType ON G4Yarn(YarnType ASC)
GO

CREATE INDEX IX_G4Yarn_ReceiveBy ON G4Yarn(ReceiveBy ASC)
GO

CREATE INDEX IX_G4Yarn_PalletType ON G4Yarn(PalletType ASC)
GO

CREATE INDEX IX_G4Yarn_Item400Code ON G4Yarn(Item400Code ASC)
GO

CREATE INDEX IX_G4Yarn_LotNo ON G4Yarn(LotNo ASC)
GO

CREATE INDEX IX_G4Yarn_TraceNo ON G4Yarn(TraceNo ASC)
GO


/*********** Script Update Date: 2023-04-05  ***********/
CREATE TABLE G4IssueYarn(
	PkId int IDENTITY(1,1) NOT NULL,
    IssueDate datetime NULL,
    PalletNo nvarchar(30) NULL,
    TraceNo nvarchar(30) NULL,
    [Weight] decimal(16, 3) NULL,
    CH decimal(16, 0) NULL,
    IssueBy nvarchar(30) NULL,
    IssueTo nvarchar(30) NULL,
    RequestNo nvarchar(30) NULL,
    PalletType nvarchar(10) NULL,
    DeleteFlag nvarchar(1) NULL,
    EditBy nvarchar(30) NULL,
    EditDate datetime NULL,
    [Remark] nvarchar(200) NULL,
 CONSTRAINT PK_G4IssueYarn PRIMARY KEY (PkId ASC)
)

CREATE INDEX IX_G4IssueYarn_IssueDate ON G4IssueYarn(IssueDate ASC)
GO

CREATE INDEX IX_G4IssueYarn_PalletNo ON G4IssueYarn(PalletNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_TraceNo ON G4IssueYarn(TraceNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_IssueBy ON G4IssueYarn(IssueBy ASC)
GO

CREATE INDEX IX_G4IssueYarn_IssueTo ON G4IssueYarn(IssueTo ASC)
GO

CREATE INDEX IX_G4IssueYarn_RequestNo ON G4IssueYarn(RequestNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_EditBy ON G4IssueYarn(EditBy ASC)
GO


