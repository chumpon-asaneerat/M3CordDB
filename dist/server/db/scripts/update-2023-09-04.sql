/*********** Script Update Date: 2023-09-04  ***********/


/*********** Script Update Date: 2023-09-04  ***********/
ALTER TABLE Product ADD TreatRoute nvarchar(150)
GO

ALTER TABLE Product ADD TwistSpec nvarchar(100)
GO


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  Table [dbo].[ConditionStd]    Script Date: 9/5/2023 10:38:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConditionStd](
	[ProcessName] [nvarchar](30) NOT NULL,
	[ProductCode] [nvarchar](30) NOT NULL,
	[ParamName] [nvarchar](50) NOT NULL,
	[SC] [bit] NULL,
	[ParamType] [int] NULL,
	[StdValueS] [nvarchar](100) NULL,
	[StdValueD] [decimal](18, 3) NULL,
	[StdValueE] [decimal](18, 3) NULL,
    [StdValueB] [bit] NULL,
 CONSTRAINT [PK_ComditionStd] PRIMARY KEY CLUSTERED 
(
	[ProcessName] ASC,
	[ProductCode] ASC,
	[ParamName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-09-04  ***********/
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
ALTER PROCEDURE [dbo].[GetPCCards]
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
         , TreatRoute
         , TwistSpec
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


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  Table [dbo].[Twist1LoadRecordItem]    Script Date: 9/11/2023 1:26:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1LoadRecordItem](
	[Twist1LoadId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[DeckNo] [int] NOT NULL,
	[PalletNo] [nvarchar](30) NULL,
	[TraceNo] [nvarchar](30) NULL,
	[YarnBarcode] [nvarchar](100) NULL,
 CONSTRAINT [PK_Twist1LoadRecordItem] PRIMARY KEY CLUSTERED 
(
	[Twist1LoadId] ASC,
	[SPNo] ASC,
	[DeckNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  Table [dbo].[Twist1CheckSheet]    Script Date: 9/11/2023 5:19:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1CheckSheet](
	[Twist1LoadId] [int] NOT NULL,
	[SPNo] [int] NOT NULL,
	[RawB] [bit] NULL,
	[RawE] [bit] NULL,
	[CrossB] [bit] NULL,
	[CrossE] [bit] NULL,
	[FormB] [bit] NULL,
	[FormE] [bit] NULL,
	[KebaB] [bit] NULL,
	[KebaE] [bit] NULL,
	[StainB] [bit] NULL,
	[StainE] [bit] NULL,
	[PaperTubeB] [bit] NULL,
	[PaperTubeE] [bit] NULL,
	[YarnNoB] [bit] NULL,
	[YarnNoE] [bit] NULL,
	[BBMarkB] [bit] NULL,
	[BBMarkE] [bit] NULL,
 CONSTRAINT [PK_Twist1CheckSheet] PRIMARY KEY CLUSTERED 
(
	[Twist1LoadId] ASC,
	[SPNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Table_1_RawMaterialB]  DEFAULT ((0)) FOR [RawB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Table_1_RawMaterialE]  DEFAULT ((0)) FOR [RawE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Table_1_CrossYarnB]  DEFAULT ((0)) FOR [CrossB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Table_1_CrossYarnE]  DEFAULT ((0)) FOR [CrossE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_FormB]  DEFAULT ((0)) FOR [FormB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_FormE]  DEFAULT ((0)) FOR [FormE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_KebaB]  DEFAULT ((0)) FOR [KebaB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_KebaE]  DEFAULT ((0)) FOR [KebaE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_StainB]  DEFAULT ((0)) FOR [StainB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_StainE]  DEFAULT ((0)) FOR [StainE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_PaperTubeB]  DEFAULT ((0)) FOR [PaperTubeB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_PaperTubeE]  DEFAULT ((0)) FOR [PaperTubeE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_YarnNoB]  DEFAULT ((0)) FOR [YarnNoB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_YarnNoE]  DEFAULT ((0)) FOR [YarnNoE]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_BBMarkB]  DEFAULT ((0)) FOR [BBMarkB]
GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_BBMarkE]  DEFAULT ((0)) FOR [BBMarkE]
GO



/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  Table [dbo].[PCTwist1Operation]    Script Date: 9/11/2023 7:00:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PCTwist1Operation](
	[PCTwist1OpId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[ProductionDate] [datetime] NULL,
	[TestFlag] [bit] NULL,
	[DoffNo] [int] NULL,
	[UnitWeight] [decimal](18, 3) NULL,
	[OutputCH] [decimal](18, 3) NULL,
	[ProductWeight] [decimal](18, 3) NULL,
	[WasteWeight] [decimal](18, 3) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_PCTwist1Operation] PRIMARY KEY CLUSTERED 
(
	[PCTwist1OpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-09-04  ***********/
ALTER VIEW PCCardView
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
         , PD.TreatRoute
         , PD.TwistSpec
         , PC.ProductLotNo
         , PC.TargetQty
         , PC.FinishFlag
         , PC.DeleteFlag
      FROM PCCard PC 
           LEFT OUTER JOIN Customer CM ON PC.CustomerId = CM.CustomerId
           LEFT OUTER JOIN Product PD ON LTRIM(RTRIM(PC.ProductCode)) = LTRIM(RTRIM(PD.ProductCode))

GO


/*********** Script Update Date: 2023-09-04  ***********/
ALTER VIEW PCTwist1View
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
         , PC.TreatRoute
         , PC.TwistSpec
         , PC.ProductLotNo
         , PC.TargetQty
      FROM PCTwist1 T1 
           LEFT OUTER JOIN PCCardView PC ON T1.PCId = PC.PCId

GO


/*********** Script Update Date: 2023-09-04  ***********/
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


/*********** Script Update Date: 2023-09-04  ***********/
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
ALTER PROCEDURE [dbo].[GetProducts]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductId
         , ProductCode
         , ProductName
         , CordStructure
         , TreatRoute
         , TwistSpec
      FROM Product
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetConditionStds]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetConditionStds
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetConditionStds NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetConditionStds]
(
  @ProcessName nvarchar(30)
, @ProductCode nvarchar(30)
, @ParamName nvarchar(50) = NULL
)
AS
BEGIN
    SELECT ProcessName
         , ProductCode
         , ParamName
         , ParamType
         , SC
         , StdValueS
         , StdValueD
         , StdValueE
         , StdValueB
      FROM ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProcessName))) = UPPER(LTRIM(RTRIM(@ProcessName)))
       AND UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(@ProductCode)))
       AND UPPER(LTRIM(RTRIM(ParamName))) = UPPER(LTRIM(RTRIM(COALESCE(@ParamName, ParamName))))
     ORDER BY ProcessName, ProductCode, ParamName

END

GO


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[SaveConditionStd]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================

CREATE PROCEDURE [dbo].[SaveConditionStd] (
  @ProcessName nvarchar(30)
, @ProductCode nvarchar(30)
, @ParamName nvarchar(50)
, @ParamType int = 1
, @SC bit = 0
, @StdValueS nvarchar(100) = NULL
, @StdValueD decimal(18, 3) = NULL
, @StdValueE decimal(18, 3) = NULL
, @StdValueB bit = NULL
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ConditionStd 
                    WHERE ProcessName = @ProcessName
                      AND ProductCode = @ProductCode
                      AND ParamName = @ParamName)
        BEGIN
            UPDATE ConditionStd 
               SET ParamType = @ParamType
                 , SC = @SC
                 , StdValueS = @StdValueS
                 , StdValueD = @StdValueD
                 , StdValueE = @StdValueE
                 , StdValueB = @StdValueB
             WHERE ProcessName = @ProcessName
               AND ProductCode = @ProductCode
               AND ParamName = @ParamName
        END
        ELSE
        BEGIN
			INSERT INTO ConditionStd
		    (
                  ProcessName
                , ProductCode
                , ParamName
                , ParamType
                , SC
                , StdValueS
                , StdValueD
                , StdValueE
                , StdValueB
			)
			VALUES
			(
                  @ProcessName
                , @ProductCode
                , @ParamName
                , @ParamType
                , @SC
                , @StdValueS
                , @StdValueD
                , @StdValueE
                , @StdValueB
			);
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


/*********** Script Update Date: 2023-09-04  ***********/
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
ALTER PROCEDURE [dbo].[GetPCTwist1s]
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
         , TwistSpec
         , ProductLotNo
         , ProductLotNo
         , TargetQty
      FROM PCTwist1View
     WHERE UPPER(LTRIM(RTRIM(MCCode))) = UPPER(LTRIM(RTRIM(COALESCE(@MCCode, MCCode))))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY PCDate;

END

GO


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[SaveTwist1LoadRecord]    Script Date: 9/11/2023 0:44:35 ******/
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
ALTER PROCEDURE [dbo].[SaveTwist1LoadRecord] (
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
DECLARE @LastNo int;
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

			IF (@TestFlag = 0)
			BEGIN
				SELECT LastDoffNo = @LastNo FROM PCTwist1 WHERE PCTwist1Id = @PCTwist1Id
				IF (@LastNo IS NULL) SET @LastNo = 0
				UPDATE PCTwist1
				   SET LastDoffNo = @LastNo + 1
				 WHERE PCTwist1Id = @PCTwist1Id
			END
			ELSE
			BEGIN
				SELECT LastTestNo = @LastNo FROM PCTwist1 WHERE PCTwist1Id = @PCTwist1Id
				IF (@LastNo IS NULL) SET @LastNo = 0
				UPDATE PCTwist1
				   SET LastTestNo = @LastNo + 1
				 WHERE PCTwist1Id = @PCTwist1Id
			END
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


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetTwist1LoadRecordItems]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetTwist1LoadRecordItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetTwist1LoadRecordItems NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetTwist1LoadRecordItems]
(
  @Twist1LoadId int = NULL
)
AS
BEGIN
    SELECT Twist1LoadId
         , SPNo
         , DeckNo
         , PalletNo
         , TraceNo
         , YarnBarcode
      FROM Twist1LoadRecordItem
     WHERE Twist1LoadId = COALESCE(@Twist1LoadId, Twist1LoadId)
     ORDER BY Twist1LoadId, SPNo, DeckNo;
END

GO


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[SaveTwist1LoadRecordItem]    Script Date: 9/11/2023 0:44:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveTwist1LoadRecordItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveTwist1LoadRecordItem] (
  @Twist1LoadId int
, @SPNo int
, @DeckNo int
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @YarnBarcode nvarchar(100)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Twist1LoadRecordItem 
                    WHERE Twist1LoadId = @Twist1LoadId
                      AND SPNo = @SPNo
                      AND DeckNo = @DeckNo)
        BEGIN
            UPDATE Twist1LoadRecordItem 
               SET PalletNo = @PalletNo
                 , TraceNo = @TraceNo
                 , YarnBarcode = @YarnBarcode
             WHERE Twist1LoadId = @Twist1LoadId
               AND SPNo = @SPNo
               AND DeckNo = @DeckNo
        END
        ELSE
        BEGIN
			INSERT INTO Twist1LoadRecordItem
		    (
                  Twist1LoadId
                , SPNo
                , DeckNo
                , PalletNo
                , TraceNo
                , YarnBarcode
			)
			VALUES
			(
                  @Twist1LoadId
                , @SPNo
                , @DeckNo
                , @PalletNo
                , @TraceNo
                , @YarnBarcode
			);
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


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetRawMaterialSummaries]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSummaries
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetRawMaterialSummaries NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetRawMaterialSummaries]
(
  @PCTwist1Id int
)
AS
BEGIN
		SELECT DISTINCT
		       A.Twist1LoadId
			 , A.PCTwist1Id
		     , A.ProductionDate
		     , A.ItemYarn
			 , B.PalletNo
			 , B.TraceNo
			 , COUNT(TraceNo) AS InputCH
			 , MIN(B.SPNo) AS SPNoMax
			 , MAX(B.SPNo) AS SPNoMin
		     , A.DoffNo
             , A.Keiba
             , A.Traverse
             , A.Crossing
             , A.ScrapeTube
             , A.Form
             , A.Stain
			 , A.ShiftName
             , A.Chief
             , A.Remark
        FROM Twist1LoadRecord A, Twist1LoadRecordItem B
       WHERE B.Twist1LoadId = A.Twist1LoadId
         AND A.PCTwist1Id =  @PCTwist1Id
       GROUP BY A.Twist1LoadId
              , A.PCTwist1Id
		      , A.ProductionDate
			  , A.ItemYarn
	          , B.PalletNo
			  , B.TraceNo
		      , A.DoffNo
              , A.Keiba
              , A.Traverse
              , A.Crossing
              , A.ScrapeTube
              , A.Form
              , A.Stain
			  , A.ShiftName
              , A.Chief
              , A.Remark

END

GO


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[GetTwist1CheckSheets]    Script Date: 8/17/2023 8:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetTwist1CheckSheets
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetTwist1CheckSheets NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetTwist1CheckSheets]
(
  @Twist1LoadId int = NULL
)
AS
BEGIN
    SELECT Twist1LoadId
         , SPNo
         , RawB
         , RawE
         , CrossB
         , CrossE
         , FormB
         , FormE
         , KebaB
         , KebaE
         , StainB
         , StainE
         , PaperTubeB
         , PaperTubeE
         , YarnNoB
         , YarnNoE
         , BBMarkB
         , BBMarkE
      FROM Twist1CheckSheet
     WHERE Twist1LoadId = COALESCE(@Twist1LoadId, Twist1LoadId)
     ORDER BY Twist1LoadId, SPNo;
END

GO


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[SaveTwist1CheckSheet]    Script Date: 9/11/2023 0:44:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveTwist1CheckSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveTwist1CheckSheet] (
  @Twist1LoadId int
, @SPNo int
, @RawB bit
, @RawE bit
, @CrossB bit
, @CrossE bit
, @FormB bit
, @FormE bit
, @KebaB bit
, @KebaE bit
, @StainB bit
, @StainE bit
, @PaperTubeB bit
, @PaperTubeE bit
, @YarnNoB bit
, @YarnNoE bit
, @BBMarkB bit
, @BBMarkE bit
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Twist1CheckSheet 
                    WHERE Twist1LoadId = @Twist1LoadId
                      AND SPNo = @SPNo)
        BEGIN
            UPDATE Twist1CheckSheet 
               SET RawB = @RawB
                 , RawE = @RawE
                 , CrossB = @CrossB
                 , CrossE = @CrossE
                 , FormB = @FormB
                 , FormE = @FormE
                 , KebaB = @KebaB
                 , KebaE = @KebaE
                 , StainB = @StainB
                 , StainE = @StainE
                 , PaperTubeB = @PaperTubeB
                 , PaperTubeE = @PaperTubeE
                 , YarnNoB = @YarnNoB
                 , YarnNoE = @YarnNoE
                 , BBMarkB = @BBMarkB
                 , BBMarkE = @BBMarkE
             WHERE Twist1LoadId = @Twist1LoadId
               AND SPNo = @SPNo
        END
        ELSE
        BEGIN
			INSERT INTO Twist1CheckSheet
		    (
                  Twist1LoadId
                , SPNo
                , RawB
                , RawE
                , CrossB
                , CrossE
                , FormB
                , FormE
                , KebaB
                , KebaE
                , StainB
                , StainE
                , PaperTubeB
                , PaperTubeE
                , YarnNoB
                , YarnNoE
                , BBMarkB
                , BBMarkE
			)
			VALUES
			(
                  @Twist1LoadId
                , @SPNo
                , @RawB
                , @RawE
                , @CrossB
                , @CrossE
                , @FormB
                , @FormE
                , @KebaB
                , @KebaE
                , @StainB
                , @StainE
                , @PaperTubeB
                , @PaperTubeE
                , @YarnNoB
                , @YarnNoE
                , @BBMarkB
                , @BBMarkE
			);
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


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[StartTwist1Ops]    Script Date: 9/11/2023 0:44:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	StartTwist1Ops
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[StartTwist1Ops] (
  @PCTwist1Id int
, @ProductionDate datetime
, @TestFlag bit
, @DoffNo int
, @StartTime datetime
, @PCTwist1OpId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PCTwist1Operation WHERE PCTwist1OpId = @PCTwist1OpId)
        BEGIN
            UPDATE PCTwist1Operation 
               SET PCTwist1Id = @PCTwist1Id
                 , ProductionDate = @ProductionDate
                 , TestFlag = @TestFlag
                 , DoffNo = @DoffNo
                 , StartTime = @StartTime
             WHERE PCTwist1OpId = @PCTwist1OpId
        END
        ELSE
        BEGIN
			INSERT INTO PCTwist1Operation
		    (
                  PCTwist1Id
                , ProductionDate
                , TestFlag
                , DoffNo
                , StartTime
			)
			VALUES
			(
                  @PCTwist1Id
                , @ProductionDate
                , @TestFlag
                , @DoffNo
                , @StartTime
			);

			SET @PCTwist1OpId = @@IDENTITY;
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


/*********** Script Update Date: 2023-09-04  ***********/
/****** Object:  StoredProcedure [dbo].[EndTwist1Ops]    Script Date: 9/11/2023 0:44:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	EndTwist1Ops
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[EndTwist1Ops] (
  @PCTwist1Id int
, @ProductionDate datetime
, @TestFlag bit
, @DoffNo int
, @UnitWeight decimal(18,3)
, @OutputCH decimal(18,3)
, @ProductWeight decimal(18,3)
, @WasteWeight decimal(18,3)
, @EndTime datetime
, @Remark nvarchar(100)
, @PCTwist1OpId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM PCTwist1Operation WHERE PCTwist1OpId = @PCTwist1OpId)
        BEGIN
            UPDATE PCTwist1Operation 
               SET PCTwist1Id = @PCTwist1Id
                 , ProductionDate = @ProductionDate
                 , TestFlag = @TestFlag
                 , DoffNo = @DoffNo
                 , UnitWeight = @UnitWeight
                 , OutputCH = @OutputCH
                 , ProductWeight = @ProductWeight
                 , WasteWeight = @WasteWeight
                 , EndTime = @EndTime
                 , [Remark] = @Remark
             WHERE PCTwist1OpId = @PCTwist1OpId
        END
        ELSE
        BEGIN
			INSERT INTO PCTwist1Operation
		    (
                  PCTwist1Id
                , ProductionDate
                , TestFlag
                , DoffNo
                , UnitWeight
                , OutputCH
                , ProductWeight
                , WasteWeight
                , EndTime
                , [Remark]
			)
			VALUES
			(
                  @PCTwist1Id
                , @ProductionDate
                , @TestFlag
                , @DoffNo
                , @UnitWeight
                , @OutputCH
                , @ProductWeight
                , @WasteWeight
                , @EndTime
                , @Remark
			);

			SET @PCTwist1OpId = @@IDENTITY;
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


/*********** Script Update Date: 2023-09-04  ***********/
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
CREATE PROCEDURE [dbo].[GetTwist1Opts]
(
  @PCTwist1Id int = NULL
)
AS
BEGIN
    SELECT *
      FROM PCTwist1Operation
     WHERE PCTwist1Id = @PCTwist1Id

END

GO


/*********** Script Update Date: 2023-09-04  ***********/
-- INIT TWIST SPEC
UPDATE Product SET TwistSpec = N'164.0 ± 22 (S) x 95.0 ± 14 (Z) T/M' WHERE ProductCode = N'9A0663L'
UPDATE Product SET TwistSpec = N'165.0 ± 17 (S) x 83.0 ± 12 (Z) T/M' WHERE ProductCode = N'9A1100L'
UPDATE Product SET TwistSpec = N'164.0 ± 22.0 (Z) x 95.0 ± 14.0 (S) T/M' WHERE ProductCode = N'9H0663SL'
UPDATE Product SET TwistSpec = N'210.0 ± 20.0 (S) x 114.0 ± 11.0 (Z) T/M' WHERE ProductCode = N'R10023'
UPDATE Product SET TwistSpec = N'75.0 ± 15.0 (S) T/M' WHERE ProductCode = N'1800TW'
UPDATE Product SET TwistSpec = N'60.0 ± 10.0 (S) T/M' WHERE ProductCode = N'H1671T'
UPDATE Product SET TwistSpec = N'60.0(S) ± 12 T/M' WHERE ProductCode = N'KT3R16'
UPDATE Product SET TwistSpec = N'120.0 ± 15.0 (S) T/M' WHERE ProductCode = N'KT3S71'
UPDATE Product SET TwistSpec = N'80.0 ± 10.0 (S) T/M' WHERE ProductCode = N'P1100TT'
UPDATE Product SET TwistSpec = N'90.0 (Z) T/M' WHERE ProductCode = N'P1100ZFT'
UPDATE Product SET TwistSpec = N'45.0 ± 20.0 (S) T/M' WHERE ProductCode = N'P1402TRH'
UPDATE Product SET TwistSpec = N'150.0 ± 10.0 (S) T/M' WHERE ProductCode = N'P1670T1R'
UPDATE Product SET TwistSpec = N'125 ± 10 (Z) T/M' WHERE ProductCode = N'P1670ZFT'
UPDATE Product SET TwistSpec = N'80.0 ± 10.0 (S) T/M' WHERE ProductCode = N'P1671TT'
GO

-- INIT TREAT ROUTE
UPDATE Product SET TreatRoute = N'S-1 → S-2 → S-3 → S-24' WHERE ProductCode = N'9A0663L'
UPDATE Product SET TreatRoute = N'S-1 → S-2 → S-3 → S-24' WHERE ProductCode = N'9A1100L'
UPDATE Product SET TreatRoute = N'S-1 → S-2 → S-3 → S-24' WHERE ProductCode = N'9H0663SL'
UPDATE Product SET TreatRoute = N'S-1 → S-2 → S-3 → S-24' WHERE ProductCode = N'R10023'
UPDATE Product SET TreatRoute = N'S-5 → S-1 → S-13 → S -8 → S-24' WHERE ProductCode = N'1800TW'
UPDATE Product SET TreatRoute = N'S-4 → S-5 → S-8 → S-24' WHERE ProductCode = N'H1671T'
UPDATE Product SET TreatRoute = N'S-1 → S-13 → S-8 → S-24' WHERE ProductCode = N'KT3R16'
UPDATE Product SET TreatRoute = N'S-1 → S-13 → S-8 → S-24' WHERE ProductCode = N'KT3S71'
UPDATE Product SET TreatRoute = N'S-4 → S-5 → S-13 → S-8 → S-24' WHERE ProductCode = N'P1100TT'
UPDATE Product SET TreatRoute = N'S-1 → S-13 → S-8 → S-24' WHERE ProductCode = N'P1100ZFT'
UPDATE Product SET TreatRoute = N'S-1 → S-13 → S-8 → S-24' WHERE ProductCode = N'P1402TRH'
UPDATE Product SET TreatRoute = N'S-1 → S-13 → S-8 → S-24' WHERE ProductCode = N'P1670T1R'
UPDATE Product SET TreatRoute = N'-' WHERE ProductCode = N'P1670ZFT'
UPDATE Product SET TreatRoute = N'S-4 → S-5 → S-8 → S-24' WHERE ProductCode = N'P1671TT'
GO


/*********** Script Update Date: 2023-09-04  ***********/
/*
-- S1
DECLARE @ProcessName nvarchar(30)
DECLARE @ProductCode nvarchar(30)
DECLARE @ParamName nvarchar(50)
-- 1 = String, 2 = Single Value, 3 = Value with err range
DECLARE @ParamType int 
DECLARE @SC bit
DECLARE @StdValueS nvarchar(100)
DECLARE @StdValueD decimal(18,3)
DECLARE @StdValueE decimal(18,3)

-- 9A0663L
SET @processName = N'S-1'
SET @ProductCode = N'9A0663L'
BEGIN
    SET @ParamName = N'RingDia'
    SET @ParamType = 1 
    SET @SC = 0
    SET @StdValueS = N'8 1/2" R x 14" L'
    SET @StdValueD = NULL
    SET @StdValueE = NULL

    EXEC SaveConditionStd @ProcessName, @ProductCode , @ParamName, @ParamType, @SC, @StdValueS, @StdValueD, @StdValueE
END

BEGIN
    SET @ParamName = N'TwistGearI'
    SET @ParamType = 2 
    SET @SC = 1
    SET @StdValueS = NULL
    SET @StdValueD = 41
    SET @StdValueE = NULL

    EXEC SaveConditionStd @ProcessName, @ProductCode , @ParamName, @ParamType, @SC, @StdValueS, @StdValueD, @StdValueE

    SET @ParamName = N'TwistGearJ'
    SET @ParamType = 2 
    SET @SC = 1
    SET @StdValueS = NULL
    SET @StdValueD = 45
    SET @StdValueE = NULL

    EXEC SaveConditionStd @ProcessName, @ProductCode , @ParamName, @ParamType, @SC, @StdValueS, @StdValueD, @StdValueE

    SET @ParamName = N'TwistGearK'
    SET @ParamType = 2 
    SET @SC = 1
    SET @StdValueS = NULL
    SET @StdValueD = 83
    SET @StdValueE = NULL

    EXEC SaveConditionStd @ProcessName, @ProductCode , @ParamName, @ParamType, @SC, @StdValueS, @StdValueD, @StdValueE
END

GO
*/
