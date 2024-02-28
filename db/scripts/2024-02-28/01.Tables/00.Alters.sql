ALTER TABLE S1ConditionStd ADD CalculatedTwistingNumberType nvarchar(5) DEFAULT 'S'
GO

ALTER TABLE S1Condition ADD CalculatedTwistingNumberType nvarchar(5) DEFAULT 'S'
GO

ALTER TABLE S1Condition ADD HasJoins bit NULL
GO

ALTER TABLE S1Condition ADD JoinOK bit NULL
GO
