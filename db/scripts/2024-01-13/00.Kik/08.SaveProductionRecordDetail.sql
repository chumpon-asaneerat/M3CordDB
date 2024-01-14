/****** Object:  StoredProcedure [dbo].[SaveProductionRecordDetail]    Script Date: 14/1/2567 2:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveProductionRecordDetail] (
    @ProductCode nvarchar (30) ,
	@LotNo nvarchar (30) ,
	@DoffingDate datetime  ,
	@DoffingNo int  ,
	@StretchD decimal (18, 3) ,
	@StretchH decimal (18, 3) ,
	@StretchN decimal (18, 3) ,
	@TempD decimal (18, 3) ,
	@TempHN decimal (18, 3) ,
	@Speed decimal (18, 3) ,
	@Treat decimal (18, 3) ,
	@DoffingLength decimal (18, 3) ,
	@Weight decimal (18, 3) ,
	@Spindle decimal (18, 3) ,
	@ProductionGood decimal (18, 3) ,
	@ProductionTotal decimal (18, 3) ,
	@ProductionCut decimal (18, 3) ,
	@PositionCordCutCreel decimal (18, 3) ,
	@PositionCordCutCS decimal (18, 3) ,
	@PositionCordCutWinder decimal (18, 3) ,
	@PositionCordCutWasteYarn decimal (18, 3) ,
	@CheckTimeStart datetime  ,
	@CheckTimeFinish datetime  ,
	@CheckTimeRecord datetime  ,
	@Opertor nvarchar (100) ,
	@Leader nvarchar (100) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ProductionRecordDetail WHERE ProductCode = @ProductCode And LotNo = @LotNo And DoffingNo = @DoffingNo)
        BEGIN
            UPDATE ProductionRecordDetail 
               SET  DoffingDate = @DoffingDate  ,
					DoffingNo = @DoffingNo ,
					StretchD = @StretchD ,
					StretchH = @StretchH ,
					StretchN = @StretchN ,
					TempD = @TempD ,
					TempHN = @TempHN ,
					Speed = @Speed ,
					Treat = @Treat ,
					DoffingLength = @DoffingLength ,
					[Weight] = @Weight ,
					Spindle = @Spindle ,
					ProductionGood = @ProductionGood ,
					ProductionTotal = @ProductionTotal ,
					ProductionCut = @ProductionCut ,
					PositionCordCutCreel = @PositionCordCutCreel ,
					PositionCordCutCS = @PositionCordCutCS ,
					PositionCordCutWinder = @PositionCordCutWinder ,
					PositionCordCutWasteYarn = @PositionCordCutWasteYarn ,
					CheckTimeStart = @CheckTimeStart  ,
					CheckTimeFinish = @CheckTimeFinish  ,
					CheckTimeRecord = @CheckTimeRecord  ,
					Opertor = @Opertor ,
					Leader = @Leader   
             WHERE  ProductCode = @ProductCode  And LotNo = @LotNo And DoffingNo = @DoffingNo
        END
        ELSE
        BEGIN
			INSERT INTO ProductionRecordDetail
		    (
				ProductCode ,
				LotNo ,
				DoffingDate ,
				DoffingNo ,
				StretchD ,
				StretchH ,
				StretchN ,
				TempD ,
				TempHN ,
				Speed ,
				Treat ,
				DoffingLength ,
				[Weight] ,
				Spindle ,
				ProductionGood ,
				ProductionTotal ,
				ProductionCut ,
				PositionCordCutCreel ,
				PositionCordCutCS ,
				PositionCordCutWinder ,
				PositionCordCutWasteYarn ,
				CheckTimeStart ,
				CheckTimeFinish ,
				CheckTimeRecord ,
				Opertor ,
		Leader 
			)
			VALUES
			(
                @ProductCode ,
				@LotNo ,
				@DoffingDate ,
				@DoffingNo ,
				@StretchD ,
				@StretchH ,
				@StretchN ,
				@TempD ,
				@TempHN ,
				@Speed ,
				@Treat ,
				@DoffingLength ,
				@Weight ,
				@Spindle ,
				@ProductionGood ,
				@ProductionTotal ,
				@ProductionCut ,
				@PositionCordCutCreel ,
				@PositionCordCutCS ,
				@PositionCordCutWinder ,
				@PositionCordCutWasteYarn ,
				@CheckTimeStart  ,
				@CheckTimeFinish  ,
				@CheckTimeRecord  ,
				@Opertor ,
				@Leader 
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
