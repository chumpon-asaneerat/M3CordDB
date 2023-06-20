CREATE TABLE ItemCodeMap(
    ItemCode400 nvarchar(30) NOT NULL,
    ItemYarn nvarchar(30) NOT NULL,
    ItemCodeOld nvarchar(30) NULL,
 CONSTRAINT PK_ItemCodeMap PRIMARY KEY (ItemCode400 ASC)
)

CREATE INDEX IX_ItemCodeMap_ItemYarn ON ItemCodeMap(ItemYarn ASC)
GO
