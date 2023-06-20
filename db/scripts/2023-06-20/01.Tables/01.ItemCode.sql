CREATE TABLE ItemCode(
    ItemCode400 nvarchar(30) NOT NULL, -- AS400
    ItemYarn nvarchar(30) NOT NULL, -- TRACE
    ItemGroup nvarchar(30) NULL,
 CONSTRAINT PK_ItemCode PRIMARY KEY (ItemCode400 ASC)
)

CREATE INDEX IX_ItemCode_ItemYarn ON ItemCode(ItemYarn ASC)
GO

CREATE INDEX IX_ItemCode_ItemGroup ON ItemCode(ItemGroup ASC)
GO
