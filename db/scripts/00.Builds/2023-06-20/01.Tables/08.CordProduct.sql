CREATE TABLE CordProduct(
	CordProductPkId int IDENTITY(1,1) NOT NULL,
    ProductLotNo nvarchar(30) NULL, -- เบอร์ชุดผลิตภัณฑ์
    CustomerCode nvarchar(30) NULL, -- รหัสลูกค้า
    CustomerName nvarchar(150) NULL, -- ชื่อลูกค้า
    ItemYarn nvarchar(30) NULL, -- รหัสเส้นด้าย 470-72-1781-JJ
    ItemCode nvarchar(30) NULL, -- รหัส ผลิตภัณฑ์
    Item400 nvarchar(30) NULL, -- รหัส ผลิตภัณฑ์ AS400
    Color nvarchar(100) NULL, -- สี/ลาย
    TargetQty decimal(16, 3) NULL, -- น้ำหนักที่ต้องการ
    ActualQty decimal(16, 3) NULL, -- น้ำหนักจริง
    ProcessingFlag bit NULL DEFAULT 0,
    FinishFlag bit NULL DEFAULT 0,
    DeleteFlag bit NULL DEFAULT 0,
CONSTRAINT PK_CordProduct PRIMARY KEY (CordProductPkId ASC)
)

CREATE INDEX IX_CordProduct_ProductLotNo ON CordProduct(ProductLotNo ASC)
GO

CREATE INDEX IX_CordProduct_ItemYarn ON CordProduct(ItemYarn ASC)
GO

CREATE INDEX IX_CordProduct_Item400 ON CordProduct(Item400 ASC)
GO
