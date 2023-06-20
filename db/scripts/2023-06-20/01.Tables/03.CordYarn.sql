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
