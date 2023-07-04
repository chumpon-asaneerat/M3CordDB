-- THIS SHOULD BE CLASS AND SAVE TO LOCAL FOLDER
-- MAY NOT WORK BECAUSE THE INPUT CONTROL MAY HAS SOME CUSTOM LOGIC
/*
CREATE TABLE DocumentLayout(
	LayoutId int IDENTITY(1,1) NOT NULL,
    LayoutCode nvarchar(20) NOT NULL,
    LayoutName nvarchar(100) NOT NULL,
CONSTRAINT PK_DocumentLayout PRIMARY KEY (LayoutId ASC)
)

GO

CREATE TABLE DocumentLayoutItem(
	LayoutItemId int IDENTITY(1,1) NOT NULL,
    LayoutCode nvarchar(20) NOT NULL,
    RowNo int NOT NULL DEFAULT 0,
    ColNo int NOT NULL DEFAULT 0,
    RowSpan int NOT NULL DEFAULT 1,
    ColSpan int NOT NULL DEFAULT 1,
CONSTRAINT PK_DocumentLayoutItem PRIMARY KEY (LayoutItemId ASC)
)

GO
*/