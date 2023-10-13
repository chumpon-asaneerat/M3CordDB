/*********** Script Update Date: 2023-10-13  ***********/


/*********** Script Update Date: 2023-10-13  ***********/
DROP PROCEDURE GetTwist1CheckSheets
GO

DROP PROCEDURE SaveTwist1CheckSheet
GO

EXEC DropTable N'Twist1CheckSheet'
GO


/*********** Script Update Date: 2023-10-13  ***********/
/****** Object:  Table [dbo].[Twist1CheckSheet]    Script Date: 10/13/2023 13:47:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1CheckSheet](
	[Twist1CheckId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[ProductionDate] [datetime] NULL,
	[ConditionDate] [datetime] NULL,
	[TestFlag] [bit] NULL,
	[DoffNo] [int] NULL,
	[ItemYarn] [nvarchar](30) NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserName] [nvarchar](100) NULL,
	[Chief] [nvarchar](100) NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_Twist1CheckSheet] PRIMARY KEY CLUSTERED 
(
	[Twist1CheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Twist1CheckSheet] ADD  CONSTRAINT [DF_Twist1CheckSheet_TestFlag]  DEFAULT ((0)) FOR [TestFlag]
GO




/*********** Script Update Date: 2023-10-13  ***********/
-- Twist1LoadRecord
ALTER TABLE Twist1LoadRecord ADD UserName nvarchar(100)
GO


/*********** Script Update Date: 2023-10-13  ***********/
/****** Object:  StoredProcedure [dbo].[SearchWarehousePallet]    Script Date: 10/11/2023 9:28:47 ******/
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
ALTER PROCEDURE [dbo].[SearchWarehousePallet]
(
  @TraceNo nvarchar(30) = NULL,
  @ItemYarn nvarchar(30) = NULL
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
     WHERE I.PalletNo = Y.PalletNo
	   AND UPPER(LTRIM(RTRIM(I.TraceNo))) = UPPER(LTRIM(RTRIM(@TraceNo)))
	   AND UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(@ItemYarn)))
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
       AND (I.WHReceiveFlag = 1)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-10-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetTwist1CheckSheets]    Script Date: 10/13/2023 11:37:20 ******/
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
  @PCTwist1Id int = NULL
, @Twist1CheckId int = NULL
)
AS
BEGIN
    SELECT Twist1CheckId
         , PCTwist1Id
         , ProductionDate
         , ConditionDate
         , TestFlag
         , DoffNo
         , ItemYarn
         , ShiftName
         , UserName
         , Chief
         , [Remark]
      FROM Twist1CheckSheet
     WHERE PCTwist1Id = COALESCE(@PCTwist1Id, PCTwist1Id)
       AND Twist1CheckId = COALESCE(@Twist1CheckId, Twist1CheckId)
     ORDER BY Twist1CheckId
END

GO


/*********** Script Update Date: 2023-10-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveTwist1CheckSheet]    Script Date: 10/13/2023 12:03:06 ******/
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
  @PCTwist1Id int
, @ProductionDate datetime  
, @ConditionDate datetime  
, @TestFlag bit
, @DoffNo int
, @ItemYarn nvarchar(30)
, @ShiftName nvarchar(10)
, @UserName nvarchar(100)
, @Chief nvarchar(100)
, @Remark nvarchar(100)
, @Twist1CheckId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Twist1CheckSheet 
                    WHERE Twist1CheckId = @Twist1CheckId)
        BEGIN
            UPDATE Twist1CheckSheet 
               SET PCTwist1Id = @PCTwist1Id
                 , ProductionDate = @ProductionDate
                 , ConditionDate = @ConditionDate
                 , TestFlag = @TestFlag
                 , DoffNo = @DoffNo
                 , ItemYarn = @ItemYarn
                 , ShiftName = @ShiftName
                 , UserName = @UserName
                 , Chief = @Chief
                 , [Remark] = @Remark
             WHERE Twist1CheckId = @Twist1CheckId
        END
        ELSE
        BEGIN
			INSERT INTO Twist1CheckSheet
		    (
                  PCTwist1Id
                , ProductionDate
                , ConditionDate
                , TestFlag
                , DoffNo
                , ItemYarn
                , ShiftName
                , UserName
                , Chief
                , [Remark]
			)
			VALUES
			(
                  @PCTwist1Id
                , @ProductionDate
                , @ConditionDate
                , @TestFlag
                , @DoffNo
                , @ItemYarn
                , @ShiftName
                , @UserName
                , @Chief
                , @Remark
			);

			SET @Twist1CheckId = @@IDENTITY;
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


/*********** Script Update Date: 2023-10-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetTwist1LoadRecords]    Script Date: 10/13/2023 13:57:11 ******/
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
ALTER PROCEDURE [dbo].[GetTwist1LoadRecords]
(
  @PCTwist1Id int = NULL 
, @Twist1LoadId int = NULL 
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
         , UserName
         , Chief
         , [Remark]
         , Keiba
         , Traverse
         , Crossing
         , ScrapeTube
         , Form
         , Stain
      FROM Twist1LoadRecord
     WHERE PCTwist1Id = COALESCE(@PCTwist1Id, PCTwist1Id)
       AND Twist1LoadId = COALESCE(@Twist1LoadId, Twist1LoadId)
     ORDER BY ProductionDate;

END

GO


/*********** Script Update Date: 2023-10-13  ***********/
/****** Object:  StoredProcedure [dbo].[SaveTwist1LoadRecord]    Script Date: 10/13/2023 13:58:50 ******/
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
, @UserName nvarchar(100)
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
                 , UserName = @UserName
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
                , UserName
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
                , @UserName
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


/*********** Script Update Date: 2023-10-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetRawMaterialSummaries]    Script Date: 10/13/2023 14:03:27 ******/
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
ALTER PROCEDURE [dbo].[GetRawMaterialSummaries]
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
			 , MIN(B.SPNo) AS SPNoMin
			 , MAX(B.SPNo) AS SPNoMax
		     , A.DoffNo
             , A.Keiba
             , A.Traverse
             , A.Crossing
             , A.ScrapeTube
             , A.Form
             , A.Stain
			 , A.ShiftName
             , A.UserName
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
              , A.UserName
              , A.Chief
              , A.Remark

END

GO


/*********** Script Update Date: 2023-10-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetLastTwist1Op]    Script Date: 10/13/2023 14:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetLastTwist1Op
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetLastTwist1Op NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetLastTwist1Op]
(
  @PCTwist1Id int
)
AS
BEGIN
    SELECT TOP 1 
          PCTwist1OpId
        , PCTwist1Id
        , ProductionDate
        , TestFlag
        , DoffNo
        , UnitWeight
        , OutputCH
        , ProductWeight
        , WasteWeight
        , StartTime
        , EndTime
        , [Remark] 
     FROM PCTwist1Operation
    WHERE PCTwist1Id = @PCTwist1Id
    ORDER BY PCTwist1OpId DESC

END

GO


/*********** Script Update Date: 2023-10-13  ***********/
/****** Object:  StoredProcedure [dbo].[GetTwist1CheckSheetItems]    Script Date: 10/13/2023 15:31:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetTwist1CheckSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetTwist1CheckSheetItems NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetTwist1CheckSheetItems]
(
  @Twist1CheckId int = NULL
)
AS
BEGIN
    SELECT Twist1CheckId
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
      FROM Twist1CheckSheetItem
     WHERE Twist1CheckId = @Twist1CheckId
     ORDER BY Twist1CheckId, SPNo;
END

GO

