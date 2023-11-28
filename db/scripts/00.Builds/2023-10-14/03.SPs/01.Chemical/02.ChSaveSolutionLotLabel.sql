/****** Object:  StoredProcedure [dbo].[ChSaveSolutionLotLabel]    Script Date: 14/10/2566 10:55:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[ChSaveSolutionLotLabel] (
  @solutionlot nvarchar(10)
, @solutionid nvarchar(30)
, @qty decimal(6,2)
, @mixdate datetime
, @qualifieddate datetime
, @expiredate datetime
, @userid int
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM  [dbo].[SolutionLot]
                    WHERE [SolutionLot] = @solutionlot)
        BEGIN
            UPDATE [dbo].[SolutionLot] 
               SET [SolutionId] = @solutionid
                 , [DipSolutionQty] = @qty
                 , [MixDate] = @mixdate
                 , [QualifiedDate] = @qualifieddate
                 , [ExpireDate] = @expiredate
                 , [CreateBy] = @UserId
                 
             WHERE [SolutionLot] = @solutionlot
        END
        ELSE
        BEGIN
			INSERT INTO [dbo].[SolutionLot]
		    (
                [SolutionLot], [SolutionId], [DipSolutionQty], [MixDate], [QualifiedDate] , [ExpireDate] ,[CreateDate] ,[CreateBy] )
                
			VALUES
			( @solutionlot, @solutionid, @qty ,@mixdate , @qualifieddate, @expiredate, getdate() , @userid ) ;
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

