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
