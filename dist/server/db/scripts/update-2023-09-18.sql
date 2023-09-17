/*********** Script Update Date: 2023-09-18  ***********/
DELETE FROM PCTwist1Operation
GO

DELETE FROM Twist1CheckSheet
GO

DELETE FROM Twist1LoadRecordItem
GO

DELETE FROM Twist1LoadRecord
GO

DELETE FROM PCTwist1
GO


/*********** Script Update Date: 2023-09-18  ***********/
/****** Object:  StoredProcedure [dbo].[SearchG4IssueYarns]    Script Date: 14/9/2566 13:34:02 ******/
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
-- <2023-09-14> :
--	- Add parameter Request No
--	- Comment parameter @IssueDate  
--
-- [== Example ==]
--
-- EXEC SearchG4IssueYarns NULL
-- =============================================
ALTER PROCEDURE [dbo].[SearchG4IssueYarns]
(
  @ItemYarn nvarchar(30) = NULL
, @RequestNo nvarchar(30) = NULL
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
     WHERE UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, Y.ItemYarn))))
       --AND UPPER(LTRIM(RTRIM(Y.Item400))) = UPPER(LTRIM(RTRIM(COALESCE(@Item400, Y.Item400))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.WHReceiveFlag IS NULL OR I.WHReceiveFlag = 0)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
	   AND I.RequestNo = COALESCE(@RequestNo, I.RequestNo)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-09-18  ***********/
/****** Object:  StoredProcedure [dbo].[SearchWarehouseStockYarns]    Script Date: 14/9/2566 13:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchWarehouseStockYarns
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
-- <2023-09-14> :
--	- Add parameter Request No
--	- Comment parameter @IssueDate  
--
-- [== Example ==]
--
-- EXEC SearchWarehouseStockYarns NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchWarehouseStockYarns]
(
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
     WHERE UPPER(LTRIM(RTRIM(Y.ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, Y.ItemYarn))))
       AND I.PalletNo = Y.PalletNo
       AND (I.DeleteFlag IS NULL OR I.DeleteFlag = 0)
       AND (I.WHReceiveFlag  = 1)
       AND (I.UsedCH IS NULL OR I.ConeCH > I.UsedCH)
     ORDER BY I.IssueDate , I.PalletNo;

END

GO


/*********** Script Update Date: 2023-09-18  ***********/
/****** Object:  StoredProcedure [dbo].[GetPCCards]    Script Date: 9/18/2023 5:10:40 ******/
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
    SELECT A.PCId
         , A.PINo
         , A.PCDate
         , A.CustomerId
         , A.CustomerName
         , A.ProductCode
         , A.ProductName
         , A.ItemYarn
         , A.CordStructure
         , A.TreatRoute
         , A.TwistSpec
         , A.ProductLotNo
         , A.TargetQty
         , A.FinishFlag
         , A.DeleteFlag
		 , B.FinishFlag AS Twist1FinishFlag
		 , B.DeleteFlag AS Twist1DeleteFlag
      FROM PCCardView A 
	  LEFT OUTER JOIN PCTwist1 B ON (B.PCId = A.PCId)
	   AND UPPER(LTRIM(RTRIM(A.CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, A.CustomerName))))
       AND UPPER(LTRIM(RTRIM(A.ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, A.ProductLotNo))))
       AND (A.DeleteFlag IS NULL OR A.DeleteFlag = 0)
       AND (A.FinishFlag IS NULL OR A.FinishFlag = 0)
       AND (B.DeleteFlag IS NULL OR B.DeleteFlag = 0)
       AND (B.FinishFlag IS NULL OR B.FinishFlag = 0)
     ORDER BY PCDate;

END

GO


/*********** Script Update Date: 2023-09-18  ***********/
/****** Object:  StoredProcedure [dbo].[SavePCTwist1]    Script Date: 9/18/2023 5:05:37 ******/
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
ALTER PROCEDURE [dbo].[SavePCTwist1] (
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
, @FinishFlag bit
, @DeleteFlag bit
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
				 , FinishFlag = @FinishFlag
				 , DeleteFlag = @DeleteFlag
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


/*********** Script Update Date: 2023-09-18  ***********/
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

