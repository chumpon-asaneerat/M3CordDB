CREATE TABLE FirstTwistMC(
	MCCode nvarchar(10) NOT NULL,
    ProcessName nvarchar(30) NOT NULL,
    DeckPerCore int NOT NULL DEFAULT 1,
    StartCore int NOT NULL DEFAULT 0,
    EndCore int NOT NULL DEFAULT 0,
CONSTRAINT PK_FirstTwistMC PRIMARY KEY (MCCode ASC)
)

CREATE INDEX IX_FirstTwistMC_ProcessName ON FirstTwistMC(ProcessName ASC)
GO
