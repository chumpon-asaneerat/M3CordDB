DROP PROCEDURE SaveYarnLoadRecord
GO

DROP PROCEDURE SaveRawMaterialSheetItem
GO

DROP PROCEDURE NewRawMaterialSheet
GO

DROP PROCEDURE GetRawMaterialSheetItems
GO

DROP PROCEDURE GetRawMaterialSheet
GO

DROP VIEW RawMaterialSheetView
GO

EXEC DropTable N'RawMaterialSheetItem'
GO

EXEC DropTable N'RawMaterialSheet'
GO

EXEC DropTable N'YarnLoadRecord'
GO

