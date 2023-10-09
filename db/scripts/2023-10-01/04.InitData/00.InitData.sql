DELETE FROM S1Condition
GO
DELETE FROM S4x1Condition
GO
DELETE FROM S4x2Condition
GO
DELETE FROM S5Condition
GO

-- S1
INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('9A0663L',0,'8 1/2" R x 14" L'
,1,41,45,83
,0,48,56
,0,217
,0,'RK - 500 J x 1 Pcs.'
,0,20120,30
,0,4.5,0.02
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,164,22
,0,3800,30
,0,23.56,2.9
,0,'รอยต่อต้องไม่เกิน 2 จุด ต่อ 1 Bobbin');

INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterUnit2SC,CouterUnit2,CouterUnit2Err
,CouterWeightSC,CouterWeight,CouterWeightErr
,CouterWeight2SC,CouterWeight2,CouterWeight2Err
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('9A1100L',0,'8 1/2" R x 14" L'
,1,72,62,66
,0,48,56
,0,217
,0,'RK - 500 J x 1 Pcs.'
,0,12000,30
,0,24000,30
,0,2.75,0.05
,0,5.5,0.05
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,165,17
,0,3800,30
,0,23.29,2.58
,0,'รอยต่อต้องไม่เกิน 2 จุด ต่อ 1 Bobbin');

INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('9H0663SL',0,'8 1/2" R x 14" L'
,1,38,45,83
,0,48,56
,0,177
,0,'RK - 500 J x 1 Pcs.'
,0,600,0
,0,0,0
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,153.2,22
,0,3100,30
,0,18.9,2.76
,0,'รอยต่อต้องไม่เกิน 2 จุด ต่อ 1 Bobbin');

--9H0663SL(1)
INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('9H0663SL',0,'8 1/2" R x 14" L'
,1,38,45,83
,0,48,56
,0,177
,0,'RK - 500 J x 1 Pcs.'
,0,600,0
,0,0,0
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,177.4,22
,0,3100,30
,0,18.9,2.76
,0,'รอยต่อต้องไม่เกิน 2 จุด ต่อ 1 Bobbin');

--9H0663SL(2)
INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('9H0663SL',0,'8 1/2" R x 14" L'
,1,41,45,83
,0,48,56
,0,177
,0,'RK - 500 J x 1 Pcs.'
,0,600,0
,0,0,0
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,164,22
,0,3100,30
,0,18.9,2.76
,0,'รอยต่อต้องไม่เกิน 2 จุด ต่อ 1 Bobbin');

--9A1100L(3)
INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('9H0663SL',0,'8 1/2" R x 14" L'
,1,41,45,83
,0,48,56
,0,177
,0,'RK - 500 J x 1 Pcs.'
,0,20000,30
,0,4.5,0.2
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,164,22
,0,3100,30
,0,19.27,2.76
,0,'รอยต่อต้องไม่เกิน 2 จุด ต่อ 1 Bobbin');

INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('R10023',0,'8 1/2" R x 14" L'
,1,78,56,72
,0,48,56
,0,217
,0,'RK - 500 J x 1 Pcs.'
,0,13500,50
,0,3,0.05
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,210,20
,0,3800,30
,0,16.02,6.05
,0,'รอยต่อต้องไม่เกิน 2 จุด ต่อ 1 Bobbin');

INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('1800TW',0,'210 x 356'
,1,39,66,62
,0,48,56
,0,217
,0,'RK - 500 J x 1Pcs'
,0,33100,50
,0,5.7,0.03
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,75,15
,0,3800,30
,0,50.66,10.97
,0,'ไม่มีรอยต่อ');

INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('KT3R16',0,'81/2"R18"L'
,1,36,72,56
,0,48,56
,0,177
,0,'RK - 500 J x 1 Pcs.'
,0,21800,50
,0,5.7,0.2
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,60,12
,0,3100,30
,0,51.66,11.28
,0,'มีรอยต่อ ได้ 2 รอยต่อ');

INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('KT3S71',0,'81/2"R18"L'
,1,43,56,72
,0,48,56
,0,217
,0,'RK - 500 J x 1 Pcs.'
,0,21700,50
,0,5,0.2
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,120,15
,0,3800,30
,0,32.2,4.27
,0,'มีรอยต่อ ได้ 2 รอยต่อ');

INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('P1100ZFT',0,'81/2"R14"L'
,1,44,66,62
,0,48,56
,0,217
,0,'RK - 500 J x 1Pcs'
,0,45300,50
,0,5,0.2
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,90,10
,0,3800,30
,0,42.78,5.08
,0,'ไม่มีรอยต่อ');

INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('P1402TRH',0,'81/2"R14"L'
,1,42,83,45
,0,48,56
,0,177
,0,'RK - 500 J x 1Pcs'
,0,16450,100
,0,4.4,0.1
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,45,20
,0,3100,30
,0,86.21,38.98
,0,'ไม่มีรอยต่อ');

INSERT INTO S1ConditionStd
( ProductCode,RingDiameterSC,RingDiameter
,TwistChangeGearSC,TwistChangeGearI,TwistChangeGearJ,TwistChangeGearK
,LifterChangeGearSC,LifterChangeGearA,LifterChangeGearB
,OuterDiameterSC,OuterDiameter
,TravellerNoSC,TravellerNo
,CouterUnitSC,CouterUnit,CouterUnitErr
,CouterWeightSC,CouterWeight,CouterWeightErr
,CounterSystemSC,CounterSystem
,SenserYarnBreakSC,SenserYarnBreak
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('P1670T1R',0,'81/2"R14"L'
,1,36,44,84
,0,48,56
,0,177
,0,'RK - 500 J x 1Pcs'
,0,1793,50
,0,3.1,0.1
,0,'เมื่อด้ายเต็ม Counter ที่ตั้งไว้เครื่องต้องหยุดและมีสัญญาณไฟเตือน'
,0,'เมื่อด้ายขาด เครื่องหยุด และมีสัญญาณเตือน'
,1,150,10
,0,3100,30
,0,20.14,2.21
,0,'ไม่มีรอยต่อ');
GO

-- S4x1
INSERT INTO S4x1ConditionStd
( ProductCode,TwistChangeGearSC,TwistChangeGearE,TwistChangeGearF,TwistChangeGearG,TwistChangeGearH
,MotorPulleyDiaSC,MotorPulleyDia,DrivingPulleyDiaSC,DrivingPulleyDia
,OverFeedSC,OverFeedRate,OverFeedGear
,WindAngleSC,WindAngleDeg,WindAngleGearA,WindAngleGearB
,TensorDialSetSC,TensorDialSet,NumberOfLoopSC,NumberOfLoop,NumberOfLoopErr
,MethodOfKnotSC,MethodOfKnot,WindQuantitySC,WindQuantity,WindQuantityErr
,LengthSC,[Length],LengthErr
,DoffTimeSC,DoffTime,DoffTimeErr
,ProductQuantitySC,ProductQuantityDay,ProductQuantityKg
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('P1671TT',1,68,32,50,80
,0,224,0,236
,0,15.6,28
,0,35,62,80
,0,3,0,1,0.5
,0,'NO KNOT',0,5.1,0.2
,0,30070,100
,0,5,0.5
,0,null,null
,1,80,10
,0,4150,100
,0,122.58,15.71
,0,'ไม่มีรอยต่อ');
GO

-- S4x2
INSERT INTO S4x2ConditionStd
( ProductCode,FullPackageModeSC,FullPackageMode
,LengthSC,[Length],LengthErr
,WindAngleShiftFunctionSC,WindAngleShiftFunction
,AmountOfDisturbSC,AmountOfDisturb
,WindAngleSC,WindAngle
,DistuebAccelerationTimeSC,DistuebAccelerationTime
,DistuebDccelerationTimeSC,DistuebDccelerationTime
,TensorSettingSC,TensorSetting
,FeedRollerSettingSC,FeedRollerSetting
,BollonSettingSC,BollonSetting
,MethodOfKnotSC,MethodOfKnot
,WindQuantitySC,WindQuantity,WindQuantityErr
,DoffTimeSC,DoffTime,DoffTimeErr
,ProductQuantitySC,ProductQuantityKg,ProductQuantityDay
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('H1671T',0,'Full package'
,0,30150,100
,0,'Linear'
,0,'+ 5%'
,0,20
,0,7.5
,0,7.5
,0,'No.3'
,0,'No.6'
,0,'No.8'
,0,'NO KNOT'
,0,5,0.1
,0,5.33,0.1
,0,null,null
,1,60,10
,0,2800,100
,0,93.33,3.33
,0,'ไม่มีรอยต่อ');

INSERT INTO S4x2ConditionStd
( ProductCode,FullPackageModeSC,FullPackageMode
,LengthSC,[Length],LengthErr
,WindAngleShiftFunctionSC,WindAngleShiftFunction
,AmountOfDisturbSC,AmountOfDisturb
,WindAngleSC,WindAngle
,DistuebAccelerationTimeSC,DistuebAccelerationTime
,DistuebDccelerationTimeSC,DistuebDccelerationTime
,TensorSettingSC,TensorSetting
,FeedRollerSettingSC,FeedRollerSetting
,BollonSettingSC,BollonSetting
,MethodOfKnotSC,MethodOfKnot
,WindQuantitySC,WindQuantity,WindQuantityErr
,DoffTimeSC,DoffTime,DoffTimeErr
,ProductQuantitySC,ProductQuantityKg,ProductQuantityDay
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('P1100TT',0,'Full package'
,0,45300,100
,0,'Linear'
,0,'+ 5%'
,0,20
,0,7.5
,0,7.5
,0,'No.3'
,0,'No.6'
,0,'No.8'
,0,'NO KNOT'
,0,5,0.1
,0,6.96,0.1
,0,null,null
,1,80,10
,0,4200,100
,0,106.97,15.87
,0,'ไม่มีรอยต่อ');

INSERT INTO S4x2ConditionStd
( ProductCode,FullPackageModeSC,FullPackageMode
,LengthSC,[Length],LengthErr
,WindAngleShiftFunctionSC,WindAngleShiftFunction
,AmountOfDisturbSC,AmountOfDisturb
,WindAngleSC,WindAngle
,DistuebAccelerationTimeSC,DistuebAccelerationTime
,DistuebDccelerationTimeSC,DistuebDccelerationTime
,TensorSettingSC,TensorSetting
,FeedRollerSettingSC,FeedRollerSetting
,BollonSettingSC,BollonSetting
,MethodOfKnotSC,MethodOfKnot
,WindQuantitySC,WindQuantity,WindQuantityErr
,DoffTimeSC,DoffTime,DoffTimeErr
,ProductQuantitySC,ProductQuantityKg,ProductQuantityDay
,CalculatedTwistingNumberSC,CalculatedTwistingNumber,CalculatedTwistingNumberErr
,NumberOfSpindleRotationSC,NumberOfSpindleRotation,NumberOfSpindleRotationErr
,YarnSpeedSC,YarnSpeed,YarnSpeedErr
,SpecialMentionSC,SpecialMention )
VALUES
('P1671TT',0,'Full package'
,0,30150,100
,0,'Linear'
,0,'+ 5%'
,0,20
,0,7.5
,0,7.5
,0,'No.3'
,0,'No.6'
,0,'No.8'
,0,'NO KNOT'
,0,5.1,0.2
,0,5,0.5
,0,null,null
,1,80,10
,0,4200,100
,0,105,15.87
,0,'ไม่มีรอยต่อ');
GO

-- S5
INSERT INTO S5ConditionStd
( ProductCode,MainSupplySteamPressureSC,MainSupplySteamPressureSet,MainSupplySteamPressureSetErr,MainSupplySteamPressureSpec,MainSupplySteamPressureSpecErr
,AgeingSteamPressureSC,AgeingSteamPressureSet,AgeingSteamPressureSetErr,AgeingSteamPressureSpec,AgeingSteamPressureSpecErr
,SettingTemperatureSC,SettingTemperatureSet,SettingTemperatureSetErr,SettingTemperatureSpec,SettingTemperatureSpecErr
,SettingTimeSC,SettingTimeSet,SettingTimeSetErr,SettingTimeSpec,SettingTimeSpecErr
,LampStatusSystemSC,LampStatusSystemSet,LampStatusSystemSpec
,SoudSystemTemperatureSC,SoudSystemTemperatureSet,SoudSystemTemperatureSpec
,YarnTypeSC,YarnTypeSet,YarnTypeSpec
,CordStructureSC,CordStructureSet,CordStructureSpec
,TwistingNoSC,TwistingNoSet,TwistingNoSetErr,TwistingNoSpec,TwistingNoSpecErr
,UnitWeightSC,UnitWeightSet,UnitWeightSetErr,UnitWeightSpec,UnitWeightSpecErr)
VALUES
('H1671T',0,6,1,6,1
,0,6,1,6,1
,0,60,3,60,3
,0,12,0.5,12,0.5
,0,'เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์','เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์'
,0,'มีสัญญานเสียงเตือนอุณภูมิ','มีสัญญานเสียงเตือนอุณภูมิ'
,1,'1670T - 360F - 705M','1670T - 360F - 705M'
,0,'P1670/1','P1670/1'
,1,60,10,60,10
,0,5.1,0.2,5.1,0.2);

INSERT INTO S5ConditionStd
( ProductCode,MainSupplySteamPressureSC,MainSupplySteamPressureSet,MainSupplySteamPressureSetErr,MainSupplySteamPressureSpec,MainSupplySteamPressureSpecErr
,AgeingSteamPressureSC,AgeingSteamPressureSet,AgeingSteamPressureSetErr,AgeingSteamPressureSpec,AgeingSteamPressureSpecErr
,SettingTemperatureSC,SettingTemperatureSet,SettingTemperatureSetErr,SettingTemperatureSpec,SettingTemperatureSpecErr
,SettingTimeSC,SettingTimeSet,SettingTimeSetErr,SettingTimeSpec,SettingTimeSpecErr
,LampStatusSystemSC,LampStatusSystemSet,LampStatusSystemSpec
,SoudSystemTemperatureSC,SoudSystemTemperatureSet,SoudSystemTemperatureSpec
,YarnTypeSC,YarnTypeSet,YarnTypeSpec
,CordStructureSC,CordStructureSet,CordStructureSpec
,TwistingNoSC,TwistingNoSet,TwistingNoSetErr,TwistingNoSpec,TwistingNoSpecErr
,UnitWeightSC,UnitWeightSet,UnitWeightSetErr,UnitWeightSpec,UnitWeightSpecErr)
VALUES
('KT3R16',0,6,1,6,1
,0,6,1,6,1
,0,60,3,60,3
,0,3,0.5,3,0.5
,0,'เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์','เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์'
,0,'มีสัญญานเสียงเตือนอุณภูมิ','มีสัญญานเสียงเตือนอุณภูมิ'
,1,'1100T - 240F - 707M','1100T - 240F - 707M'
,0,'P1100T//2','P1100T//2'
,1,60,15,60,15
,0,5,0.1,5,0.1);

INSERT INTO S5ConditionStd
( ProductCode,MainSupplySteamPressureSC,MainSupplySteamPressureSet,MainSupplySteamPressureSetErr,MainSupplySteamPressureSpec,MainSupplySteamPressureSpecErr
,AgeingSteamPressureSC,AgeingSteamPressureSet,AgeingSteamPressureSetErr,AgeingSteamPressureSpec,AgeingSteamPressureSpecErr
,SettingTemperatureSC,SettingTemperatureSet,SettingTemperatureSetErr,SettingTemperatureSpec,SettingTemperatureSpecErr
,SettingTimeSC,SettingTimeSet,SettingTimeSetErr,SettingTimeSpec,SettingTimeSpecErr
,LampStatusSystemSC,LampStatusSystemSet,LampStatusSystemSpec
,SoudSystemTemperatureSC,SoudSystemTemperatureSet,SoudSystemTemperatureSpec
,YarnTypeSC,YarnTypeSet,YarnTypeSpec
,CordStructureSC,CordStructureSet,CordStructureSpec
,TwistingNoSC,TwistingNoSet,TwistingNoSetErr,TwistingNoSpec,TwistingNoSpecErr
,UnitWeightSC,UnitWeightSet,UnitWeightSetErr,UnitWeightSpec,UnitWeightSpecErr)
VALUES
('P1100TT',0,6,1,6,1
,0,6,1,6,1
,0,60,3,60,3
,0,12,0.5,12,0.5
,0,'เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์','เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์'
,0,'มีสัญญานเสียงเตือนอุณภูมิ','มีสัญญานเสียงเตือนอุณภูมิ'
,1,'1100T - 240F - 705M','1100T - 240F - 705M'
,0,'P1100/1','P1100/1'
,1,80,10,80,10
,0,5,0.1,5,0.1);

INSERT INTO S5ConditionStd
( ProductCode,MainSupplySteamPressureSC,MainSupplySteamPressureSet,MainSupplySteamPressureSetErr,MainSupplySteamPressureSpec,MainSupplySteamPressureSpecErr
,AgeingSteamPressureSC,AgeingSteamPressureSet,AgeingSteamPressureSetErr,AgeingSteamPressureSpec,AgeingSteamPressureSpecErr
,SettingTemperatureSC,SettingTemperatureSet,SettingTemperatureSetErr,SettingTemperatureSpec,SettingTemperatureSpecErr
,SettingTimeSC,SettingTimeSet,SettingTimeSetErr,SettingTimeSpec,SettingTimeSpecErr
,LampStatusSystemSC,LampStatusSystemSet,LampStatusSystemSpec
,SoudSystemTemperatureSC,SoudSystemTemperatureSet,SoudSystemTemperatureSpec
,YarnTypeSC,YarnTypeSet,YarnTypeSpec
,CordStructureSC,CordStructureSet,CordStructureSpec
,TwistingNoSC,TwistingNoSet,TwistingNoSetErr,TwistingNoSpec,TwistingNoSpecErr
,UnitWeightSC,UnitWeightSet,UnitWeightSetErr,UnitWeightSpec,UnitWeightSpecErr)
VALUES
('P1671T',0,6,1,6,1
,0,6,1,6,1
,0,60,3,60,3
,0,12,0.5,12,0.5
,0,'เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์','เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์'
,0,'มีสัญญานเสียงเตือนอุณภูมิ','มีสัญญานเสียงเตือนอุณภูมิ'
,1,'1670T - 360F - 705M','1670T - 360F - 705M'
,0,'P1670/1','P1670/1'
,1,80,10,80,10
,0,5,0.2,5,0.2);

INSERT INTO S5ConditionStd
( ProductCode,MainSupplySteamPressureSC,MainSupplySteamPressureSet,MainSupplySteamPressureSetErr,MainSupplySteamPressureSpec,MainSupplySteamPressureSpecErr
,AgeingSteamPressureSC,AgeingSteamPressureSet,AgeingSteamPressureSetErr,AgeingSteamPressureSpec,AgeingSteamPressureSpecErr
,SettingTemperatureSC,SettingTemperatureSet,SettingTemperatureSetErr,SettingTemperatureSpec,SettingTemperatureSpecErr
,SettingTimeSC,SettingTimeSet,SettingTimeSetErr,SettingTimeSpec,SettingTimeSpecErr
,LampStatusSystemSC,LampStatusSystemSet,LampStatusSystemSpec
,SoudSystemTemperatureSC,SoudSystemTemperatureSet,SoudSystemTemperatureSpec
,YarnTypeSC,YarnTypeSet,YarnTypeSpec
,CordStructureSC,CordStructureSet,CordStructureSpec
,TwistingNoSC,TwistingNoSet,TwistingNoSetErr,TwistingNoSpec,TwistingNoSpecErr
,UnitWeightSC,UnitWeightSet,UnitWeightSetErr,UnitWeightSpec,UnitWeightSpecErr)
VALUES
('P1671TT',0,6,1,6,1
,0,6,1,6,1
,0,60,3,60,3
,0,12,0.5,12,0.5
,0,'เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์','เมื่อกดเปิดเครื่องต้องมีสัญญานไฟโชว์'
,0,'มีสัญญานเสียงเตือนอุณภูมิ','มีสัญญานเสียงเตือนอุณภูมิ'
,1,'1670T - 360F - 705M','1670T - 360F - 705M'
,0,'P1670/1','P1670/1'
,1,80,10,80,10
,0,5,0.2,5,0.2);
GO
