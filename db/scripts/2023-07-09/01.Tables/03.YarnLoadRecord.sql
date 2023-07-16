/*
CREATE TABLE YarnLoadRecord(
	YarnLoadRecordId int IDENTITY(1,1) NOT NULL,
    CordProductPkId int NOT NULL, -- Reference to Planning
    RecordDate datetime NOT NULL,
    MCCode nvarchar(10) NOT NULL,
    SPNos nvarchar(50) NOT NULL,
    DoffNo int NOT NULL,
    PalletNo nvarchar(30) NOT NULL,
    TraceNo nvarchar(30) NOT NULL,
    TotalWeight decimal(16, 3) NOT NULL default 0,
    TotalCH decimal(16, 0) NOT NULL default 0,
 CONSTRAINT PK_YarnLoadRecord PRIMARY KEY (YarnLoadRecordId ASC)
)

GO
*/
