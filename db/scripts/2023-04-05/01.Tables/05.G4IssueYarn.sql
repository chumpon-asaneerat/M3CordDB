CREATE TABLE G4IssueYarn(
	PkId int IDENTITY(1,1) NOT NULL,
    IssueDate datetime NULL,
    PalletNo nvarchar(30) NULL,
    TraceNo nvarchar(30) NULL,
    [Weight] decimal(16, 3) NULL,
    CH decimal(16, 0) NULL,
    IssueBy nvarchar(30) NULL,
    IssueTo nvarchar(30) NULL,
    RequestNo nvarchar(30) NULL,
    PalletType nvarchar(10) NULL,
    DeleteFlag nvarchar(1) NULL,
    EditBy nvarchar(30) NULL,
    EditDate datetime NULL,
    [Remark] nvarchar(200) NULL,
 CONSTRAINT PK_G4IssueYarn PRIMARY KEY (PkId ASC)
)

CREATE INDEX IX_G4IssueYarn_IssueDate ON G4IssueYarn(IssueDate ASC)
GO

CREATE INDEX IX_G4IssueYarn_PalletNo ON G4IssueYarn(PalletNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_TraceNo ON G4IssueYarn(TraceNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_IssueBy ON G4IssueYarn(IssueBy ASC)
GO

CREATE INDEX IX_G4IssueYarn_IssueTo ON G4IssueYarn(IssueTo ASC)
GO

CREATE INDEX IX_G4IssueYarn_RequestNo ON G4IssueYarn(RequestNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_EditBy ON G4IssueYarn(EditBy ASC)
GO

