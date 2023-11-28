CREATE TABLE ItemCode(
	PkId int IDENTITY(1,1) NOT NULL,
    ItemCode nvarchar(30) NOT NULL,
    ItemWeaving nvarchar(30) NOT NULL,
    ItemYarn nvarchar(30) NOT NULL,
    ItemGroup nvarchar(30) NULL,
    ItemPrepare nvarchar(30) NULL,
    ItemWidth decimal(16, 3) NULL,
    YarnCode nvarchar(5) NULL,
    WidthCode nvarchar(30) NULL,
    CoreWeight decimal(16, 3) NULL,
    FullWeight decimal(16, 3) NULL,
    WidthWeaving decimal(16, 3) NULL,
    WeaveType nvarchar(20) NULL,
 CONSTRAINT PK_ItemCode PRIMARY KEY (PkId ASC)
)

CREATE INDEX IX_ItemCode_ItemCode ON ItemCode(ItemCode ASC)
GO

CREATE INDEX IX_ItemCode_ItemWeaving ON ItemCode(ItemWeaving ASC)
GO

CREATE INDEX IX_ItemCode_ItemYarn ON ItemCode(ItemYarn ASC)
GO

CREATE INDEX IX_ItemCode_ItemGroup ON ItemCode(ItemGroup ASC)
GO

CREATE INDEX IX_ItemCode_YarnCode ON ItemCode(YarnCode ASC)
GO
