CREATE TABLE G4IssueYarn(
	G4IssueYarnPkId int IDENTITY(1,1) NOT NULL,
    RequestNo nvarchar(30) NULL,
    IssueDate datetime NULL,
    IssueBy int NULL,
    TraceNo nvarchar(30) NULL, -- รหัสเส้นด้ายจาก supplier 2170330024
    PalletNo nvarchar(30) NULL, -- รหัส Pallet (แท่นวาง) S7G280004
    WeightQty decimal(16, 3) NULL,
    ConeCH decimal(16, 3) NULL, -- จำนวน Cheese
    PalletType nvarchar(30) NULL, -- ประเภท Pallet 'F' อาจจะย่อมาจาก Flat
    DeleteFlag bit NULL DEFAULT 0,
    [Remark] nvarchar(200) NULL,
 CONSTRAINT PK_G4IssueYarn PRIMARY KEY (G4IssueYarnPkId ASC)
)

CREATE INDEX IX_G4IssueYarn_RequestNo ON G4IssueYarn(RequestNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_IssueDate ON G4IssueYarn(IssueDate ASC)
GO

CREATE INDEX IX_G4IssueYarn_PalletNo ON G4IssueYarn(PalletNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_TraceNo ON G4IssueYarn(TraceNo ASC)
GO

CREATE INDEX IX_G4IssueYarn_IssueBy ON G4IssueYarn(IssueBy ASC)
GO

