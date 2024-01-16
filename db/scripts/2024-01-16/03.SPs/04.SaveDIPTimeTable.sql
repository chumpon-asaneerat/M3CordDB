/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTable]    Script Date: 1/11/2024 1:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTable] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @RowType int , -- -2 = STDV-- -1 = STDB, 0 = CONF, 1 = DATA
    @PeriodTime datetime ,
    @LotNo nvarchar(50),
	@S7BobbinSC bit  ,
	@S7Bobbin bit  ,
	@S8CoolingWaterSystemBath1SC bit  ,
	@S8CoolingWaterSystemBath1Min decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Max decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Value decimal (18, 3) ,
	@S8CoolingWaterSystemBath2SC bit  ,
	@S8CoolingWaterSystemBath2Min decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Max decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Value decimal (18, 3) ,
	@S8ChemicalWorkSC bit ,
	@S8ChemicalWork nvarchar (30) ,
	@S8ChemicalFilterSC bit ,
	@S8ChemicalFilter nvarchar (30) ,
	@S8SpeedSC bit ,
	@S8Speed decimal (18, 3) ,
	@S8SpeedErr decimal (18, 3) ,
	@S8SpeedValue decimal (18, 3) ,
	@S8StretchDSC bit ,
	@S8StretchD decimal (18, 3) ,
	@S8StretchDErr decimal (18, 3) ,
	@S8StretchDValue decimal (18, 3) ,
	@S8StretchHSC bit ,
	@S8StretchH decimal (18, 3) ,
	@S8StretchHErr decimal (18, 3) ,
	@S8StretchHValue decimal (18, 3) ,
	@S8StretchNSC bit ,
	@S8StretchN decimal (18, 3) ,
	@S8StretchNErr decimal (18, 3) ,
	@S8StretchNValue decimal (18, 3) ,
	@S8TempDSC bit ,
	@S8TempD decimal (18, 3) ,
	@S8TempDErr decimal (18, 3) ,
	@S8TempDValue decimal (18, 3) ,
	@S8TempHNSC bit ,
	@S8TempHN decimal (18, 3) ,
	@S8TempHNErr decimal (18, 3) ,
	@S8TempHNValue decimal (18, 3) ,
	@S9GlideStatusSC bit ,
	@S9GlideStatus bit ,
    @Remark nvarchar(200) ,
    @CheckBy nvarchar(100),
    @CheckDate datetime
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTable
                    WHERE PeriodTime = @PeriodTime
                      AND RowType = @RowType
                      AND ProductCode = @ProductCode
                      AND DIPPCId =  @DIPPCId
                      AND LotNo = @LotNo)
        BEGIN
            UPDATE DIPTimeTable
               SET  ProductCode = @ProductCode ,
                    DIPPCId =  @DIPPCId ,
                    RowType = @RowType ,
                    PeriodTime = @PeriodTime ,
                    LotNo = @LotNo ,
					S7BobbinSC = @S7BobbinSC ,
					S7Bobbin = @S7Bobbin ,
					S8CoolingWaterSystemBath1SC = @S8CoolingWaterSystemBath1SC ,
					S8CoolingWaterSystemBath1Min = @S8CoolingWaterSystemBath1Min ,
					S8CoolingWaterSystemBath1Max = @S8CoolingWaterSystemBath1Max ,
					S8CoolingWaterSystemBath1Value = @S8CoolingWaterSystemBath1Value ,
					S8CoolingWaterSystemBath2SC = @S8CoolingWaterSystemBath2SC ,
					S8CoolingWaterSystemBath2Min = @S8CoolingWaterSystemBath2Min ,
					S8CoolingWaterSystemBath2Max = @S8CoolingWaterSystemBath2Max ,
					S8CoolingWaterSystemBath2Value = @S8CoolingWaterSystemBath2Value ,
					S8ChemicalWorkSC = @S8ChemicalWorkSC ,
					S8ChemicalWork = @S8ChemicalWork ,
					S8ChemicalFilterSC = @S8ChemicalFilterSC ,
					S8ChemicalFilter = @S8ChemicalFilter ,
					S8SpeedSC = @S8SpeedSC ,
					S8Speed = @S8Speed ,
					S8SpeedErr = @S8SpeedErr ,
					S8SpeedValue = @S8SpeedValue ,
					S8StretchDSC = @S8StretchDSC ,
					S8StretchD = @S8StretchD ,
					S8StretchDErr = @S8StretchDErr ,
					S8StretchDValue = @S8StretchDValue ,
					S8StretchHSC = @S8StretchHSC ,
					S8StretchH = @S8StretchH ,
					S8StretchHErr = @S8StretchHErr ,
					S8StretchHValue = @S8StretchHValue ,
					S8StretchNSC = @S8StretchNSC ,
					S8StretchN = @S8StretchN ,
					S8StretchNErr = @S8StretchNErr ,
					S8StretchNValue = @S8StretchNValue ,
					S8TempDSC = @S8TempDSC ,
					S8TempD = @S8TempD ,
					S8TempDErr = @S8TempDErr ,
					S8TempDValue = @S8TempDValue ,
					S8TempHNSC = @S8TempHNSC ,
					S8TempHN = @S8TempHN ,
					S8TempHNErr = @S8TempHNErr ,
					S8TempHNValue = @S8TempHNValue ,
					S9GlideStatusSC  = @S9GlideStatusSC ,
					S9GlideStatus  = @S9GlideStatus ,
                    [Remark] = @Remark,
                    CheckBy = @CheckBy,
                    CheckDate = @CheckDate
             WHERE PeriodTime = @PeriodTime
               AND RowType = @RowType
               AND ProductCode = @ProductCode
               AND LotNo = @LotNo
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTable
		    (
				ProductCode ,
                DIPPCId , 
                RowType ,
                PeriodTime ,
                LotNo ,
				S7BobbinSC ,
				S7Bobbin ,
				S8CoolingWaterSystemBath1SC ,
				S8CoolingWaterSystemBath1Min ,
				S8CoolingWaterSystemBath1Max ,
				S8CoolingWaterSystemBath1Value ,
				S8CoolingWaterSystemBath2SC ,
				S8CoolingWaterSystemBath2Min ,
				S8CoolingWaterSystemBath2Max ,
				S8CoolingWaterSystemBath2Value ,
				S8ChemicalWorkSC ,
				S8ChemicalWork ,
				S8ChemicalFilterSC ,
				S8ChemicalFilter ,
				S8SpeedSC ,
				S8Speed ,
				S8SpeedErr ,
				S8SpeedValue ,
				S8StretchDSC ,
				S8StretchD ,
				S8StretchDErr ,
				S8StretchDValue ,
				S8StretchHSC ,
				S8StretchH ,
				S8StretchHErr ,
				S8StretchHValue ,
				S8StretchNSC ,
				S8StretchN ,
				S8StretchNErr ,
				S8StretchNValue ,
				S8TempDSC ,
				S8TempD ,
				S8TempDErr ,
				S8TempDValue ,
				S8TempHNSC ,
				S8TempHN ,
				S8TempHNErr ,
				S8TempHNValue ,
				S9GlideStatusSC ,
				S9GlideStatus ,
                [Remark],
                CheckBy,
                CheckDate
			)
			VALUES
			(
                @ProductCode ,
                @DIPPCId , 
                @RowType ,
                @PeriodTime ,
                @LotNo ,
				@S7BobbinSC ,
				@S7Bobbin ,
				@S8CoolingWaterSystemBath1SC ,
				@S8CoolingWaterSystemBath1Min ,
				@S8CoolingWaterSystemBath1Max ,
				@S8CoolingWaterSystemBath1Value ,
				@S8CoolingWaterSystemBath2SC ,
				@S8CoolingWaterSystemBath2Min ,
				@S8CoolingWaterSystemBath2Max ,
				@S8CoolingWaterSystemBath2Value ,
				@S8ChemicalWorkSC ,
				@S8ChemicalWork ,
				@S8ChemicalFilterSC ,
				@S8ChemicalFilter ,
				@S8SpeedSC ,
				@S8Speed ,
				@S8SpeedErr ,
				@S8SpeedValue ,
				@S8StretchDSC ,
				@S8StretchD ,
				@S8StretchDErr ,
				@S8StretchDValue ,
				@S8StretchHSC ,
				@S8StretchH ,
				@S8StretchHErr ,
				@S8StretchHValue ,
				@S8StretchNSC ,
				@S8StretchN ,
				@S8StretchNErr ,
				@S8StretchNValue ,
				@S8TempDSC ,
				@S8TempD ,
				@S8TempDErr ,
				@S8TempDValue ,
				@S8TempHNSC ,
				@S8TempHN ,
				@S8TempHNErr ,
				@S8TempHNValue ,
				@S9GlideStatusSC , 
				@S9GlideStatus , 
                @Remark,
                @CheckBy,
                @CheckDate
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
