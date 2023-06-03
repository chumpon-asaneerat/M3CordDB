CREATE TABLE DoffSheetItemSP(
	DoffSheetId int NOT NULL,
    SeqNo int NOT NULL,
    SPNo int NOT NULL,
    --Core1 bit NULL DEFAULT 1,
    --Core2 bit NULL DEFAULT 0,
    FinishFlag bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_DoffSheetItemSP PRIMARY KEY (DoffSheetId ASC, SeqNo ASC, SPNo ASC)
)

GO
