ALTER TABLE DIPCondition ADD UpdateBy nvarchar(100) NULL;
GO

ALTER TABLE DIPCondition ADD UpdateDate datetime NULL;
GO

ALTER TABLE DIPCondition ADD UpdateBy2 nvarchar(100) NULL;
GO

ALTER TABLE DIPCondition ADD UpdateDate2 datetime NULL;
GO

ALTER TABLE DIPCondition ADD CheckedBy nvarchar(100) NULL;
GO

ALTER TABLE DIPCondition ADD CheckedDate datetime NULL;
GO

ALTER TABLE DIPCondition ADD ApproveBy nvarchar(100) NULL;
GO

ALTER TABLE DIPCondition ADD ApproveDate datetime NULL;
GO

ALTER TABLE DIPCondition ADD ShiftLeader nvarchar(100) NULL;
GO

ALTER TABLE DIPCondition ADD ProductionManager nvarchar(100) NULL;
GO
