UPDATE AnalystEvaluations
SET rCODE='ADMS-15'
WHERE ReportTitle LIKE 'Advanced Distribution Management Systems%';

UPDATE AnalystEvaluations
SET rCODE='CBAS-14'
WHERE ReportTitle LIKE 'Commercial Building Automation Systems%';

UPDATE AnalystEvaluations
SET rCODE='CRES-14'
WHERE ReportTitle LIKE 'Community, Residential, and Commercial Energy Storage%';

UPDATE AnalystEvaluations
SET rCODE='DGESTN-15'
WHERE ReportTitle LIKE 'Distributed Generation And Energy Storage%';

UPDATE AnalystEvaluations
SET rCODE='EVCS-16'
WHERE ReportTitle LIKE 'Electric Vehicle Charging Services%';

UPDATE AnalystEvaluations
SET rCODE='ESCO-15'
WHERE ReportTitle LIKE 'Energy Service Company Market Overview';

UPDATE AnalystEvaluations
SET rCODE='ESET-15'
WHERE ReportTitle LIKE 'Energy Storage Enabling Technologies';

UPDATE AnalystEvaluations
SET rCODE='ESRI-15'
WHERE ReportTitle LIKE 'Energy Storage for Renewables Integration';

UPDATE AnalystEvaluations
SET rCODE='HVAC-15'
WHERE ReportTitle LIKE 'Energy-Efficient HVAC Systems for Commercial Buildings%';

UPDATE AnalystEvaluations
SET rCODE='GEIA-15'
WHERE ReportTitle LIKE 'Grid Edge Intelligence for DER Integration%';

UPDATE AnalystEvaluations
SET rCODE='IDCEM-15'
WHERE ReportTitle LIKE 'Integrated Data Center Energy Management%';

UPDATE AnalystEvaluations
SET rCODE='IOTRC-15'
WHERE ReportTitle LIKE '%IoT%for Residential Consumers%';

UPDATE AnalystEvaluations
SET rCODE='LB-DR-15'
WHERE ReportTitle LIKE '%Leaderboard%Demand Response%';

UPDATE AnalystEvaluations
SET rCODE='LB-LION-15'
WHERE ReportTitle LIKE '%Leaderboard%Lithium Ion%';

UPDATE AnalystEvaluations
SET rCODE='LB-STHERM-15'
WHERE ReportTitle LIKE '%Leaderboard%Smart Thermostats%';

UPDATE AnalystEvaluations
SET rCODE='LB-HEM-13'
WHERE ReportTitle LIKE '%Leaderboard%Home Energy Management%';

UPDATE AnalystEvaluations
SET rCODE='LB-MGC-15'
WHERE ReportTitle LIKE '%Leaderboard%Microgrid Controls%';

UPDATE AnalystEvaluations
SET rCODE='LB-LIGS-15'
WHERE ReportTitle LIKE '%Leaderboard%Li-Ion Grid Storage%';

UPDATE AnalystEvaluations
SET rCODE='OMS-14'
WHERE ReportTitle LIKE '%Outage Management Systems%';

UPDATE AnalystEvaluations
SET rCODE='SGIT-15'
WHERE ReportTitle LIKE '%Smart Grid IT Systems%';

UPDATE AnalystEvaluations
SET rCODE='SGNC-14'
WHERE ReportTitle LIKE '%Smart Grid Networking and Communications%';

UPDATE AnalystEvaluations
SET rCODE='UDM-14'
WHERE ReportTitle LIKE '%Utility Distribution Microgrids%';

UPDATE AnalystEvaluations
SET rCODE='VGI-15'
WHERE ReportTitle LIKE '%Vehicle Grid Integration%';

SELECT rCode, ReportTitle FROM AnalystEvaluations
WHERE ReportTitle LIKE '%Vehicle Grid Integration%';