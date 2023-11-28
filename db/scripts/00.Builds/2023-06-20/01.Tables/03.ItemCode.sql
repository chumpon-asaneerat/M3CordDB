CREATE TABLE ItemCode(
    Item400 nvarchar(30) NOT NULL, -- AS400
    ItemYarn nvarchar(30) NOT NULL, -- TRACE
    ItemGroup nvarchar(30) NULL, -- LOT GROUP
 CONSTRAINT PK_ItemCode PRIMARY KEY (Item400 ASC)
)

CREATE INDEX IX_ItemCode_ItemYarn ON ItemCode(ItemYarn ASC)
GO

CREATE INDEX IX_ItemCode_ItemGroup ON ItemCode(ItemGroup ASC)
GO
