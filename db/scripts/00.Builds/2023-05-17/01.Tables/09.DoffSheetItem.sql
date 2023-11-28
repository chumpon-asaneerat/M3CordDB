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
