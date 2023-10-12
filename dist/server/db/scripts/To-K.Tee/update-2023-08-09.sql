/*********** Script Update Date: 2023-08-09  ***********/
DROP PROCEDURE SaveYarnLoadSheet
GO
DROP PROCEDURE SaveYarnLoadSheetDoff
GO
DROP PROCEDURE GetYarnLoadSheets
GO

DROP PROCEDURE SaveS1ConditionStd
GO
DROP PROCEDURE GetS1ConditionStds
GO

DROP PROCEDURE SaveCordProduct
GO
DROP PROCEDURE GetCordProducts
GO
DROP PROCEDURE DeleteCordProduct
GO

DROP PROCEDURE SaveCustomer
GO
DROP PROCEDURE GetCustomers
GO

DROP PROCEDURE SaveProductItemCode
GO
DROP PROCEDURE GetProductItemCodes
GO

EXEC DropTable N'YarnLoadSheetItem'
GO
EXEC DropTable N'YarnLoadSheetDoff'
GO
EXEC DropTable N'YarnLoadSheet'
GO

EXEC DropTable N'S1ConditionStd'
GO
EXEC DropTable N'CordProduct'
GO
EXEC DropTable N'Customer'
GO
EXEC DropTable N'ProductItemCode'
GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  Table [dbo].[Product]    Script Date: 8/18/2023 0:13:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](30) NULL,
	[ProductName] [nvarchar](100) NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[CordStructure] [nvarchar](100) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  Table [dbo].[Customer]    Script Date: 8/18/2023 0:02:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  Table [dbo].[PCCard]    Script Date: 8/18/2023 7:46:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PCCard](
	[PCId] [int] IDENTITY(1,1) NOT NULL,
	[PINo] [nvarchar](50) NULL,
	[PCDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[ProductLotNo] [nvarchar](30) NULL,
	[TargetQty] [decimal](16, 3) NULL,
	[FinishFlag] [bit] NULL,
	[DeleteFlag] [bit] NULL,
 CONSTRAINT [PK_PCCard] PRIMARY KEY CLUSTERED 
(
	[PCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PCCard] ADD  CONSTRAINT [DF_PCCard_FinishFlag]  DEFAULT ((0)) FOR [FinishFlag]
GO

ALTER TABLE [dbo].[PCCard] ADD  CONSTRAINT [DF_PCCard_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO




/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  Table [dbo].[PCTwist1]    Script Date: 8/18/2023 4:17:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PCTwist1](
	[PCTwist1Id] [int] IDENTITY(1,1) NOT NULL,
	[PCId] [int] NULL,
	[IssueDate] [datetime] NULL,
	[IssueBy] [nvarchar](200) NULL,
	[CheckBy] [nvarchar](200) NULL,
	[ApproveBy] [nvarchar](200) NULL,
	[SectionHead] [nvarchar](200) NULL,
	[SectionMgr] [nvarchar](200) NULL,
	[MCCode] [nvarchar](10) NULL,
	[PaperTubeColor] [nvarchar](100) NULL,
	[ActualQty] [decimal](16, 3) NULL,
	[Remark] [nvarchar](200) NULL,
	[LastTestNo] [int] NULL,
	[LastDoffNo] [int] NULL,
	[FinishFlag] [bit] NULL,
	[DeleteFlag] [bit] NULL,
 CONSTRAINT [PK_PCTwist1] PRIMARY KEY CLUSTERED 
(
	[PCTwist1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PCTwist1] ADD  CONSTRAINT [DF_PCTwist1_LastTestNo]  DEFAULT ((0)) FOR [LastTestNo]
GO

ALTER TABLE [dbo].[PCTwist1] ADD  CONSTRAINT [DF_PCTwist1_LastDoffNo]  DEFAULT ((0)) FOR [LastDoffNo]
GO

ALTER TABLE [dbo].[PCTwist1] ADD  CONSTRAINT [DF_PCTwist1_FinishFlag]  DEFAULT ((0)) FOR [FinishFlag]
GO

ALTER TABLE [dbo].[PCTwist1] ADD  CONSTRAINT [DF_PCTwist1_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO




/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  Table [dbo].[Twist1LoadRecord]    Script Date: 8/18/2023 4:24:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1LoadRecord](
	[Twist1LoadId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[ProductionDate] [datetime] NULL,
	[TestFlag] [bit] NULL,
	[DoffNo] [int] NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[ShiftName] [nvarchar](10) NULL,
	[Chief] [nvarchar](100) NULL,
	[Remark] [nvarchar](100) NULL,
	[Keiba] [bit] NULL,
	[Traverse] [bit] NULL,
	[Crossing] [bit] NULL,
	[ScrapeTube] [bit] NULL,
	[Form] [bit] NULL,
	[Stain] [bit] NULL,
 CONSTRAINT [PK_Twist1LoadRecord] PRIMARY KEY CLUSTERED 
(
	[Twist1LoadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Twist1LoadRecord] ADD  CONSTRAINT [DF_Twist1LoadRecord_TestFlag]  DEFAULT ((0)) FOR [TestFlag]
GO

ALTER TABLE [dbo].[Twist1LoadRecord] ADD  CONSTRAINT [DF_Table_1_LastTestNo]  DEFAULT ((0)) FOR [DoffNo]
GO

ALTER TABLE [dbo].[Twist1LoadRecord] ADD  CONSTRAINT [DF_Table_1_LastDoffNo]  DEFAULT ((0)) FOR [ItemYarn]
GO


/*********** Script Update Date: 2023-08-09  ***********/
CREATE VIEW PCCardView
AS
    SELECT PC.PCId
         , PC.PINo
         , PC.PCDate
         , PC.CustomerId
         , CM.CustomerName
         , PC.ProductCode
         , PD.ProductName
         , PD.ItemYarn
         , PD.CordStructure
         , PC.ProductLotNo
         , PC.TargetQty
         , PC.FinishFlag
         , PC.DeleteFlag
      FROM PCCard PC 
           LEFT OUTER JOIN Customer CM ON PC.CustomerId = CM.CustomerId
           LEFT OUTER JOIN Product PD ON LTRIM(RTRIM(PC.ProductCode)) = LTRIM(RTRIM(PD.ProductCode))

GO


/*********** Script Update Date: 2023-08-09  ***********/
CREATE VIEW PCTwist1View
AS
    SELECT T1.PCTwist1Id
         , T1.IssueDate
         , T1.IssueBy
         , T1.CheckBy
         , T1.ApproveBy
         , T1.SectionHead
         , T1.SectionMgr
         , T1.MCCode
         , T1.PaperTubeColor
         , T1.ActualQty
         , T1.Remark
         , T1.LastTestNo
         , T1.LastDoffNo
         , T1.FinishFlag
         , T1.DeleteFlag
         , PC.PCId
         , PC.PINo
         , PC.PCDate
         , PC.CustomerId
         , PC.CustomerName
         , PC.ProductCode
         , PC.ProductName
         , PC.ItemYarn
         , PC.CordStructure
         , PC.ProductLotNo
         , PC.TargetQty
      FROM PCTwist1 T1 
           LEFT OUTER JOIN PCCardView PC ON T1.PCId = PC.PCId

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[SaveProduct]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveProduct
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveProduct] (
  @ProductCode nvarchar(30)
, @ProductName nvarchar(100)
, @ItemYarn nvarchar(30)
, @CordStructure nvarchar(100)
, @ProductId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Product WHERE ProductId = @ProductId)
        BEGIN
            UPDATE Product 
               SET ProductCode = @ProductCode
                 , ProductName = @ProductName
                 , ItemYarn = @ItemYarn
                 , CordStructure = @CordStructure
             WHERE ProductId = @ProductId
        END
        ELSE
        BEGIN
			INSERT INTO Product
		    (
                  ProductCode
                , ProductName
                , ItemYarn
                , CordStructure
			)
			VALUES
			(
                  @ProductCode
                , @ProductName
                , @ItemYarn
                , @CordStructure
			);

			SET @ProductId = @@IDENTITY;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetProducts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetProducts]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductId
         , ProductCode
         , ProductName
         , CordStructure
      FROM Product
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[SaveCustomer]    Script Date: 8/17/2023 8:46:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveCustomer
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveCustomer] (
  @CustomerName nvarchar(100)
, @CustomerId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Customer WHERE CustomerId = @CustomerId)
        BEGIN
            UPDATE Customer 
               SET CustomerName = @CustomerName
             WHERE CustomerId = @CustomerId
        END
        ELSE
        BEGIN
			INSERT INTO Customer
			(
                   CustomerName
			)
			VALUES
			(
                   @CustomerName
			);

            SET @CustomerId = @@IDENTITY;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END


GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 8/17/2023 8:46:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCustomers
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
CREATE PROCEDURE [dbo].[GetCustomers]
(
  @unused nvarchar(100) = NULL
)
AS
BEGIN
	SELECT *
	  FROM Customer
END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[SaveBCSPRFTP]    Script Date: 8/23/2023 13:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveBCSPRFTP
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveBCSPRFTP] (
  @DTTRA datetime  -- MovementDate
, @DTINP datetime  -- EntryDate
, @CDCON nvarchar(30) -- Pallet No
, @BLELE nvarchar(30) -- Weight Qty
, @CDUM0 nvarchar(20) -- Unit
, @CDKE1 nvarchar(30) -- ItemCode400
, @CDLOT nvarchar(30) -- Lot No
, @CDQUA nvarchar(30) -- N/A
, @TECU1 decimal(16, 3) = 0.0
, @TECU2 decimal(16, 3) = 0.0
, @TECU3 decimal(16, 3) = 0.0 -- ConeCH
, @TECU4 decimal(16, 3) = 0.0
, @TECU5 nvarchar(30) = NULL -- DirectNo
, @TECU6 nvarchar(30) = NULL -- Trace No
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @ItemYarn nvarchar(30)
DECLARE @iCnt int
DECLARE @KgPerCH decimal(16, 3) 
	BEGIN TRY
        SELECT @ItemYarn = ItemYarn 
          FROM ItemCode 
         WHERE Item400 = @CDKE1

        --IF (@ItemYarn IS NULL)
        --BEGIN
        --    SET @ItemYarn = @CDKE1
        --    INSERT INTO ItemCode (ItemCode400, ItemYarn) VALUES (@CDKE1, @ItemYarn)
        --END

        SELECT @iCnt = COUNT(*)
          FROM G4Yarn
         WHERE PALLETNO = @CDCON;

        SET @KgPerCH = @BLELE / @TECU3; -- CALC Kg Per CH
        
        IF (@iCnt = 0)
        BEGIN

			INSERT INTO G4Yarn
			(
                   EntryDate
                 , TraceNo
                 , PalletNo
                 , ItemYarn
                 , LotNo
                 , Item400
                 , Unit
                 , ConeCH
                 , WeightQty
                 , MovementDate
                 , KgPerCH
                 , DirectionNo
			)
			VALUES
			(
                   @DTINP
                 , @TECU6
                 , @CDCON
                 , @ItemYarn
                 , @CDLOT
                 , @CDKE1
                 , @CDUM0
                 , @TECU3
                 , @BLELE
                 , @DTTRA
                 , @KgPerCH
                 , @TECU5
			);
        END
        ELSE
        BEGIN
            UPDATE G4Yarn 
               SET EntryDate = COALESCE(@DTINP, EntryDate)
                 , TraceNo = COALESCE(@TECU6, TraceNo)
                 , PalletNo = COALESCE(@CDCON, PalletNo)
                 , ItemYarn = COALESCE(@ItemYarn, ItemYarn)
                 , LotNo = COALESCE(@CDLOT, LotNo)
                 , Item400 = COALESCE(@CDKE1, Item400)
                 , Unit = COALESCE(@CDUM0, Unit)
                 , ConeCH = COALESCE(@TECU3, ConeCH)
                 , WeightQty = COALESCE(@BLELE, WeightQty)
                 , MovementDate = COALESCE(@DTTRA, MovementDate)
                 , KgPerCH = COALESCE(@KgPerCH, KgPerCH)
                 , DirectionNo = COALESCE(@TECU5, DirectionNo)
             WHERE PalletNo = @CDCON;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetPCCards]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetProducts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPCCards NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetPCCards]
(
  @CustomerName nvarchar(150) = NULL
, @ProductLotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT PCId
         , PINo
         , PCDate
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , ProductLotNo
         , TargetQty
         , FinishFlag
         , DeleteFlag
      FROM PCCardView
     WHERE UPPER(LTRIM(RTRIM(CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, CustomerName))))
       AND UPPER(LTRIM(RTRIM(ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, ProductLotNo))))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY PCDate;

END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[SavePCCard]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SavePCCard
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SavePCCard] (
  @PINo nvarchar(50)
, @PCDate datetime
, @CustomerId int
, @ProductCode nvarchar(30)
, @ProductLotNo nvarchar(30)
, @TargetQty decimal(16,3)
, @FinishFlag bit
, @DeleteFlag bit
, @PCId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PCCard WHERE PCId = @PCId)
        BEGIN
            UPDATE PCCard 
               SET PINo = @PINo
                 , PCDate = @PCDate
                 , CustomerId = @CustomerId
                 , ProductCode = @ProductCode
                 , ProductLotNo = @ProductLotNo
                 , TargetQty = @TargetQty
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE PCId = @PCId
        END
        ELSE
        BEGIN
			INSERT INTO PCCard
		    (
                  PINo
                , PCDate
                , CustomerId
                , ProductCode
                , ProductLotNo
                , TargetQty
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
                  @PINo
                , @PCDate
                , @CustomerId
                , @ProductCode
                , @ProductLotNo
                , @TargetQty
                , @FinishFlag
                , @DeleteFlag
			);

			SET @PCId = @@IDENTITY;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[DeletePCCard]    Script Date: 8/17/2023 8:34:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	DeletePCCard
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[DeletePCCard] (
  @PCId int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PCCard WHERE PCId = @PCId)
        BEGIN
            UPDATE PCCard 
               SET DeleteFlag = 1
             WHERE PCId = @PCId
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END


GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[AddPC1Twist]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	AddPC1Twist
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[AddPC1Twist] (
  @PCId int
, @MCCode nvarchar(10)
, @PaperTubeColor nvarchar(100)
, @Remark nvarchar(200)
, @PCTwist1Id int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM PCTwist1 WHERE PCId = @PCId AND MCCode = @MCCode)
        BEGIN
			INSERT INTO PCTwist1
		    (
                  PCId
                , MCCode
                , PaperTubeColor
                , [Remark]
			)
			VALUES
			(
                  @PCId
                , @MCCode
                , @PaperTubeColor
                , @Remark
			);

			SET @PCTwist1Id = @@IDENTITY;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[SavePCTwist1]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SavePCTwist1
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SavePCTwist1] (
  @PCTwist1Id int
, @IssueDate datetime
, @IssueBy nvarchar(200)
, @CheckBy nvarchar(200)
, @ApproveBy nvarchar(200)
, @SectionHead nvarchar(200)
, @SectionMgr nvarchar(200)
, @ActualQty decimal(16,3)
, @PaperTubeColor nvarchar(100)
, @Remark nvarchar(200)
, @LastTestNo int
, @LastDoffNo int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PCTwist1 WHERE PCTwist1Id = @PCTwist1Id)
        BEGIN
            UPDATE PCTwist1 
               SET IssueDate = @IssueDate
                 , IssueBy = @IssueBy
                 , CheckBy = @CheckBy
                 , ApproveBy = @ApproveBy
                 , SectionHead = @SectionHead
                 , SectionMgr = @SectionMgr
                 , ActualQty = @ActualQty
                 , PaperTubeColor = @PaperTubeColor
                 , Remark = @Remark
                 , LastTestNo = @LastTestNo
                 , LastDoffNo = @LastDoffNo
             WHERE PCTwist1Id = @PCTwist1Id
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[DeletePCTwist1]    Script Date: 8/17/2023 8:34:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	DeletePCTwist1
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[DeletePCTwist1] (
  @PCTwist1Id int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PCTwist1 WHERE PCTwist1Id = @PCTwist1Id)
        BEGIN
            UPDATE PCTwist1 
               SET DeleteFlag = 1
             WHERE PCTwist1Id = @PCTwist1Id
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END


GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetPCTwist1s]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetPCTwist1s
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPCTwist1s NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetPCTwist1s]
(
  @MCCode nvarchar(10) = NULL
)
AS
BEGIN
    SELECT PCTwist1Id
         , IssueDate
         , IssueBy
         , CheckBy
         , ApproveBy
         , SectionHead
         , SectionMgr
         , MCCode
         , PaperTubeColor
         , ActualQty
         , Remark
         , LastTestNo
         , LastDoffNo
         , FinishFlag
         , DeleteFlag
         , PCId
         , PINo
         , PCDate
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , ProductLotNo
         , TargetQty
      FROM PCTwist1View
     WHERE UPPER(LTRIM(RTRIM(MCCode))) = UPPER(LTRIM(RTRIM(COALESCE(@MCCode, MCCode))))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY PCDate;

END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[SaveTwist1LoadRecord]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveTwist1LoadRecord
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveTwist1LoadRecord] (
  @PCTwist1Id int
, @ProductionDate datetime
, @TestFlag bit
, @DoffNo int
, @ItemYarn nvarchar(30)
, @ShiftName nvarchar(10)
, @Chief nvarchar(100)
, @Remark nvarchar(100)
, @Keiba bit
, @Traverse bit
, @Crossing bit
, @ScrapeTube bit
, @Form bit
, @Stain bit
, @Twist1LoadId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Twist1LoadRecord WHERE Twist1LoadId = @Twist1LoadId)
        BEGIN
            UPDATE Twist1LoadRecord 
               SET PCTwist1Id = @PCTwist1Id
                 , ProductionDate = @ProductionDate
                 , TestFlag = @TestFlag
                 , DoffNo = @DoffNo
                 , ItemYarn = @ItemYarn
                 , ShiftName = @ShiftName
                 , Chief = @Chief
                 , [Remark] = @Remark
                 , Keiba = @Keiba
                 , Traverse = @Traverse
                 , Crossing = @Crossing
                 , ScrapeTube = @ScrapeTube
                 , Form = @Form
                 , Stain = @Stain
             WHERE Twist1LoadId = @Twist1LoadId
        END
        ELSE
        BEGIN
			INSERT INTO Twist1LoadRecord
		    (
                  PCTwist1Id
                , ProductionDate
                , TestFlag
                , DoffNo
                , ItemYarn
                , ShiftName
                , Chief
                , [Remark]
                , Keiba
                , Traverse
                , Crossing
                , ScrapeTube
                , Form
                , Stain
			)
			VALUES
			(
                  @PCTwist1Id
                , @ProductionDate
                , @TestFlag
                , @DoffNo
                , @ItemYarn
                , @ShiftName
                , @Chief
                , @Remark
                , @Keiba
                , @Traverse
                , @Crossing
                , @ScrapeTube
                , @Form
                , @Stain
			);

			SET @Twist1LoadId = @@IDENTITY;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO


/*********** Script Update Date: 2023-08-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetTwist1LoadRecords]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetProducts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetPCCards NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetTwist1LoadRecords]
(
  @PCTwist1Id int
)
AS
BEGIN
    SELECT Twist1LoadId
         , PCTwist1Id
         , ProductionDate
         , TestFlag
         , DoffNo
         , ItemYarn
         , ShiftName
         , Chief
         , [Remark]
         , Keiba
         , Traverse
         , Crossing
         , ScrapeTube
         , Form
         , Stain
      FROM Twist1LoadRecord
     WHERE PCTwist1Id = @PCTwist1Id
     ORDER BY ProductionDate;

END

GO


/*********** Script Update Date: 2023-08-09  ***********/
-- INIT PRODUCTS
EXEC SaveProduct N'9A0663L' , N'V-BELT'       , N'1100-240-704 035-OKA', N'R 1000//2/3'
EXEC SaveProduct N'9A1100L' , N'V-BELT'       , N'1100-240-704 035-OKA', N'1100T//2/5'
EXEC SaveProduct N'9H0663SL', N'V-BELT'       , N'1100-360-704M-OKA'   , N'1100T//2/3'
EXEC SaveProduct N'R10023'  , N'V-BELT'       , N'1100-240-707M-OKA'   , N'R 1000//2/3'
EXEC SaveProduct N'1800TW'  , N'BRAKE HOSE'   , N'1800-288-707C-TTS'   , N'1800T/1'
EXEC SaveProduct N'H1671T'  , N'BRAKE HOSE'   , N'1670-360-705M-OKA'   , N'H 1670T/1'
EXEC SaveProduct N'KT3R16'  , N'RADIATOR HOSE', N'1100-240-704 035-OKA', N'P 1100T//2'
EXEC SaveProduct N'KT3S71'  , N'BRAKE HOSE'   , N'1100-240-707M-OKA'   , N'P 1100T//2'
EXEC SaveProduct N'P1100TT' , N'BRAKE HOSE'   , N'1100-240-705M-OKA'   , N'P 1100TT'
EXEC SaveProduct N'P1100ZFT', N'BRAKE HOSE'   , N'1100-240-705M-OKA'   , N'P 1100/1'
EXEC SaveProduct N'P1402TRH', N'BRAKE HOSE'   , N'1400-204-1781-OKA'   , N'1400T//2'
EXEC SaveProduct N'P1670T1R', N'BRAKE HOSE'   , N'1500-288-707C-TTS'   , N'P 1500D/1'
EXEC SaveProduct N'P1670ZFT', N'BRAKE HOSE'   , N'1670-360-705M-OKA'   , N'P 1670T/1'
EXEC SaveProduct N'P1671TT' , N'BRAKE HOSE'   , N'1670-360-705M-OKA', N'P 1670T/1'
GO

-- CUSTOMER
EXEC SaveCustomer N'BANDO'
EXEC SaveCustomer N'PT SEIWA'
EXEC SaveCustomer N'NICHIRIN'
EXEC SaveCustomer N'KOSEN'
EXEC SaveCustomer N'BS Japan'
EXEC SaveCustomer N'BSCBF'
EXEC SaveCustomer N'Flexitech'
GO

