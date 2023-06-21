-- DELETE DATA
DELETE FROM G4Yarn
DELETE FROM G4IssueYarn
GO

EXEC DropTable N'ItemCode'
GO

EXEC DropTable N'G4Yarn'
GO

EXEC DropTable N'CordYarn'
GO

