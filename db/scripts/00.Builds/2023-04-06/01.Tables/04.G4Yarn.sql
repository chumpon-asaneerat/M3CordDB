CREATE TABLE G4Yarn(
	PkId int IDENTITY(1,1) NOT NULL,
    EntryDate datetime NULL,
    ItemYarn nvarchar(30) NULL,
    PalletNo nvarchar(30) NULL,
    YarnType nvarchar(30) NULL,
    WeightQty decimal(16, 3) NULL,
    LotNo nvarchar(30) NULL,
    TraceNo nvarchar(30) NULL,
    KgPerCH decimal(16, 3) NULL,
    ConeCH decimal(16, 3) NULL,
    PalletType nvarchar(30) NULL,
    Item400 nvarchar(30) NULL,
    Unit nvarchar(20) NULL,
    RemainQty decimal(16, 3) NULL,
    ReceiveDate datetime NULL,
    ReceiveBy nvarchar(30) NULL,
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
    DeleteFlag bit NULL DEFAULT 0,
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

CREATE INDEX IX_G4Yarn_Item400 ON G4Yarn(Item400 ASC)
GO

CREATE INDEX IX_G4Yarn_LotNo ON G4Yarn(LotNo ASC)
GO

CREATE INDEX IX_G4Yarn_TraceNo ON G4Yarn(TraceNo ASC)
GO

