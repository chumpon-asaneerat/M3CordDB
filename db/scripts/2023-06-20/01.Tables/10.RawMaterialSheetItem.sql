
CREATE TABLE RawMaterialSheetItem(
	RawMaterialSheetId int IDENTITY(1,1) NOT NULL,
    Seq int NOT NULL,
    ProductionDate datetime DEFAULT (GETDATE()),
    PalletNo nvarchar(30) NOT NULL,
    TraceNo nvarchar(30) NOT NULL,
    DoffNos nvarchar(50) NOT NULL,
    SPNos nvarchar(50) NOT NULL,
    DeleteFlag bit NULL DEFAULT 0,
    FinishFlag bit NULL DEFAULT 0,
CONSTRAINT PK_RawMaterialSheetItem PRIMARY KEY (RawMaterialSheetId ASC, Seq ASC)
)

GO
