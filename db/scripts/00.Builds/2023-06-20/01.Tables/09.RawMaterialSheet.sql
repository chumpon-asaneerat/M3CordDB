
CREATE TABLE RawMaterialSheet(
	RawMaterialSheetId int IDENTITY(1,1) NOT NULL,
    MCCode nvarchar(10) NOT NULL,
    CordProductPkId int NOT NULL,
    DeleteFlag bit NULL DEFAULT 0,
    FinishFlag bit NULL DEFAULT 0,
CONSTRAINT PK_RawMaterialSheet PRIMARY KEY (RawMaterialSheetId ASC)
)

GO
