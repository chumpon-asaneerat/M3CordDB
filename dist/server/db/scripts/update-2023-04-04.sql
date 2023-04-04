/*********** Script Update Date: 2023-04-04  ***********/
CREATE TABLE MC1StTwist(
	MCId int IDENTITY(1,1) NOT NULL,
	MCCode nvarchar(30) NOT NULL,
	[Description] nvarchar(200) NULL,
	NoOfCore int NOT NULL,
	SheetPerCore int NOT NULL,
 CONSTRAINT PK_MC1StTwist PRIMARY KEY (MCId ASC)
)

GO
ALTER TABLE MC1StTwist ADD  CONSTRAINT DF_MC1StTwist_NoOfCore  DEFAULT (0) FOR NoOfCore
GO
ALTER TABLE MC1StTwist ADD  CONSTRAINT DF_MC1StTwist_SheetPerCore  DEFAULT (0) FOR SheetPerCore
GO

