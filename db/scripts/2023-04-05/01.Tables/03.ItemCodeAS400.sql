CREATE TABLE ItemCodeAS400(
	ItemId int IDENTITY(1,1) NOT NULL,
    Item400Code nvarchar(30) NULL,
    ItemYarn nvarchar(30) NULL,
    ItemType nvarchar(10) NULL,
    ItemOldCode nvarchar(30) NULL,
 CONSTRAINT PK_ItemCodeAS400 PRIMARY KEY (ItemId ASC)
)

CREATE INDEX IX_ItemCodeAS400_Item400Code ON ItemCodeAS400(Item400Code ASC)
GO

CREATE INDEX IX_ItemCodeAS400_ItemYarn ON ItemCodeAS400(ItemYarn ASC)
GO

CREATE INDEX IX_ItemCodeAS400_ItemType ON ItemCodeAS400(ItemType ASC)
GO

CREATE INDEX IX_ItemCodeAS40_ItemOldCode ON ItemCodeAS400(ItemOldCode ASC)
GO
