
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
