/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStd]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveDIPTimeTableStd] (
    @ProductCode nvarchar (30) ,
	@S7BobbinSC bit  ,
	@S8CoolingWaterSystemBath1SC bit  ,
	@S8CoolingWaterSystemBath1 decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Err decimal (18, 3) ,
	@S8CoolingWaterSystemBath2SC bit  ,
	@S8CoolingWaterSystemBath2 decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Err decimal (18, 3) ,
	@S8ChemicalWorkSC bit ,
	@S8ChemicalFilterSC bit ,
	@S8SpeedSC bit  ,
	@S8Speed decimal (18, 3) ,
	@S8SpeedErr decimal (18, 3) ,
	@S8StretchDSC bit  ,
	@S8StretchD decimal (18, 3) ,
	@S8StretchDErr decimal (18, 3) ,
	@S8StretchHSC bit  ,
	@S8StretchH decimal (18, 3) ,
	@S8StretchHErr decimal (18, 3) ,
	@S8StretchNSC bit  ,
	@S8StretchN decimal (18, 3) ,
	@S8StretchNErr decimal (18, 3) ,
	@S8TempDSC bit  ,
	@S8TempD decimal (18, 3) ,
	@S8TempDErr decimal (18, 3) ,
	@S8TempHNSC bit  ,
	@S8TempHN decimal (18, 3) ,
	@S8TempHNErr decimal (18, 3) ,
	@S9GlideStatusSC bit  
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTableStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE DIPTimeTableStd 
               SET  ProductCode = @ProductCode ,
					S7BobbinSC = @S7BobbinSC ,
					S8CoolingWaterSystemBath1SC = @S8CoolingWaterSystemBath1SC ,
					S8CoolingWaterSystemBath1 = @S8CoolingWaterSystemBath1 ,
					S8CoolingWaterSystemBath1Err = @S8CoolingWaterSystemBath1Err ,
					S8CoolingWaterSystemBath2SC = @S8CoolingWaterSystemBath2SC ,
					S8CoolingWaterSystemBath2 = @S8CoolingWaterSystemBath2 ,
					S8CoolingWaterSystemBath2Err = @S8CoolingWaterSystemBath2Err ,
					S8ChemicalWorkSC = @S8ChemicalWorkSC ,
					S8ChemicalFilterSC = @S8ChemicalFilterSC ,
					S8SpeedSC = @S8SpeedSC ,
					S8Speed = @S8Speed ,
					S8SpeedErr = @S8SpeedErr ,
					S8StretchDSC = @S8StretchDSC ,
					S8StretchD = @S8StretchD ,
					S8StretchDErr = @S8StretchDErr ,
					S8StretchHSC = @S8StretchHSC ,
					S8StretchH = @S8StretchH ,
					S8StretchHErr = @S8StretchHErr ,
					S8StretchNSC = @S8StretchNSC ,
					S8StretchN = @S8StretchN ,
					S8StretchNErr = @S8StretchNErr ,
					S8TempDSC = @S8TempDSC ,
					S8TempD = @S8TempD ,
					S8TempDErr = @S8TempDErr ,
					S8TempHNSC = @S8TempHNSC ,
					S8TempHN = @S8TempHN ,
					S8TempHNErr = @S8TempHNErr ,
					S9GlideStatusSC  = @S9GlideStatusSC
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTableStd
		    (
				ProductCode ,
				S7BobbinSC ,
				S8CoolingWaterSystemBath1SC ,
				S8CoolingWaterSystemBath1 ,
				S8CoolingWaterSystemBath1Err ,
				S8CoolingWaterSystemBath2SC ,
				S8CoolingWaterSystemBath2 ,
				S8CoolingWaterSystemBath2Err ,
				S8ChemicalWorkSC ,
				S8ChemicalFilterSC ,
				S8SpeedSC ,
				S8Speed ,
				S8SpeedErr ,
				S8StretchDSC ,
				S8StretchD ,
				S8StretchDErr ,
				S8StretchHSC ,
				S8StretchH ,
				S8StretchHErr ,
				S8StretchNSC ,
				S8StretchN ,
				S8StretchNErr ,
				S8TempDSC ,
				S8TempD ,
				S8TempDErr ,
				S8TempHNSC ,
				S8TempHN ,
				S8TempHNErr ,
				S9GlideStatusSC
			)
			VALUES
			(
                @ProductCode ,
				@S7BobbinSC ,
				@S8CoolingWaterSystemBath1SC ,
				@S8CoolingWaterSystemBath1 ,
				@S8CoolingWaterSystemBath1Err ,
				@S8CoolingWaterSystemBath2SC ,
				@S8CoolingWaterSystemBath2 ,
				@S8CoolingWaterSystemBath2Err ,
				@S8ChemicalWorkSC ,
				@S8ChemicalFilterSC ,
				@S8SpeedSC ,
				@S8Speed ,
				@S8SpeedErr ,
				@S8StretchDSC ,
				@S8StretchD ,
				@S8StretchDErr ,
				@S8StretchHSC ,
				@S8StretchH ,
				@S8StretchHErr ,
				@S8StretchNSC ,
				@S8StretchN ,
				@S8StretchNErr ,
				@S8TempDSC ,
				@S8TempD ,
				@S8TempDErr ,
				@S8TempHNSC ,
				@S8TempHN ,
				@S8TempHNErr ,
				@S9GlideStatusSC 
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
