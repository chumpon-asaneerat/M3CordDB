INSERT INTO Customer(CustomerName) 
  VALUES
  ('TGRT'),
  ('BREAK INDIA'),
  ('NIPPON FELT'),
  ('NICHIRIN VIETNAM');
GO

INSERT INTO CustomerProduct(CustomerName, ProductCode, ServiceLifeMonth, [Remark]) 
  VALUES
  ('TGRT',             'P1402TRH',  6, NULL),
  ('BSCBF',            'KT3S71',    6, NULL),
  ('BS Japan',         'KT3R16',    6, NULL),
  ('NICHIRIN',         '4673',     12, NULL),
  ('NICHIRIN VIETNAM', '8335',     12, NULL),
  ('KOSEN',            'P1670T1R',  6, NULL),
  ('KOSEN',            'H1671T',   12, NULL),
  ('KOSEN',            'P1671T',    6, NULL),
  ('KOSEN',            'P1671TT',   6, NULL),
  ('KOSEN',            'P1100TT',   6, NULL),
  ('FLEXITECH',        'P1100ZFT', 12, NULL),
  ('BREAK INDIA',      'P1100BI',   6, NULL),
  ('NIPPON FELT',      '2220ABT',   6, NULL),
  ('NIPPON FELT',      '3220ABT',   6, NULL),
  ('PT.SEIWA',         'R10023',   12, N'เบอร์ชุดการผลิต'),
  ('BANDO',            '9A1100L',  12, N'เบอร์ชุดการผลิต'),
  ('BANDO',            '9A0663L',  12, N'เบอร์ชุดการผลิต'),
  ('BANDO',            '9H0663SL', 12, N'เบอร์ชุดการผลิต'),
  ('BANDO',            '9H-0663L', 12, N'เบอร์ชุดการผลิต');
GO
