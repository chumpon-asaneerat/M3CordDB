DROP PROCEDURE SaveYarnLoadSheet
GO
DROP PROCEDURE SaveYarnLoadSheetDoff
GO
DROP PROCEDURE GetYarnLoadSheets
GO

DROP PROCEDURE SaveS1ConditionStd
GO
DROP PROCEDURE GetS1ConditionStds
GO

DROP PROCEDURE SaveCordProduct
GO
DROP PROCEDURE GetCordProducts
GO
DROP PROCEDURE DeleteCordProduct
GO

DROP PROCEDURE SaveCustomer
GO
DROP PROCEDURE GetCustomers
GO

EXEC DropTable N'YarnLoadSheetItem'
GO
EXEC DropTable N'YarnLoadSheetDoff'
GO
EXEC DropTable N'YarnLoadSheet'
GO

EXEC DropTable N'S1ConditionStd'
GO
EXEC DropTable N'CordProduct'
GO
EXEC DropTable N'Customer'
GO
