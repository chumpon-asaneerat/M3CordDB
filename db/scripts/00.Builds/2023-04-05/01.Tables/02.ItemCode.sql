CREATE TABLE ItemCode(
	ItemId int IDENTITY(1,1) NOT NULL,
    ItemCode nvarchar(30) NULL,
    ItemWeaving nvarchar(30) NULL,
    ItemYarn nvarchar(30) NULL,
    ItemWidth decimal(16, 3) NULL,
    ItemProc1 nvarchar(20) NULL,
    ItemProc2 nvarchar(20) NULL,
    ItemProc3 nvarchar(20) NULL,
    ItemProc4 nvarchar(20) NULL,
    ItemProc5 nvarchar(20) NULL,
    ItemProc6 nvarchar(20) NULL,
    ItemPrepare nvarchar(30) NULL,
    CoreWeight decimal(16, 3) NULL,
    FullWeight decimal(16, 3) NULL,
    ItemGroup nvarchar(30) NULL,
    YarnCode nvarchar(10) NULL,
    WidthCode nvarchar(5) NULL,
    WidthWeaving decimal(16, 3) NULL,
    LABForm nvarchar(20) NULL,
    WeaveType nvarchar(20) NULL,
 CONSTRAINT PK_ItemCode PRIMARY KEY (ItemId ASC)
)

CREATE INDEX IX_ItemCode_ItemCode ON ItemCode(ItemCode ASC)
GO

CREATE INDEX IX_ItemCode_ItemWeaving ON ItemCode(ItemWeaving ASC)
GO

CREATE INDEX IX_ItemCode_ItemYarn ON ItemCode(ItemYarn ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc1 ON ItemCode(ItemProc1 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc2 ON ItemCode(ItemProc2 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc3 ON ItemCode(ItemProc3 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc4 ON ItemCode(ItemProc4 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc5 ON ItemCode(ItemProc5 ASC)
GO

CREATE INDEX IX_ItemCode_ItemProc6 ON ItemCode(ItemProc6 ASC)
GO

CREATE INDEX IX_ItemCode_ItemGroup ON ItemCode(ItemGroup ASC)
GO

CREATE INDEX IX_ItemCode_YarnCode ON ItemCode(YarnCode ASC)
GO

CREATE INDEX IX_ItemCode_LABForm ON ItemCode(LABForm ASC)
GO

CREATE INDEX IX_ItemCode_WeaveType ON ItemCode(WeaveType ASC)
GO
