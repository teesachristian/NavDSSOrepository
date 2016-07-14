Create View CompaniesAndEvalsAndReports As
Select Companies.cID as cID_C
	, AnalystEvaluations.cID as cID_AE
	, CompanyProfilesFromSF.cID as cID_CP
	, Companies.companyName as cName_C
	, AnalystEvaluations.companyName as cName_AE
	, CompanyProfilesFromSF."Account Name" as cName_CP
	, AnalystEvaluations.rCode as rCode_AE
	, CompanyProfilesFromSF.rCode as rCode_CP
	, NRReportsFromSF.rCode as rCode_NRR
	, Companies.companyURL
	, Companies.PublicOrPrivate
	, Companies.irURL
	, Companies.stockSymbol
	, AnalystEvaluations.MarketSegment
	, AnalystEvaluations.Vision
	, AnalystEvaluations.Implementation
	, AnalystEvaluations.TechInnovation
	, AnalystEvaluations.TechIntegration
	, AnalystEvaluations.Total as TotalScore
	, AnalystEvaluations.IncumbentOrDisruptor
	, AnalystEvaluations.LeadingOrNot
	, AnalystEvaluations.Analyst
	, CompanyProfilesFromSF."Report Profile Name" 
	, CompanyProfilesFromSF.Profile
	, NRReportsFromSF."Actual Published Date" as Published_NRR
	, NRReportsFromSF.Title as NRReportTitle
	, NRReportsFromSF."Primary Author: Staff Name" as PrimaryAuthor
	, NRReportsFromSF."Content Manager: Staff Name" as ContentManager
	, NRReportsFromSF."Program Area" as ProgramArea
	, NRReportsFromSF."Research Service" as ResearchService
FROM 
	AnalystEvaluations
--- COMMENT: To include records for company-report pairs that have a company profile 
--- and no analyst evalution, use FULL OUTER JOIN
---		FULL OUTER JOIN CompanyProfilesFromSF 
		LEFT OUTER JOIN CompanyProfilesFromSF
			ON
				(CompanyProfilesFromSF.cID = AnalystEvaluations.cID 
				AND CompanyProfilesFromSF.rCode = AnalystEvaluations.rCode)
		INNER JOIN Companies
			ON
				(Companies.cID = AnalystEvaluations.cID
				OR Companies.cID = CompanyProfilesFromSF.cID)
		INNER JOIN NRReportsFromSF
			ON
				(NRReportsFromSF.rCode = AnalystEvaluations.rCode
				OR NRReportsFromSF.rCode = CompanyProfilesFromSF.rCode) 
WHERE 
	(CompanyProfilesFromSF.cID is not NULL 
	OR AnalystEvaluations.cID is not NULL)