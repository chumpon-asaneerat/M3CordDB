CREATE TABLE DoffSheet(
	DoffSheetId int IDENTITY(1,1) NOT NULL,
    CordProductPkId int,
    PaperTubeColor nvarchar(100) NULL, -- สีหลอด
    ProcessFlow nvarchar(100) NULL, -- กระบวนการผลิต i.e. S-4-1
    FinishFlag bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_DoffSheet PRIMARY KEY (DoffSheetId ASC)
)

CREATE INDEX IX_DoffSheet_CordProductPkId ON DoffSheet(CordProductPkId ASC)
GO
