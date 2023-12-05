ALTER TABLE S5Condition DROP COLUMN LotOrTraceNo;
GO

ALTER TABLE S5Condition ADD FromSource int NULL;
GO
