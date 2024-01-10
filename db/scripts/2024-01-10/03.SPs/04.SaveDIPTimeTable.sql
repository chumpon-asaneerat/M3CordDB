/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTable]    Script Date: 1/11/2024 1:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTable] (
    @DIPPCId int ,
    @ProductCode nvarchar (30) ,
    @RowType int , -- -1 = STD, 0 = CONF, 1 = DATA
	@S7BobbinSC bit  ,
	@S7Bobbin bit  ,
	@S8CoolingWaterSystemBath1SC bit  ,
	@S8CoolingWaterSystemBath1 decimal (18, 3) ,
	@S8CoolingWaterSystemBath2SC bit  ,
	@S8CoolingWaterSystemBath2 decimal (18, 3) ,
	@S8ChemicalWorkSC bit ,
	@S8ChemicalWork nvarchar (30) ,
	@S8ChemicalFilterSC bit ,
	@S8ChemicalFilter nvarchar (30) ,
	@S8SpeedSC bit ,
	@S8Speed decimal (18, 3) ,
	@S8StretchDSC bit ,
	@S8StretchD decimal (18, 3) ,
	@S8StretchHSC bit ,
	@S8StretchH decimal (18, 3) ,
	@S8StretchNSC bit ,
	@S8StretchN decimal (18, 3) ,
	@S8TempDSC bit ,
	@S8TempD decimal (18, 3) ,
	@S8TempHNSC bit ,
	@S8TempHN decimal (18, 3) ,
	@S9GlideStatusSC bit ,
	@S9GlideStatus bit ,
    @Remark nvarchar(200) ,
    @DIPTimeTableId  int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTable WHERE DIPTimeTableId = @DIPTimeTableId)
        BEGIN
            UPDATE DIPTimeTable
               SET  DIPPCId = @DIPPCId ,
                    ProductCode = @ProductCode ,
                    RowType = @RowType ,
					S7BobbinSC = @S7BobbinSC ,
					S7Bobbin = @S7Bobbin ,
					S8CoolingWaterSystemBath1SC = @S8CoolingWaterSystemBath1SC ,
					S8CoolingWaterSystemBath1 = @S8CoolingWaterSystemBath1 ,
					S8CoolingWaterSystemBath2SC = @S8CoolingWaterSystemBath2SC ,
					S8CoolingWaterSystemBath2 = @S8CoolingWaterSystemBath2 ,
					S8ChemicalWorkSC = @S8ChemicalWorkSC ,
					S8ChemicalWork = @S8ChemicalWork ,
					S8ChemicalFilterSC = @S8ChemicalFilterSC ,
					S8ChemicalFilter = @S8ChemicalFilter ,
					S8SpeedSC = @S8SpeedSC ,
					S8Speed = @S8Speed ,
					S8StretchDSC = @S8StretchDSC ,
					S8StretchD = @S8StretchD ,
					S8StretchHSC = @S8StretchHSC ,
					S8StretchH = @S8StretchH ,
					S8StretchNSC = @S8StretchNSC ,
					S8StretchN = @S8StretchN ,
					S8TempDSC = @S8TempDSC ,
					S8TempD = @S8TempD ,
					S8TempHNSC = @S8TempHNSC ,
					S8TempHN = @S8TempHN ,
					S9GlideStatusSC  = @S9GlideStatusSC ,
					S9GlideStatus  = @S9GlideStatus ,
                    [Remark] = @Remark
             WHERE DIPTimeTableId = @DIPTimeTableId
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTable
		    (
                DIPPCId ,
				ProductCode ,
                RowType ,
				S7BobbinSC ,
				S7Bobbin ,
				S8CoolingWaterSystemBath1SC ,
				S8CoolingWaterSystemBath1 ,
				S8CoolingWaterSystemBath2SC ,
				S8CoolingWaterSystemBath2 ,
				S8ChemicalWorkSC ,
				S8ChemicalWork ,
				S8ChemicalFilterSC ,
				S8ChemicalFilter ,
				S8SpeedSC ,
				S8Speed ,
				S8StretchDSC ,
				S8StretchD ,
				S8StretchHSC ,
				S8StretchH ,
				S8StretchNSC ,
				S8StretchN ,
				S8TempDSC ,
				S8TempD ,
				S8TempHNSC ,
				S8TempHN ,
				S9GlideStatusSC ,
				S9GlideStatus ,
                [Remark]
			)
			VALUES
			(
                @DIPPCId ,
                @ProductCode ,
                @RowType ,
				@S7BobbinSC ,
				@S7Bobbin ,
				@S8CoolingWaterSystemBath1SC ,
				@S8CoolingWaterSystemBath1 ,
				@S8CoolingWaterSystemBath2SC ,
				@S8CoolingWaterSystemBath2 ,
				@S8ChemicalWorkSC ,
				@S8ChemicalWork ,
				@S8ChemicalFilterSC ,
				@S8ChemicalFilter ,
				@S8SpeedSC ,
				@S8Speed ,
				@S8StretchDSC ,
				@S8StretchD ,
				@S8StretchHSC ,
				@S8StretchH ,
				@S8StretchNSC ,
				@S8StretchN ,
				@S8TempDSC ,
				@S8TempD ,
				@S8TempHNSC ,
				@S8TempHN ,
				@S9GlideStatusSC , 
				@S9GlideStatus , 
                @Remark
			);

            SET @DIPTimeTableId = @@IDENTITY;
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
