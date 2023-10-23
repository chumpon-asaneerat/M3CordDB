/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTableStd]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPTimeTableStd] (
    @ProductCode nvarchar (30) ,
	@S7Bobbin bit  ,
	@S8CoolingWaterSystemBath1SC bit  ,
	@S8CoolingWaterSystemBath1 decimal (18, 3) ,
	@S8CoolingWaterSystemBath1Err decimal (18, 3) ,
	@S8CoolingWaterSystemBath2SC bit  ,
	@S8CoolingWaterSystemBath2 decimal (18, 3) ,
	@S8CoolingWaterSystemBath2Err decimal (18, 3) ,
	@S8ChemicalWork nvarchar (30) ,
	@S8ChemicalFilter nvarchar (30) ,
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
	@S9GlideStatus bit  
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTableStd WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE DIPTimeTableStd 
               SET  ProductCode = @ProductCode ,
					S7Bobbin = @S7Bobbin ,
					S8CoolingWaterSystemBath1SC = @S8CoolingWaterSystemBath1SC ,
					S8CoolingWaterSystemBath1 = @S8CoolingWaterSystemBath1 ,
					S8CoolingWaterSystemBath1Err = @S8CoolingWaterSystemBath1Err ,
					S8CoolingWaterSystemBath2SC = @S8CoolingWaterSystemBath2SC ,
					S8CoolingWaterSystemBath2 = @S8CoolingWaterSystemBath2 ,
					S8CoolingWaterSystemBath2Err = @S8CoolingWaterSystemBath2Err ,
					S8ChemicalWork = @S8ChemicalWork ,
					S8ChemicalFilter = @S8ChemicalFilter ,
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
					S9GlideStatus  = @S9GlideStatus
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTableStd
		    (
				ProductCode ,
				S7Bobbin ,
				S8CoolingWaterSystemBath1SC ,
				S8CoolingWaterSystemBath1 ,
				S8CoolingWaterSystemBath1Err ,
				S8CoolingWaterSystemBath2SC ,
				S8CoolingWaterSystemBath2 ,
				S8CoolingWaterSystemBath2Err ,
				S8ChemicalWork ,
				S8ChemicalFilter ,
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
				S9GlideStatus
			)
			VALUES
			(
                @ProductCode ,
				@S7Bobbin ,
				@S8CoolingWaterSystemBath1SC ,
				@S8CoolingWaterSystemBath1 ,
				@S8CoolingWaterSystemBath1Err ,
				@S8CoolingWaterSystemBath2SC ,
				@S8CoolingWaterSystemBath2 ,
				@S8CoolingWaterSystemBath2Err ,
				@S8ChemicalWork ,
				@S8ChemicalFilter ,
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
				@S9GlideStatus 
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
