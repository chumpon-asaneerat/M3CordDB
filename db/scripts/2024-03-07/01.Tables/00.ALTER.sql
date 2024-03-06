-- DIPCondition
ALTER TABLE DIPCondition ALTER COLUMN S7CreelSettingKnotConditionSet nvarchar(50);
GO

ALTER TABLE DIPCondition ALTER COLUMN S7CreelSettingKnotConditionSet2 nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S7CreelSettingKnotConditionActual nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S7CreelSettingKnotConditionActual2 nvarchar(50)
GO

-- DIPConditionStd
ALTER TABLE DIPConditionStd ALTER COLUMN S7CreelSettingKnotConditionSet nvarchar(50);
GO

ALTER TABLE DIPConditionStd ALTER COLUMN S7CreelSettingKnotConditionSet2 nvarchar(50)
GO
