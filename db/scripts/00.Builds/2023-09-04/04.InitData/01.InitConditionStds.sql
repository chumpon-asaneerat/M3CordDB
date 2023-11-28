/*
-- S1
DECLARE @ProcessName nvarchar(30)
DECLARE @ProductCode nvarchar(30)
DECLARE @ParamName nvarchar(50)
-- 1 = String, 2 = Single Value, 3 = Value with err range
DECLARE @ParamType int 
DECLARE @SC bit
DECLARE @StdValueS nvarchar(100)
DECLARE @StdValueD decimal(18,3)
DECLARE @StdValueE decimal(18,3)

-- 9A0663L
SET @processName = N'S-1'
SET @ProductCode = N'9A0663L'
BEGIN
    SET @ParamName = N'RingDia'
    SET @ParamType = 1 
    SET @SC = 0
    SET @StdValueS = N'8 1/2" R x 14" L'
    SET @StdValueD = NULL
    SET @StdValueE = NULL

    EXEC SaveConditionStd @ProcessName, @ProductCode , @ParamName, @ParamType, @SC, @StdValueS, @StdValueD, @StdValueE
END

BEGIN
    SET @ParamName = N'TwistGearI'
    SET @ParamType = 2 
    SET @SC = 1
    SET @StdValueS = NULL
    SET @StdValueD = 41
    SET @StdValueE = NULL

    EXEC SaveConditionStd @ProcessName, @ProductCode , @ParamName, @ParamType, @SC, @StdValueS, @StdValueD, @StdValueE

    SET @ParamName = N'TwistGearJ'
    SET @ParamType = 2 
    SET @SC = 1
    SET @StdValueS = NULL
    SET @StdValueD = 45
    SET @StdValueE = NULL

    EXEC SaveConditionStd @ProcessName, @ProductCode , @ParamName, @ParamType, @SC, @StdValueS, @StdValueD, @StdValueE

    SET @ParamName = N'TwistGearK'
    SET @ParamType = 2 
    SET @SC = 1
    SET @StdValueS = NULL
    SET @StdValueD = 83
    SET @StdValueE = NULL

    EXEC SaveConditionStd @ProcessName, @ProductCode , @ParamName, @ParamType, @SC, @StdValueS, @StdValueD, @StdValueE
END

GO
*/