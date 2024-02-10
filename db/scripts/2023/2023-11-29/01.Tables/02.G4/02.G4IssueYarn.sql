ALTER TABLE G4IssueYarn ADD IsAgeing bit NULL;
GO

ALTER TABLE G4IssueYarn ADD AgeingDate datetime NULL;
GO

ALTER TABLE G4IssueYarn ADD AgeingBy nvarchar(100) NULL;
GO
