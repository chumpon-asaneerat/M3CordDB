/*********** Script Update Date: 2023-07-09  ***********/


/*********** Script Update Date: 2023-07-09  ***********/
ALTER TABLE G4Yarn ADD DirectionNo nvarchar(30)

/*********** Script Update Date: 2023-07-09  ***********/
ALTER TABLE G4IssueYarn ADD UsedCH decimal(16, 0)

/*********** Script Update Date: 2023-07-09  ***********/
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


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  View [dbo].[UserInfoView]    Script Date: 11/27/2022 10:10:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW G4YarnView
AS
	SELECT A.G4YarnPkId
	     , A.EntryDate
	     , A.TraceNo
	     , A.PalletNo
		 , A.LotNo
		 , A.ItemYarn
		 , A.PalletType
		 , A.Item400
		 , A.ConeCH
		 , A.Unit
		 , A.KgPerCH
		 , A.WeightQty
		 , A.RemainQty
		 , A.ReceiveDate
		 , A.ReceiveBy
		 , A.UpdateDate
		 , A.MovementDate
         , A.ExpiredDate
         , A.DirectionNo
		 , A.Verify
		 , A.Packing
		 , A.Clean
		 , A.Tearing
		 , A.Falldown
		 , A.Certification
		 , A.Invoice
		 , A.IdentifyArea
		 , A.AmountPallet
		 , A.Other
		 , A.[Action]
		 , A.FinishFlag
		 , A.UpdateFlag
		 , A.DeleteFlag
		 , B.RoleId
		 , B.RoleName
		 , B.FullName AS ReceiveByFullName
		 , B.UserName AS ReceiveByUserName
	  FROM G4Yarn A LEFT OUTER JOIN UserInfoView B ON A.ReceiveBy = B.UserID

GO


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[SaveG4Yarn]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveG4Yarn
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveG4Yarn] (
  @EntryDate datetime
, @ItemYarn nvarchar(30)
, @PalletNo nvarchar(30)
, @WeightQty decimal(16, 3)
, @LotNo nvarchar(30)
, @TraceNo nvarchar(30)
, @KgPerCH decimal(16, 3)
, @ConeCH decimal(16, 3)
, @PalletType nvarchar(30)
, @Item400 nvarchar(30)
, @Unit nvarchar(20)
, @RemainQty decimal(16, 3)
, @ReceiveDate datetime
, @ReceiveBy int
, @UpdateDate datetime
, @MovementDate datetime
, @ExpiredDate datetime
, @DirectionNo nvarchar(30)
, @Verify bit
, @Packing bit
, @Clean bit
, @Tearing bit
, @Falldown bit
, @Certification bit
, @Invoice bit
, @IdentifyArea bit
, @AmountPallet bit
, @Other nvarchar(1000)
, @Action nvarchar(1000)
, @FinishFlag bit
, @UpdateFlag bit
, @DeleteFlag bit
, @G4YarnPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM G4Yarn WHERE G4YarnPkId = @G4YarnPkId)
        BEGIN
            UPDATE G4Yarn 
               SET EntryDate = @EntryDate
                 , ItemYarn = @ItemYarn
                 , PalletNo = @PalletNo
                 , WeightQty = @WeightQty
                 , LotNo = @LotNo
                 , TraceNo = @TraceNo
                 , KgPerCH = @KgPerCH
                 , ConeCH = @ConeCH
                 , PalletType = @PalletType
                 , Item400 = @Item400
                 , Unit = @Unit
                 , RemainQty = @RemainQty
                 , ReceiveDate = @ReceiveDate
                 , ReceiveBy = @ReceiveBy
                 , UpdateDate = @UpdateDate
                 , MovementDate = @MovementDate
                 , ExpiredDate = @ExpiredDate
                 , DirectionNo = @DirectionNo
                 , Verify = @Verify
                 , Packing = @Packing
                 , Clean = @Clean
                 , Tearing = @Tearing
                 , Falldown = @Falldown
                 , Certification = @Certification
                 , Invoice = @Invoice
                 , IdentifyArea = @IdentifyArea
                 , AmountPallet = @AmountPallet
                 , Other = @Other
                 , [Action] = @Action
                 , FinishFlag = @FinishFlag
                 , UpdateFlag = @UpdateFlag
                 , DeleteFlag = @DeleteFlag
             WHERE G4YarnPkId = @G4YarnPkId
        END
        ELSE
        BEGIN
			INSERT INTO G4Yarn
		    (
                  EntryDate
                , ItemYarn
                , PalletNo
                , WeightQty
                , LotNo
                , TraceNo
                , KgPerCH
                , ConeCH
                , PalletType
                , Item400
                , Unit
                , RemainQty
                , ReceiveDate
                , ReceiveBy
                , UpdateDate
                , MovementDate
                , ExpiredDate
                , DirectionNo
                , Verify
                , Packing
                , Clean
                , Tearing
                , Falldown
                , Certification
                , Invoice
                , IdentifyArea
                , AmountPallet
                , Other
                , [Action]
                , FinishFlag
                , UpdateFlag
                , DeleteFlag
			)
			VALUES
			(
                  @EntryDate
                , @ItemYarn
                , @PalletNo
                , @WeightQty
                , @LotNo
                , @TraceNo
                , @KgPerCH
                , @ConeCH
                , @PalletType
                , @Item400
                , @Unit
                , @RemainQty
                , @ReceiveDate
                , @ReceiveBy
                , @UpdateDate
                , @MovementDate
                , @ExpiredDate
                , @DirectionNo
                , @Verify
                , @Packing
                , @Clean
                , @Tearing
                , @Falldown
                , @Certification
                , @Invoice
                , @IdentifyArea
                , @AmountPallet
                , @Other
                , @Action
                , @FinishFlag
                , @UpdateFlag
                , @DeleteFlag
			);

			SET @G4YarnPkId = @@IDENTITY;
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


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[G4InsertUpdateIssueYarn]    Script Date: 5/31/2023 10:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	G4InsertUpdateIssueYarn
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
ALTER PROCEDURE [dbo].[G4InsertUpdateIssueYarn] (
  @RequestNo nvarchar(30)
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @WeightQty decimal(16, 3)
, @ConeCH decimal(16, 3)
, @PalletType nvarchar(30)
, @IssueDate datetime
, @IssueBy int
--, @G4IssueYarnPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @cnt int
DECLARE @G4YarnWeight decimal(16, 3)
DECLARE @G4RemainWeight decimal(16, 3)
DECLARE @RemainWeight decimal(16, 3)
DECLARE @NewPalletType nvarchar(30)
DECLARE @FinishFlag bit
    BEGIN TRY
		IF (
		       @PalletNo IS NULL 
		    OR @TraceNo IS NULL 
			OR @WeightQty IS NULL
			OR @ConeCH IS NULL
			--OR @PalletType IS NULL
		)
		BEGIN
			-- Update Error Status/Message
			SET @errNum = 101;
			SET @errMsg = 'Paramter(s) is null.';
			RETURN;
		END

        SELECT @cnt = COUNT(*) 
          FROM G4IssueYarn
         WHERE RequestNo = @RequestNo
           AND PalletNo = @PalletNo
           AND (DeleteFlag IS NULL OR DeleteFlag = 0)
        IF (@cnt = 0)
        BEGIN
            -- NO ISSUE YARN FOUND. SO INSERT NEW ONE
            INSERT INTO G4IssueYarn
            (
                  RequestNo
                , IssueDate
                , IssueBy
                , PalletNo
                , TraceNo
                , WeightQty
                , ConeCH
                , PalletType
                , DeleteFlag
            )
            VALUES
            (
                  @RequestNo
                , @IssueDate
                , @IssueBy
                , @PalletNo
                , @TraceNo
                , @WeightQty
                , @ConeCH
                , @PalletType
                , 0 -- DeleteFlag = 0 (Not delete)
            )
            -- NOW CALCULATE WEIGHT
            SELECT @G4YarnWeight = WeightQty
              FROM G4Yarn
             WHERE PalletNo = @PalletNo;
            
            IF (@G4YarnWeight = @WeightQty)
            BEGIN
                SET @RemainWeight = 0
                SET @FinishFlag = 1 -- SET FLAG THAT PALLET IS FINISH
                SET @NewPalletType = NULL
            END
            ELSE
            BEGIN
                SET @RemainWeight = @G4YarnWeight - @WeightQty
                SET @FinishFlag = NULL
                SET @NewPalletType = N'H'
            END
            -- UPDATE CALCULATE WEIGHT AND FLAGS
            UPDATE G4Yarn
               SET RemainQty = @RemainWeight
                 , FinishFlag = COALESCE(@FinishFlag, FinishFlag)
                 , PalletType = COALESCE(@NewPalletType, PalletType)
                 , UpdateDate = COALESCE(@IssueDate, UpdateDate)
             WHERE PalletNo = @PalletNo
        END
        ELSE
        BEGIN
            -- ISSUE YARN FOUND. SO CANCEL YARN FROM Request No.
            UPDATE G4IssueYarn
               SET DeleteFlag = 1 -- Set flag = 1 (Deleted)
                 , [Remark] = N'Cancel Pallet'
                 , EditDate = GETDATE()
                 , EditBy = COALESCE(@IssueBy, EditBy)
             WHERE RequestNo = @RequestNo
               AND PalletNo = @PalletNo

            -- NOW CALCULATE WEIGHT
            SELECT @G4YarnWeight = WeightQty
                 , @G4RemainWeight = RemainQty
              FROM G4Yarn
             WHERE PalletNo = @PalletNo;

            IF (@G4RemainWeight IS NULL) 
            BEGIN
                -- PREVENT CALCULATION ERROR WITH NULL VALUE
                SET @G4RemainWeight = 0
            END

            SET @RemainWeight = @G4RemainWeight + @WeightQty

            IF (@G4YarnWeight = @RemainWeight)
            BEGIN
                SET @NewPalletType = N'F'
            END
            ELSE
            BEGIN
                SET @NewPalletType = N'H'
            END
            -- UPDATE CALCULATE WEIGHT AND FLAGS
            UPDATE G4Yarn
               SET RemainQty = @RemainWeight
                 , FinishFlag = 0 -- SET FLAG THAT PALLET IS NOT FINISH
                 , PalletType = COALESCE(@NewPalletType, PalletType)
                 , UpdateDate = GETDATE()
             WHERE PalletNo = @PalletNo
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


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetG4ReceiveYarnInStock]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetG4ReceiveYarnInStock
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetG4ReceiveYarnInStock NULL, NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetG4ReceiveYarnInStock]
(
  @ItemYarn nvarchar(30) = NULL
, @ReceiveDate datetime = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, ReceiveDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @ReceiveDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, ReceiveDate)))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       --AND (FinishFlag IS NULL OR FinishFlag = 0)
END

GO


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[SearchG4YarnStock]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchG4YarnStock
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchG4YarnStock NULL, NULL, NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchG4YarnStock]
(
  @ItemYarn nvarchar(30) = NULL
, @EntryDate datetime = NULL
)
AS
BEGIN
	SELECT *
	  FROM G4YarnView
	 WHERE UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, EntryDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @EntryDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, EntryDate)))
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
       AND (ReceiveDate IS NOT NULL)
END

GO


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetG4IssueYarns]    Script Date: 11/27/2022 9:58:05 PM ******/
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
-- EXEC GetG4IssueYarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetG4IssueYarns]
(
  @RequestNo nvarchar(30) = NULL
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
     WHERE UPPER(LTRIM(RTRIM(I.RequestNo))) = UPPER(LTRIM(RTRIM(COALESCE(@RequestNo, I.RequestNo))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.FinishFlag IS NULL OR I.FinishFlag = 0)
       AND (I.WHReceiveFlag IS NULL OR I.WHReceiveFlag = 0)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[SearchG4IssueYarns]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchG4IssueYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchG4IssueYarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchG4IssueYarns]
(
  @IssueDate datetime = NULL
, @ItemYarn nvarchar(30) = NULL
, @Item400 nvarchar(30) = NULL
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
         , I.WHReceiveDate
         , I.[Remark]
         , I.UsedCH
         , Y.G4YarnPkId -- FROM G4Yarn
	     , Y.EntryDate
		 , Y.LotNo
		 , Y.ItemYarn
		 , Y.Item400
		 , Y.ReceiveDate
		 , Y.ReceiveBy
         , Y.ExpiredDate
		 , Y.Verify
		 --, Y.Packing
		 --, Y.Clean
		 --, Y.Tearing
		 --, Y.Falldown
      FROM G4IssueYarn I, G4Yarn Y
     WHERE DATEADD(dd, 0, DATEDIFF(dd, 0, I.IssueDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @IssueDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, I.IssueDate)))
       AND UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, Y.ItemYarn))))
       AND UPPER(LTRIM(RTRIM(Y.Item400))) = UPPER(LTRIM(RTRIM(COALESCE(@Item400, Y.Item400))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.WHReceiveFlag IS NULL OR I.WHReceiveFlag = 0)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
       --AND (I.IssueDate IS NOT NULL)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[G4IssueYarnReceive]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	G4IssueYarnReceive
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[G4IssueYarnReceive] (
  @G4IssueYarnPkId int
, @Receive bit = 1
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM G4IssueYarn WHERE G4IssueYarnPkId = @G4IssueYarnPkId)
        BEGIN
            IF (@Receive = 1)
            BEGIN
                UPDATE G4IssueYarn 
                   SET WHReceiveFlag = @Receive
                     , WHReceiveDate = GETDATE()
                 WHERE G4IssueYarnPkId = @G4IssueYarnPkId
            END
            ELSE
            BEGIN
                UPDATE G4IssueYarn 
                   SET WHReceiveFlag = @Receive
                     , WHReceiveDate = NULL
                 WHERE G4IssueYarnPkId = @G4IssueYarnPkId
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


/*********** Script Update Date: 2023-07-09  ***********/
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

/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetFirstTwistMCs]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetFirstTwistMCs
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetFirstTwistMCs NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetFirstTwistMCs]
AS
BEGIN
    SELECT MCCode
         , ProcessName
         , DeckPerCore
         , StartCore
         , EndCore
      FROM FirstTwistMC
     ORDER BY ProcessName, MCCode;
END

GO


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetRawMaterialSheet]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSheet
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetRawMaterialSheet NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetRawMaterialSheet]
(
  @MCCode nvarchar(10)
)
AS
BEGIN
	SELECT RawMaterialSheetId
	     , MCCode
	     , CordProductPkId
         , ProductLotNo
         , CustomerCode
         , CustomerName
         , ItemYarn
         , ItemCode
         , Item400
         , Color
         , TargetQty
         , ActualQty
	     , DeleteFlag
		 , FinishFlag
      FROM RawMaterialSheetView
     WHERE UPPER(LTRIM(RTRIM(MCCode))) = UPPER(LTRIM(RTRIM(@MCCode)))
	   AND (DeleteFlag IS NULL OR DeleteFlag = 0)
	   AND (FinishFlag IS NULL OR FinishFlag = 0)
END

GO


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[NewRawMaterialSheet]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	NewRawMaterialSheet
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[NewRawMaterialSheet] (
  @MCCode nvarchar(10)
, @CordProductPkId int = NULL
, @RawMaterialSheetId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * FROM RawMaterialSheet WHERE CordProductPkId = @CordProductPkId)
        BEGIN
			INSERT INTO RawMaterialSheet
		    (
                  MCCode
                , CordProductPkId
			)
			VALUES
			(
                  @MCCode
                , @CordProductPkId
			);

			SET @RawMaterialSheetId = @@IDENTITY;

            UPDATE CordProduct
               SET ProcessingFlag = 1
             WHERE CordProductPkId = @CordProductPkId;
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


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[SaveRawMaterialSheetItem]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveRawMaterialSheetItem
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveRawMaterialSheetItem] (
  @RawMaterialSheetId int = NULL out
, @ProductionDate datetime
, @ItemYarn nvarchar(30)
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @InputCH int
, @DoffNos nvarchar(50)
, @SPNos nvarchar(50)
, @Seq as int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @iMax int;
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM RawMaterialSheetItem 
                        WHERE RawMaterialSheetId = @RawMaterialSheetId 
                          AND Seq = @Seq)
        BEGIN
            SELECT @iMax = MAX(Seq) 
              FROM RawMaterialSheetItem 
             WHERE RawMaterialSheetId = @RawMaterialSheetId;

            IF (@iMax IS NULL OR @iMax < 1) 
            BEGIN
                SET @iMax = 0;
            END
            SET @Seq = @iMax + 1;

			INSERT INTO RawMaterialSheetItem
		    (
                  RawMaterialSheetId
                , Seq
                , ProductionDate
                , ItemYarn
                , PalletNo
                , TraceNo
                , InputCH
                , DoffNos
                , SPNos
			)
			VALUES
			(
                  @RawMaterialSheetId
                , @Seq
                , @ProductionDate
                , @ItemYarn
                , @PalletNo
                , @TraceNo
                , @InputCH
                , @DoffNos
                , @SPNos
			);
        END
        ELSE
        BEGIN
            UPDATE RawMaterialSheetItem
               SET ProductionDate = @ProductionDate
                 , ItemYarn = @ItemYarn
                 , PalletNo = @PalletNo
                 , TraceNo = @TraceNo
                 , InputCH = @InputCH
                 , DoffNos = @DoffNos
                 , SPNos = @SPNos
             WHERE RawMaterialSheetId = @RawMaterialSheetId
               AND Seq = @Seq
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


/*********** Script Update Date: 2023-07-09  ***********/
/****** Object:  StoredProcedure [dbo].[GetRawMaterialSheetItems]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetRawMaterialSheetItems
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetRawMaterialSheetItems NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetRawMaterialSheetItems]
(
  @RawMaterialSheetId int
)
AS
BEGIN
	SELECT RawMaterialSheetId
	     , Seq
         , ProductionDate
         , ItemYarn
         , PalletNo
         , TraceNo
         , InputCH
         , DoffNos
         , SPNos
      FROM RawMaterialSheetItem
     WHERE RawMaterialSheetId = @RawMaterialSheetId

END

GO

