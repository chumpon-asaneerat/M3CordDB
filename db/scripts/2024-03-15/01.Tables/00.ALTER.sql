ALTER TABLE S8WetPickup ALTER COLUMN AMV1 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMV2 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMV3 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMV4 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMAmp1 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMAmp2 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMAmp3 nvarchar(50)
GO

ALTER TABLE S8WetPickup ALTER COLUMN AMAmp4 nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S8DippingNo2NipFrontActual nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S8DippingNo2NipFrontActual2 nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S8DippingNo2NipBackActual nvarchar(50)
GO

ALTER TABLE DIPCondition ALTER COLUMN S8DippingNo2NipBackActual2 nvarchar(50)
GO

ALTER TABLE S9AppearanceCheckSheetItem ALTER COLUMN CheckWeight nvarchar(50)
GO

ALTER TABLE S9AppearanceCheckSheetItem ADD [Remark] nvarchar(100)
GO

UPDATE S9AppearanceCheckSheetItem SET CheckWeight = NULL;
GO
