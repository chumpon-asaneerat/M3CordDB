/****** Object:  StoredProcedure [dbo].[SaveDIPTimeTable]    Script Date: 21/10/2566 23:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveDIPTimeTable] (
    @ProductCode nvarchar (30) ,
	@S7Bobbin bit  ,
	@S8CoolingWaterSystemBath1 decimal (18, 3) ,
	@S8CoolingWaterSystemBath2 decimal (18, 3) ,
	@S8ChemicalWork nvarchar (30) ,
	@S8ChemicalFilter nvarchar (30) ,
	@S8Speed decimal (18, 3) ,
	@S8StretchD decimal (18, 3) ,
	@S8StretchH decimal (18, 3) ,
	@S8StretchN decimal (18, 3) ,
	@S8TempD decimal (18, 3) ,
	@S8TempHN decimal (18, 3) ,
	@S9GlideStatus bit  
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPTimeTable WHERE ProductCode = @ProductCode)
        BEGIN
            UPDATE DIPTimeTable
               SET  ProductCode = @ProductCode ,
					S7Bobbin = @S7Bobbin ,
					S8CoolingWaterSystemBath1 = @S8CoolingWaterSystemBath1 ,
					S8CoolingWaterSystemBath2 = @S8CoolingWaterSystemBath2 ,
					S8ChemicalWork = @S8ChemicalWork ,
					S8ChemicalFilter = @S8ChemicalFilter ,
					S8Speed = @S8Speed ,
					S8StretchD = @S8StretchD ,
					S8StretchH = @S8StretchH ,
					S8StretchN = @S8StretchN ,
					S8TempD = @S8TempD ,
					S8TempHN = @S8TempHN ,
					S9GlideStatus  = @S9GlideStatus
             WHERE ProductCode = @ProductCode
        END
        ELSE
        BEGIN
			INSERT INTO DIPTimeTable
		    (
				ProductCode ,
				S7Bobbin ,
				S8CoolingWaterSystemBath1 ,
				S8CoolingWaterSystemBath2 ,
				S8ChemicalWork ,
				S8ChemicalFilter ,
				S8Speed ,
				S8StretchD ,
				S8StretchH ,
				S8StretchN ,
				S8TempD ,
				S8TempHN ,
				S9GlideStatus
			)
			VALUES
			(
                @ProductCode ,
				@S7Bobbin ,
				@S8CoolingWaterSystemBath1 ,
				@S8CoolingWaterSystemBath2 ,
				@S8ChemicalWork ,
				@S8ChemicalFilter ,
				@S8Speed ,
				@S8StretchD ,
				@S8StretchH ,
				@S8StretchN ,
				@S8TempD ,
				@S8TempHN ,
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
