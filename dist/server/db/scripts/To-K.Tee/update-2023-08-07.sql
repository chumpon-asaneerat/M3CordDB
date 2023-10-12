DROP PROCEDURE SaveRawMaterialSheetItem
GO

DROP PROCEDURE NewRawMaterialSheet
GO

DROP PROCEDURE GetRawMaterialSheetItems
GO

DROP PROCEDURE GetRawMaterialSheet
GO

DROP VIEW RawMaterialSheetView
GO

EXEC DropTable N'RawMaterialSheetItem'
GO

EXEC DropTable N'RawMaterialSheet'
GO



/*********** Script Update Date: 2023-08-07  ***********/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductItemCode](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_ProductItemCode] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE UNIQUE INDEX IX_ProductItemCode_ItemCode ON ProductItemCode(ItemCode ASC)
GO


/*********** Script Update Date: 2023-08-07  ***********/
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

CREATE UNIQUE INDEX IX_Customer_CustomerName ON Customer(CustomerName ASC)
GO


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  Table [dbo].[S1ConditionStd]    Script Date: 8/6/2023 20:37:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S1ConditionStd](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[ItemCode] [nvarchar](30) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[CordStructure1] [nvarchar](50) NULL,
	[CordStructure2] [nvarchar](50) NULL,
	[StdTwistingNumber] [nvarchar](50) NULL,
	[RingDiameter] [nvarchar](100) NULL,
	[TwistChangeGearI] [int] NULL,
	[TwistChangeGearJ] [int] NULL,
	[TwistChangeGearK] [int] NULL,
	[LifterChangGearA] [int] NULL,
	[LifterChangGearB] [int] NULL,
	[OuterDiameter] [int] NULL,
	[TravellerNo] [nvarchar](100) NULL,
	[CouterUnit] [decimal](18, 2) NULL,
	[CouterUnitErrRange] [decimal](18, 2) NULL,
	[CouterWg] [decimal](18, 2) NULL,
	[CouterWgErrRange] [decimal](18, 2) NULL,
	[CalcTwistingNumber] [decimal](18, 2) NULL,
	[CalcTwistingNumberErrRange] [decimal](18, 2) NULL,
	[SpindleRotation] [decimal](18, 2) NULL,
	[SpindleRotationErrRange] [decimal](18, 2) NULL,
	[YarnSpeed] [decimal](18, 2) NULL,
	[YarnSpeedErrRange] [decimal](18, 2) NULL,
	[SpecialMention] [nvarchar](MAX) NULL,
 CONSTRAINT [PK_S1ConditionStd] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-08-07  ***********/
/*
CREATE TABLE YarnLoadRecord(
	YarnLoadRecordId int IDENTITY(1,1) NOT NULL,
    CordProductPkId int NOT NULL, -- Reference to Planning
    RecordDate datetime NOT NULL,
    MCCode nvarchar(10) NOT NULL,
    SPNos nvarchar(50) NOT NULL,
    DoffNo int NOT NULL,
    PalletNo nvarchar(30) NOT NULL,
    TraceNo nvarchar(30) NOT NULL,
    TotalWeight decimal(16, 3) NOT NULL default 0,
    TotalCH decimal(16, 0) NOT NULL default 0,
 CONSTRAINT PK_YarnLoadRecord PRIMARY KEY (YarnLoadRecordId ASC)
)

GO
*/


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  Table [dbo].[YarnLoadSheet]    Script Date: 8/7/2023 4:23:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[YarnLoadSheet](
	[YarnLoadSheetId] [int] IDENTITY(1,1) NOT NULL,
	[CordProductPkId] [int] NOT NULL,
	[MCCode] [nvarchar](10) NULL,
	[DeleteFlag] [bit] NULL DEFAULT 0,
	[FinishFlag] [bit] NULL DEFAULT 0,
 CONSTRAINT [PK_YarnLoadSheet] PRIMARY KEY CLUSTERED 
(
	[YarnLoadSheetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  Table [dbo].[YarnLoadSheetDoff]    Script Date: 8/7/2023 4:22:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[YarnLoadSheetDoff](
	[YarnLoadSheetDoffId] [int] IDENTITY(1,1) NOT NULL,
	[YarnLoadSheetId] [int] NOT NULL,
	[RecordDate] [datetime] NULL,
	[DoffNos] [nvarchar](50) NULL,
	[Shift] [nvarchar](10) NULL,
 CONSTRAINT [PK_YarnLoadSheetDoff] PRIMARY KEY CLUSTERED 
(
	[YarnLoadSheetDoffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  Table [dbo].[YarnLoadSheetItem]    Script Date: 8/7/2023 1:27:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[YarnLoadSheetItem](
	[YarnLoadSheetId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[DeckNo] [int] NOT NULL,
	[PalletNo] [nvarchar](30) NOT NULL,
	[TraceNo] [nvarchar](30) NOT NULL,
	[YarnBarcode] [nvarchar](30) NULL
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[GetProductItemCodes]    Script Date: 11/27/2022 10:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetProductItemCodes
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
CREATE PROCEDURE GetProductItemCodes
(
  @unused nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM ProductItemCode
END

GO


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[SaveProductItemCode]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveProductItemCode
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE SaveProductItemCode (
  @ItemCode nvarchar(30)
, @ItemId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ProductItemCode WHERE ItemId = @ItemId)
        BEGIN
            UPDATE ProductItemCode 
               SET ItemCode = @ItemCode
             WHERE ItemId = @ItemId
        END
        ELSE
        BEGIN
			INSERT INTO ProductItemCode
			(
                   ItemCode
			)
			VALUES
			(
                   @ItemCode
			);

            SET @ItemId = @@IDENTITY;
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


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 11/27/2022 10:15:25 PM ******/
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
CREATE PROCEDURE GetCustomers
(
  @unused nvarchar(100) = NULL
)
AS
BEGIN
	SELECT *
	  FROM Customer
END

GO


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[SaveCustomer]    Script Date: 11/26/2022 1:17:52 PM ******/
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
CREATE PROCEDURE SaveCustomer (
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


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[GetWarehouseYarns]    Script Date: 8/7/2023 0:57:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4IssueYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetWarehouseYarns NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetWarehouseYarns]
(
  @PalletNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT I.G4IssueYarnPkId -- FROM G4IssueYarn
         , I.RequestNo
         , I.IssueDate
         , I.IssueBy
         , I.TraceNo
         , I.PalletNo
         , I.WeightQty
         , I.ConeCH
         , I.PalletType
         , I.DeleteFlag
         , I.FinishFlag
         , I.WHReceiveFlag
         , I.[Remark]
         , I.UsedCH
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.Item400
		 , Y.ReceiveDate
		 , Y.ReceiveBy
		 , Y.Verify
         , Y.ExpiredDate
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y
     WHERE UPPER(LTRIM(RTRIM(I.PalletNo))) = UPPER(LTRIM(RTRIM(COALESCE(@PalletNo, I.PalletNo))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
       AND (I.WHReceiveFlag = 1)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[SearchWarehousePallet]    Script Date: 8/7/2023 0:58:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4IssueYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchWarehousePallet NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchWarehousePallet]
(
  @PalletNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT I.G4IssueYarnPkId -- FROM G4IssueYarn
         , I.RequestNo
         , I.IssueDate
         , I.IssueBy
         , I.TraceNo
         , I.PalletNo
         , I.WeightQty
         , I.ConeCH
         , I.PalletType
         , I.DeleteFlag
         , I.FinishFlag
         , I.WHReceiveFlag
         , I.[Remark]
         , I.UsedCH
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.Item400
		 , Y.ReceiveDate
		 , Y.ReceiveBy
		 , Y.Verify
         , Y.ExpiredDate
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y
     WHERE UPPER(LTRIM(RTRIM(I.PalletNo))) = UPPER(LTRIM(RTRIM(@PalletNo)))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
       AND (I.WHReceiveFlag = 1)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[GetCordProducts]    Script Date: 8/7/2023 0:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCordProducts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetCordProducts]
(
  @CustomerName nvarchar(150) = NULL
, @ProductLotNo nvarchar(30) = NULL
, @ItemYarn nvarchar(30) = NULL
)
AS
BEGIN
    SELECT I.CordProductPkId -- FROM CordProduct
         , I.ProductLotNo
         , I.CustomerCode
         , I.CustomerName
         , I.ItemYarn
         , I.ItemCode
         , I.Item400
         , I.Color
         , I.TargetQty
         , I.ActualQty
         , I.ProcessingFlag -- Not Used
         , I.FinishFlag
         , I.DeleteFlag
      FROM CordProduct I
     WHERE UPPER(LTRIM(RTRIM(I.CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, I.CustomerName))))
       AND UPPER(LTRIM(RTRIM(I.ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, I.ProductLotNo))))
       AND UPPER(LTRIM(RTRIM(I.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, I.ItemYarn))))
       --AND (I.ProcessingFlag IS NULL OR I.ProcessingFlag = 0)
	   AND (I.TargetQty > I.ActualQty)
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
     ORDER BY I.ItemYarn, I.ProductLotNo;

END

GO


/*********** Script Update Date: 2023-08-07  ***********/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveYarnLoadRecord
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
/*
CREATE PROCEDURE [dbo].[SaveYarnLoadRecord] (
  @CordProductPkId int
, @RecordDate datetime
, @MCCode nvarchar(10)
, @SPNos nvarchar(50)
, @DoffNo int
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @TotalWeight decimal(16, 3)
, @TotalCH decimal(16, 0)
, @YarnLoadRecordId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM YarnLoadRecord WHERE YarnLoadRecordId = @YarnLoadRecordId)
        BEGIN
			INSERT INTO YarnLoadRecord
		    (
                  CordProductPkId
                , RecordDate
                , MCCode
                , SPNos
                , DoffNo
                , PalletNo
                , TraceNo
                , TotalWeight
                , TotalCH
            )
			VALUES
			(
                  @CordProductPkId
                , @RecordDate
                , @MCCode
                , @SPNos
                , @DoffNo
                , @PalletNo
                , @TraceNo
                , @TotalWeight
                , @TotalCH
			);

			SET @YarnLoadRecordId = @@IDENTITY;
        END
        ELSE
        BEGIN

            UPDATE YarnLoadRecord
               SET CordProductPkId = @CordProductPkId
                 , RecordDate = @RecordDate
                 , MCCode = @MCCode
                 , SPNos = @SPNos
                 , DoffNo = @DoffNo
                 , PalletNo = @PalletNo
                 , TraceNo = @TraceNo
                 , TotalWeight = @TotalWeight
                 , TotalCH = @TotalCH
             WHERE YarnLoadRecordId = @YarnLoadRecordId;
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
*/

/****** Object:  StoredProcedure [dbo].[SaveYarnLoadSheet]    Script Date: 8/7/2023 4:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveYarnLoadSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveYarnLoadSheet] (
  @CordProductPkId int
, @MCCode nvarchar(10)
, @FinishFlag bit
, @DeleteFlag bit
, @YarnLoadSheetId int = null out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM YarnLoadSheet WHERE YarnLoadSheetId = @YarnLoadSheetId)
        BEGIN
			INSERT INTO YarnLoadSheet
		    (
                  CordProductPkId
                , MCCode
                , FinishFlag
                , DeleteFlag
            )
			VALUES
			(
                  @CordProductPkId
                , @MCCode
                , @FinishFlag
                , @DeleteFlag
			);

			SET @YarnLoadSheetId = @@IDENTITY;
        END
        ELSE
        BEGIN

            UPDATE YarnLoadSheet
               SET CordProductPkId = @CordProductPkId
                 , MCCode = @MCCode
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE YarnLoadSheetId = @YarnLoadSheetId;
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


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[GetYarnLoadSheets]    Script Date: 8/7/2023 0:57:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetYarnLoadSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetWarehouseYarns NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetYarnLoadSheets]
(
  @MCCode nvarchar(10) = NULL
)
AS
BEGIN
    SELECT I.YarnLoadSheetId -- FROM YarnLoadSheet
         , I.CordProductPkId
         , I.MCCode
         , I.FinishFlag
         , I.DeleteFlag
         , P.ProductLotNo
         , P.CustomerCode
         , P.CustomerName
         , P.ItemYarn
         , P.ItemCode
         , P.Item400
         , P.Color
         , P.TargetQty
         , P.ActualQty
         --, P.ProcessingFlag
         , M.ProcessName
         , M.DeckPerCore
         , M.StartCore
         , M.EndCore
      FROM YarnLoadSheet I, CordProduct P, FirstTwistMC M
     WHERE UPPER(LTRIM(RTRIM(I.MCCode))) = UPPER(LTRIM(RTRIM(COALESCE(@MCCode, I.MCCode))))
       AND I.MCCode = M.MCCode
       AND I.CordProductPkId = P.CordProductPkId
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
     ORDER BY I.CordProductPkId, I.MCCode;

END

GO


/****** Object:  StoredProcedure [dbo].[SaveYarnLoadSheetDoff]    Script Date: 8/7/2023 4:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveYarnLoadSheetDoff
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveYarnLoadSheetDoff] (
  @YarnLoadSheetId int
, @RecordDate datetime
, @DoffNos nvarchar(50)
, @Shift nvarchar(10)
, @YarnLoadSheetDoffId int = null out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM YarnLoadSheetDoff WHERE YarnLoadSheetDoffId = @YarnLoadSheetDoffId)
        BEGIN
			INSERT INTO YarnLoadSheetDoff
		    (
                  YarnLoadSheetId
                , RecordDate
                , DoffNos
                , Shift
            )
			VALUES
			(
                  @YarnLoadSheetId
                , @RecordDate
                , @DoffNos
                , @Shift
			);

			SET @YarnLoadSheetDoffId = @@IDENTITY;
        END
        ELSE
        BEGIN
            UPDATE YarnLoadSheetDoff
               SET YarnLoadSheetId = @YarnLoadSheetId
                 , RecordDate = @RecordDate
                 , DoffNos = @DoffNos
                 , Shift = @Shift
             WHERE YarnLoadSheetDoffId = @YarnLoadSheetDoffId;
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


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[GetS1ConditionStds]    Script Date: 11/27/2022 10:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS1ConditionStds
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
CREATE PROCEDURE GetS1ConditionStds
(
  @CustomerName nvarchar(100) = NULL
, @ItemCode nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM S1ConditionStd
     WHERE UPPER(LTRIM(RTRIM(CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, CustomerName))))
       AND UPPER(LTRIM(RTRIM(ItemCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemCode, ItemCode))))
END

GO


/*********** Script Update Date: 2023-08-07  ***********/
/****** Object:  StoredProcedure [dbo].[SaveS1ConditionStd]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveS1ConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE SaveS1ConditionStd (
  @CustomerName nvarchar(100)
, @ItemCode nvarchar(30)
, @ProductName nvarchar(100)
, @ItemYarn nvarchar(30)
, @CordStructure1 nvarchar(50)
, @CordStructure2 nvarchar(50)
, @StdTwistingNumber nvarchar(50)
, @RingDiameter nvarchar(100)
, @TwistChangeGearI int
, @TwistChangeGearJ int
, @TwistChangeGearK int
, @LifterChangGearA int
, @LifterChangGearB int
, @OuterDiameter int
, @TravellerNo nvarchar(100)
, @CouterUnit decimal(18, 2)
, @CouterUnitErrRange decimal(18, 2)
, @CouterWg decimal(18, 2)
, @CouterWgErrRange decimal(18, 2)
, @CalcTwistingNumber decimal(18, 2)
, @CalcTwistingNumberErrRange decimal(18, 2)
, @SpindleRotation decimal(18, 2)
, @SpindleRotationErrRange decimal(18, 2)
, @YarnSpeed decimal(18, 2)
, @YarnSpeedErrRange decimal(18, 2)
, @SpecialMention as nvarchar(MAX)
, @PkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM S1ConditionStd WHERE PkId = @PkId)
        BEGIN
            UPDATE S1ConditionStd 
               SET CustomerName = @CustomerName
                 , ItemCode = @ItemCode
                 , ProductName = @ProductName
                 , ItemYarn = @ItemYarn
                 , CordStructure1 = @CordStructure1
                 , CordStructure2 = @CordStructure2
                 , StdTwistingNumber = @StdTwistingNumber
                 , RingDiameter = @RingDiameter
                 , TwistChangeGearI = @TwistChangeGearI
                 , TwistChangeGearJ = @TwistChangeGearJ
                 , TwistChangeGearK = @TwistChangeGearK
                 , LifterChangGearA = @LifterChangGearA
                 , LifterChangGearB = @LifterChangGearB
                 , OuterDiameter = @OuterDiameter
                 , TravellerNo = @TravellerNo
                 , CouterUnit = @CouterUnit
                 , CouterUnitErrRange = @CouterUnitErrRange
                 , CouterWg = @CouterWg
                 , CouterWgErrRange = @CouterWgErrRange
                 , CalcTwistingNumber = @CalcTwistingNumber
                 , CalcTwistingNumberErrRange = @CalcTwistingNumberErrRange
                 , SpindleRotation = @SpindleRotation
                 , SpindleRotationErrRange = @SpindleRotationErrRange
                 , YarnSpeed = @YarnSpeed
                 , YarnSpeedErrRange = @YarnSpeedErrRange
                 , SpecialMention = @SpecialMention
             WHERE PkId = @PkId
        END
        ELSE
        BEGIN
			INSERT INTO S1ConditionStd
			(
                  CustomerName
                , ItemCode
                , ProductName
                , ItemYarn
                , CordStructure1
                , CordStructure2
                , StdTwistingNumber
                , RingDiameter
                , TwistChangeGearI
                , TwistChangeGearJ
                , TwistChangeGearK
                , LifterChangGearA
                , LifterChangGearB
                , OuterDiameter
                , TravellerNo
                , CouterUnit
                , CouterUnitErrRange
                , CouterWg
                , CouterWgErrRange
                , CalcTwistingNumber
                , CalcTwistingNumberErrRange
                , SpindleRotation
                , SpindleRotationErrRange
                , YarnSpeed
                , YarnSpeedErrRange
                , SpecialMention
			)
			VALUES
			(
                  @CustomerName
                , @ItemCode
                , @ProductName
                , @ItemYarn
                , @CordStructure1
                , @CordStructure2
                , @StdTwistingNumber
                , @RingDiameter
                , @TwistChangeGearI
                , @TwistChangeGearJ
                , @TwistChangeGearK
                , @LifterChangGearA
                , @LifterChangGearB
                , @OuterDiameter
                , @TravellerNo
                , @CouterUnit
                , @CouterUnitErrRange
                , @CouterWg
                , @CouterWgErrRange
                , @CalcTwistingNumber
                , @CalcTwistingNumberErrRange
                , @SpindleRotation
                , @SpindleRotationErrRange
                , @YarnSpeed
                , @YarnSpeedErrRange
                , @SpecialMention
			);

            SET @PkId = @@IDENTITY;
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


/*********** Script Update Date: 2023-08-07  ***********/

-- Product Item Code
EXEC SaveProductItemCode N'9A1100L'
GO
EXEC SaveProductItemCode N'9H0663L'
GO

-- Customer
EXEC SaveCustomer N'BANDO'
GO
EXEC SaveCustomer N'V-BELT'
GO

