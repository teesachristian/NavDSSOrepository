Create View CompaniesAndEvalsAndReports As
Select Companies.cID as cID_C
	, AnalystEvaluations.cID as cID_AE
	, CompanyProfilesFromSF.cID as cID_CP
	, Companies.companyName as cName_C
	, Companies.companyNameNow as cNameNow
	, Companies.companyNameNotes as cNameNotes
	, AnalystEvaluations.CompanyName as cName_AE
	, CompanyProfilesFromSF.[Account Name] as cName_CP
	, AnalystEvaluations.rCode as rCode_AE
	, CompanyProfilesFromSF.[NR Report: Report Code] as rCode_CP
	, NRReportsFromSF.[NR Report: Report Code] as rCode_NRR
	, Companies.CompanyURL
	, Companies.PublicOrPrivate
	, Companies.irURL
	, Companies.StockSymbol
	, Companies.CountryOfCompanyHQ as country_C
	, CompanyProfilesFromSF.[Billing Country] as country_CP
	, AnalystEvaluations.MarketSegment
	, AnalystEvaluations.Vision
	, AnalystEvaluations.Implementation
	, AnalystEvaluations.TechInnovation
	, AnalystEvaluations.TechIntegration
	, AnalystEvaluations.TotalScore as TotalScore
	, AnalystEvaluations.IncumbentOrDisruptor
	, AnalystEvaluations.LeadingOrNot
	, AnalystEvaluations.Analyst
	, CompanyProfilesFromSF.[Report Profile: Report Profile Name] as ReportProfileName
	, CompanyProfilesFromSF.Profile
	, NRReportsFromSF.[Actual Published Date] as Published_NRR
	, NRReportsFromSF.Title as NRReportTitle
	, NRReportsFromSF.[Primary Author] as PrimaryAuthor
	, NRReportsFromSF.[Content Manager] as ContentManager
	, NRReportsFromSF.[Program Area] as ProgramArea
	, NRReportsFromSF.[Research Service] as ResearchService
FROM 
	AnalystEvaluations
--- COMMENT: To include records for company-report pairs that have a company profile 
--- and no analyst evalution, use FULL OUTER JOIN
---		FULL OUTER JOIN CompanyProfilesFromSF 
		LEFT OUTER JOIN CompanyProfilesFromSF
			ON
				(CompanyProfilesFromSF.cID = AnalystEvaluations.cID 
				AND CompanyProfilesFromSF.[NR Report: Report Code] = AnalystEvaluations.rCode)
		INNER JOIN Companies
			ON
				(Companies.cID = AnalystEvaluations.cID
				OR Companies.cID = CompanyProfilesFromSF.cID)
		INNER JOIN NRReportsFromSF
			ON
				(NRReportsFromSF.[NR Report: Report Code] = AnalystEvaluations.rCode
				OR NRReportsFromSF.[NR Report: Report Code] = CompanyProfilesFromSF.[NR Report: Report Code]) 
WHERE 
	(CompanyProfilesFromSF.cID is not NULL 
	OR AnalystEvaluations.cID is not NULL)