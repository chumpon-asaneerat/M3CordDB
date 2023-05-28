CREATE TABLE G4Yarn(
	PkId int IDENTITY(1,1) NOT NULL,
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
CONSTRAINT PK_G4Yarn PRIMARY KEY (PkId ASC)
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
