EXEC DROPTABLE 'DIPTimeTable'
GO

EXEC DROPTABLE 'S8BeforeCondition'
GO

DROP PROCEDURE SaveDIPTimeTableStdCFRow
GO

-- fixed invalid mc code data
UPDATE DIPPCCard SET MCCode = 'S-7-1' WHERE MCCode = 'S-8-1' OR MCCode = 'S-9-1'
GO
UPDATE DIPPCCard SET MCCode = 'S-7-2' WHERE MCCode = 'S-8-2' OR MCCode = 'S-9-2'
GO

UPDATE S9CleanCheckSheet SET MCCode = 'S-9-1' WHERE MCCode = 'S-7-1'
GO
UPDATE S9CleanCheckSheet SET MCCode = 'S-9-2' WHERE MCCode = 'S-7-2'
GO

UPDATE S9AppearanceCheckSheet SET MCCode = 'S-9-1' WHERE MCCode = 'S-7-1'
GO
UPDATE S9AppearanceCheckSheet SET MCCode = 'S-9-2' WHERE MCCode = 'S-7-2'
GO
