CREATE TABLE [Operator](
	OperatorId int IDENTITY(1,1) NOT NULL,
	OpertorCode nvarchar(30) NOT NULL,
    Title nvarchar(50) NULL,
    FirstName nvarchar(200) NOT NULL,
	LastName nvarchar(200) NULL,
    UserName nvarchar(200) NOT NULL,
    [Password] nvarchar(200) NOT NULL,
    Active int NOT NULL,
 CONSTRAINT PK_Operator PRIMARY KEY (OperatorId ASC)
)

CREATE INDEX IX_Operator_OpertorCode ON [Operator](OpertorCode ASC)
GO

CREATE INDEX IX_Operator_Title ON [Operator](Title ASC)
GO

CREATE INDEX IX_Operator_FirstName ON [Operator](FirstName ASC)
GO

CREATE INDEX IX_Operator_LastName ON [Operator](LastName ASC)
GO

CREATE UNIQUE INDEX IX_Operator_UserName ON [Operator](UserName ASC)
GO

ALTER TABLE [Operator] ADD  CONSTRAINT DF_Operator_Active  DEFAULT 1 FOR Active
GO
