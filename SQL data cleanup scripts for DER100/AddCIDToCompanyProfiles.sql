USE TestOnly
---First, check whether CompanyProfilesFromSF table already has cID column
IF Exists 
	(Select * FROM sys.columns
	WHERE Name = N'cID' AND object_id = OBJECT_ID(N'[dbo.CompanyProfilesFromSF]'))
	--- i.e., check whether there exists an entry in the global table of all columns
	--- which has a column name matching cID (any case) and 
	--- and has an object ID corresponding to the database object named CompanyProfilesFromSF
	PRINT 'The column cID already exists in CompanyProfilesFromSF'
ELSE
	BEGIN
		alter table dbo.CompanyProfilesFromSF
		add cID int NOT NULL DEFAULT(0)
	END