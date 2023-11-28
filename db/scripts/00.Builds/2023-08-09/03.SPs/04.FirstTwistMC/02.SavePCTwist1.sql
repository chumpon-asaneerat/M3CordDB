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
