ALTER TABLE S1ConditionStd ADD CalculatedTwistingNumberType nvarchar(5) DEFAULT 'S'
GO

ALTER TABLE S1Condition ADD CalculatedTwistingNumberType nvarchar(5) DEFAULT 'S'
GO

ALTER TABLE S1Condition ADD HasJoins bit NULL
GO

ALTER TABLE S1Condition ADD JoinOK bit NULL
GO

ALTER TABLE S8ProductionCondition ADD SofnerValue nvarchar(100) NULL
GO

ALTER TABLE S8ProductionCondition ADD DarwNipValue nvarchar(100) NULL
GO

ALTER TABLE S8x2ProductionCondition ADD SofnerValue nvarchar(100) NULL
GO

ALTER TABLE S8x2ProductionCondition ADD DarwNipValue nvarchar(100) NULL
GO

ALTER TABLE S8ProductionConditionItem ADD PositionCordCutCreelKG decimal(18, 3) NULL
GO
ALTER TABLE S8ProductionConditionItem ADD PositionCordCutCSKG decimal(18, 3) NULL
GO
ALTER TABLE S8ProductionConditionItem ADD PositionCordCutWinderKG decimal(18, 3) NULL
GO
ALTER TABLE S8ProductionConditionItem ADD PositionCordCutWasteYarnKG decimal(18, 3) NULL
GO


ALTER TABLE S8x2ProductionConditionItem ADD PositionCordCutCreelKG decimal(18, 3) NULL
GO
ALTER TABLE S8x2ProductionConditionItem ADD PositionCordCutCSKG decimal(18, 3) NULL
GO
ALTER TABLE S8x2ProductionConditionItem ADD PositionCordCutWinderKG decimal(18, 3) NULL
GO
ALTER TABLE S8x2ProductionConditionItem ADD PositionCordCutWasteYarnKG decimal(18, 3) NULL
GO
