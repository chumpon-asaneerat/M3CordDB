ALTER TABLE S5Condition DROP COLUMN LotOrTraceNo;
GO

ALTER TABLE S5Condition ADD FromSource int NULL;
GO

ALTER TABLE S5Condition ADD CustomerName nvarchar(100) NULL;
GO

ALTER TABLE S5Condition ADD ProductName1 nvarchar(100) NULL;
GO

ALTER TABLE S5Condition ADD ProductName2 nvarchar(100) NULL;
GO

ALTER TABLE S5Condition ADD IssueDate datetime NULL;
GO

ALTER TABLE S5Condition ADD IssueBy nvarchar(100) NULL;
GO
