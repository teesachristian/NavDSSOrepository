--- ALTER TABLE AnalystEvaluations ADD cID int;

UPDATE AnalystEvaluations SET cID=convert(int,cIDold)
SELECT cIDold, cID FROM AnalystEvaluations ORDER BY cID
ALTER TABLE AnalystEvaluations DROP COLUMN cIDold

