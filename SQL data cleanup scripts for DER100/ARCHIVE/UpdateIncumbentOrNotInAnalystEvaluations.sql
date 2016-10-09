UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 1
UPDATE AnalystEvaluations SET LeadingOrNot = 'Leading' WHERE cID = 1
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 13
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Disruptor' WHERE cID = 14
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 15
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 19
UPDATE AnalystEvaluations SET LeadingOrNot = 'Leading' WHERE cID = 19
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 2
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 26
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 28
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 30
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Disruptor' WHERE cID = 35
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 38 AND MarketSegment = 'Energy Storage'
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Disruptor' WHERE cID = 38 AND MarketSegment = 'Distributed Generation'
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 39
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 40 and MarketSegment = 'Microgrids'
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 41 and MarketSegment = 'Smart Grid'
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Disruptor' WHERE cID = 43 and MarketSegment = 'Energy Storage'
UPDATE AnalystEvaluations SET LeadingOrNot = 'Leading' WHERE cID = 43 and MarketSegment = 'Energy Storage'
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Disruptor' WHERE cID = 52 and MarketSegment = 'Energy Storage'
UPDATE AnalystEvaluations SET LeadingOrNot = 'Leading' WHERE cID = 52 and MarketSegment = 'Energy Storage'
UPDATE AnalystEvaluations SET IncumbentOrDisruptor = 'Incumbent' WHERE cID = 8 and MarketSegment = 'Distributed Generation'
UPDATE AnalystEvaluations SET LeadingOrNot = 'Leading' WHERE cID = 8 and MarketSegment = 'Distributed Generation'

Select cID, companyName, MarketSegment, rCode, IncumbentOrDisruptor, LeadingOrNot
FROM AnalystEvaluations
ORDER BY cID