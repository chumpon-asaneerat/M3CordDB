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
    FinishFlag bit NULL,
    UpdateDate datetime NULL,
    PalletType nvarchar(30) NULL,
    Item400Code nvarchar(30) NULL,
    Unit nvarchar(20) NULL,
    Packing bit NULL,
    Clean bit NULL,
    Tearing bit NULL,
    Falldown bit NULL,
    Certification bit NULL,
    Invoice bit NULL,
    IdentifyArea bit NULL,
    AmountPallet bit NULL,
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

ALTER TABLE G4Yarn ADD  CONSTRAINT DF_G4Yarn_Packing DEFAULT 0 FOR Packing
GO

ALTER TABLE G4Yarn ADD  CONSTRAINT DF_G4Yarn_Clean  DEFAULT 0 FOR Clean
GO

ALTER TABLE G4Yarn ADD  CONSTRAINT DF_G4Yarn_Tearing  DEFAULT 0 FOR Tearing
GO

ALTER TABLE G4Yarn ADD  CONSTRAINT DF_G4Yarn_Falldown  DEFAULT 0 FOR Falldown
GO

ALTER TABLE G4Yarn ADD  CONSTRAINT DF_G4Yarn_Certification  DEFAULT 0 FOR Certification
GO

ALTER TABLE G4Yarn ADD  CONSTRAINT DF_G4Yarn_Invoice  DEFAULT 0 FOR Invoice
GO

ALTER TABLE G4Yarn ADD  CONSTRAINT DF_G4Yarn_IdentifyArea  DEFAULT 0 FOR IdentifyArea
GO

ALTER TABLE G4Yarn ADD  CONSTRAINT DF_G4Yarn_AmountPallet  DEFAULT 0 FOR AmountPallet
GO

