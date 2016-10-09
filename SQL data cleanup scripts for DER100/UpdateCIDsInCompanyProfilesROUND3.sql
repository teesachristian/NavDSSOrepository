USE TestOnly

/* Correct a recurring misspelling of Philips Lighting: */
UPDATE dbo.CompanyProfilesFromSF SET "Account Name"='Philips Lighting' 
WHERE "Account Name" LIKE 'Phillips Lighting'

-- start by resetting all cID's to 0.  Because I am trying to set them all in once using this script.
UPDATE dbo.CompanyProfilesFromSF SET cID=0

/* Update companyID for the companies in ROUND3, based on Account Name matching */
UPDATE dbo.CompanyProfilesFromSF SET cID=1346 WHERE "Account Name" LIKE '%Zonoff%';
UPDATE CompanyProfilesFromSF SET cID=1345 WHERE "Account Name" LIKE 'Younicos%';
UPDATE CompanyProfilesFromSF SET cID=1344 WHERE "Account Name" LIKE 'xMachina%';
UPDATE CompanyProfilesFromSF SET cID=1343 WHERE "Account Name" LIKE 'Wisconsin Public Service%';
UPDATE CompanyProfilesFromSF SET cID=1342 WHERE "Account Name" LIKE 'Win Inertia%';
UPDATE CompanyProfilesFromSF SET cID=1341 WHERE "Account Name" LIKE 'WeatherBug%';
UPDATE CompanyProfilesFromSF SET cID=1340 WHERE "Account Name" LIKE 'WattStopper%';
UPDATE CompanyProfilesFromSF SET cID=1339 WHERE "Account Name" LIKE 'W%rtsil%'; -- "Wartsila Corporation", Finnish special characters
UPDATE CompanyProfilesFromSF SET cID=1182 WHERE "Account Name" LIKE '%iDirect%'; -- "VTiDirect", formerly "iDirect"
UPDATE CompanyProfilesFromSF SET cID=1338 WHERE "Account Name" LIKE 'Vivint%Solar%'; -- "Vivint Solar", not to be confused with "Vivint"
UPDATE CompanyProfilesFromSF SET cID=1337 WHERE "Account Name" LIKE 'Vivint%' AND "Account Name" NOT LIKE 'Vivint%Solar%';
UPDATE CompanyProfilesFromSF SET cID=1336 WHERE "Account Name" LIKE 'Viridity%Energy%';
UPDATE CompanyProfilesFromSF SET cID=1335 WHERE "Account Name" LIKE 'VIA%Motors%';
UPDATE CompanyProfilesFromSF SET cID=1334 WHERE "Account Name" LIKE 'Verizon%';
UPDATE CompanyProfilesFromSF SET cID=1332 WHERE "Account Name" LIKE 'Varentec%';
UPDATE CompanyProfilesFromSF SET cID=1331 WHERE "Account Name" LIKE 'Utilidata%';
UPDATE CompanyProfilesFromSF SET cID=1330 WHERE "Account Name" LIKE 'Urban Green Energy%';
UPDATE CompanyProfilesFromSF SET cID=1329 WHERE "Account Name" LIKE 'United Technologies%';
UPDATE CompanyProfilesFromSF SET cID=1328 WHERE "Account Name" LIKE 'Unikey%';
UPDATE CompanyProfilesFromSF SET cID=1327 WHERE "Account Name" LIKE 'Trojan Battery%';
UPDATE CompanyProfilesFromSF SET cID=1326 WHERE "Account Name" LIKE 'Trina Solar%';
UPDATE CompanyProfilesFromSF SET cID=1325 WHERE "Account Name" LIKE 'Trilliant Networks%';
UPDATE CompanyProfilesFromSF SET cID=1324 WHERE "Account Name" LIKE 'Trane%';
UPDATE CompanyProfilesFromSF SET cID=1323 WHERE "Account Name" LIKE 'Toshiba Corp%'; -- "Toshiba Corporation", not "Toshiba Toko Meter Systems Co, Ltd"
UPDATE CompanyProfilesFromSF SET cID=1322 WHERE "Account Name" LIKE 'Tollgrade Communications%'
UPDATE CompanyProfilesFromSF SET cID=1321 WHERE "Account Name" LIKE 'TimberRock Energy Solutions%'
UPDATE CompanyProfilesFromSF SET cID=1320 WHERE "Account Name" LIKE 'Tianjin Lishen Battery%'
UPDATE CompanyProfilesFromSF SET cID=1319 WHERE "Account Name" LIKE 'Thingworx%'
UPDATE CompanyProfilesFromSF SET cID=1318 WHERE "Account Name" LIKE 'Tesla Motors%'
UPDATE CompanyProfilesFromSF SET cID=1317 WHERE "Account Name" LIKE 'Tendril Networks%'
UPDATE CompanyProfilesFromSF SET cID=1316 WHERE "Account Name" LIKE 'Telecom Italia%'
UPDATE CompanyProfilesFromSF SET cID=1315 WHERE "Account Name" LIKE 'Tecogen%'
UPDATE CompanyProfilesFromSF SET cID=1314 WHERE "Account Name" LIKE 'TDX Power%'
UPDATE CompanyProfilesFromSF SET cID=1313 WHERE "Account Name" LIKE 'Tantalus%'
UPDATE CompanyProfilesFromSF SET cID=1312 WHERE "Account Name" LIKE 'tado%'
UPDATE CompanyProfilesFromSF SET cID=1311 WHERE "Account Name" LIKE 'Swisscom%'
UPDATE CompanyProfilesFromSF SET cID=1310 WHERE "Account Name" LIKE 'Survalent Technology%'
UPDATE CompanyProfilesFromSF SET cID=1309 WHERE "Account Name" LIKE 'Sunverge Energy%'
UPDATE CompanyProfilesFromSF SET cID=1308 WHERE "Account Name" LIKE 'SunRun%'
UPDATE CompanyProfilesFromSF SET cID=1307 WHERE "Account Name" LIKE 'Sunpower Corporation%'
UPDATE CompanyProfilesFromSF SET cID=1306 WHERE "Account Name" LIKE 'SunEdison%'
UPDATE CompanyProfilesFromSF SET cID=1305 WHERE "Account Name" LIKE 'STEM%'
UPDATE CompanyProfilesFromSF SET cID=1304 WHERE "Account Name" LIKE 'SSE%'
UPDATE CompanyProfilesFromSF SET cID=1303 WHERE "Account Name" LIKE 'Sprint%'
UPDATE CompanyProfilesFromSF SET cID=1302 WHERE "Account Name" LIKE 'Spirae%'
UPDATE CompanyProfilesFromSF SET cID=1301 WHERE "Account Name" LIKE 'Space-Time Insight%'
UPDATE CompanyProfilesFromSF SET cID=1300 WHERE "Account Name" LIKE 'Sony%'
UPDATE CompanyProfilesFromSF SET cID=1299 WHERE "Account Name" LIKE 'sonnen%' -- Often called "Sonnenbatterie"
UPDATE CompanyProfilesFromSF SET cID=1298 WHERE "Account Name" LIKE 'SolarCity%'
UPDATE CompanyProfilesFromSF SET cID=1297 WHERE "Account Name" LIKE 'Smith Electric Vehicles%'
UPDATE CompanyProfilesFromSF SET cID=1296 WHERE "Account Name" LIKE 'SmartCloud%'
UPDATE CompanyProfilesFromSF SET cID=1295 WHERE "Account Name" LIKE 'Smart Utility Systems%'
UPDATE CompanyProfilesFromSF SET cID=1294 WHERE "Account Name" LIKE 'Sky Foundry%'
UPDATE CompanyProfilesFromSF SET cID=1293 WHERE "Account Name" LIKE 'Silver Spring Networks%'
UPDATE CompanyProfilesFromSF SET cID=1292 WHERE "Account Name" LIKE 'Silicon Labs%'
UPDATE CompanyProfilesFromSF SET cID=1291 WHERE "Account Name" LIKE 'Siemens%AG' -- Do not include "Siemens Energy", a subsidiary.
UPDATE CompanyProfilesFromSF SET cID=1290 WHERE "Account Name" LIKE 'Sharp Laboratories of America%'
UPDATE CompanyProfilesFromSF SET cID=1289 WHERE "Account Name" LIKE 'Setpoint Systems%'
UPDATE CompanyProfilesFromSF SET cID=1288 WHERE "Account Name" LIKE 'Sensus%'
UPDATE CompanyProfilesFromSF SET cID=1286 WHERE "Account Name" LIKE 'Schneider Electric%USA%'
UPDATE CompanyProfilesFromSF SET cID=1285 WHERE "Account Name" LIKE 'Schneider Electric SA%' -- Do not include "Schneider Electric Usa, Inc.", coded separately.
UPDATE CompanyProfilesFromSF SET cID=1284 WHERE "Account Name" LIKE 'Savant%'
UPDATE CompanyProfilesFromSF SET cID=1283 WHERE "Account Name" LIKE 'SAS Institute%'
UPDATE CompanyProfilesFromSF SET cID=1282 WHERE "Account Name" LIKE 'SAP%'
UPDATE CompanyProfilesFromSF SET cID=1281 WHERE "Account Name" LIKE 'San Diego Gas%Electric%'
UPDATE CompanyProfilesFromSF SET cID=1280 WHERE "Account Name" LIKE 'Samsung%SDI%'
UPDATE CompanyProfilesFromSF SET cID=1279 WHERE "Account Name" LIKE 'Samsung%Electronics%'
UPDATE CompanyProfilesFromSF SET cID=1278 WHERE "Account Name" LIKE 'Saft%'
UPDATE CompanyProfilesFromSF SET cID=1277 WHERE "Account Name" LIKE 'Sacramento Municipal Utility District%'
UPDATE CompanyProfilesFromSF SET cID=1276 WHERE "Account Name" LIKE 'S&C%' -- "S&C Electric Company"
UPDATE CompanyProfilesFromSF SET cID=1274 WHERE "Account Name" LIKE 'Rogers Communications%'
UPDATE CompanyProfilesFromSF SET cID=1273 WHERE "Account Name" LIKE 'Rockwell Automation%'
UPDATE CompanyProfilesFromSF SET cID=1272 WHERE "Account Name" LIKE 'Robert Bosch GmbH' -- Do not include various subdiaries named "Robert Bosch ___"
UPDATE CompanyProfilesFromSF SET cID=1271 WHERE "Account Name" LIKE 'Robert Bosch Car Multimedia Holding%'
UPDATE CompanyProfilesFromSF SET cID=1270 WHERE "Account Name" LIKE 'Ring%' OR "Account Name" LIKE 'Doorbot%' -- "Ring", formerly known as "Doorbot"
UPDATE CompanyProfilesFromSF SET cID=1268 WHERE "Account Name" LIKE 'RES Americas%'
UPDATE CompanyProfilesFromSF SET cID=1267 WHERE "Account Name" LIKE 'ReliOn%'
UPDATE CompanyProfilesFromSF SET cID=1266 WHERE "Account Name" LIKE 'Reliable Controls%'
UPDATE CompanyProfilesFromSF SET cID=1264 WHERE "Account Name" LIKE 'RedFlow%'
UPDATE CompanyProfilesFromSF SET cID=1263 WHERE "Account Name" LIKE 'Rainforest Automation%'
UPDATE CompanyProfilesFromSF SET cID=1262 WHERE "Account Name" LIKE 'Radio Thermostat Company of America%'
UPDATE CompanyProfilesFromSF SET cID=1261 WHERE "Account Name" LIKE 'RAD' OR "Account Name" LIKE 'RAD Data Communications%'
UPDATE CompanyProfilesFromSF SET cID=1260 WHERE "Account Name" LIKE 'Public Service Enterprise Group%'
UPDATE CompanyProfilesFromSF SET cID=1259 WHERE "Account Name" LIKE 'Princeton Power System%'
UPDATE CompanyProfilesFromSF SET cID=1349 WHERE "Account Name" LIKE 'PowerStream%'
UPDATE CompanyProfilesFromSF SET cID=1258 WHERE "Account Name" LIKE 'PowerSecure%'
UPDATE CompanyProfilesFromSF SET cID=1257 WHERE "Account Name" LIKE 'PowerIt Solutions%'
UPDATE CompanyProfilesFromSF SET cID=1256 WHERE "Account Name" LIKE 'Powerhouse Dynamics%'
UPDATE CompanyProfilesFromSF SET cID=1255 WHERE "Account Name" LIKE 'PlotWatt%'
UPDATE CompanyProfilesFromSF SET cID=1254 WHERE "Account Name" LIKE 'Philips Lighting North America%'
UPDATE CompanyProfilesFromSF SET cID=1253 WHERE "Account Name" LIKE 'Philips Lighting' OR "Account Name" LIKE 'Philips Lighting B.V.'
UPDATE CompanyProfilesFromSF SET cID=1252 WHERE "Account Name" LIKE 'Perkins%' -- "Perkins Engines Company, Ltd"
UPDATE CompanyProfilesFromSF SET cID=1251 WHERE "Account Name" LIKE 'Pepco Energy Services%'
UPDATE CompanyProfilesFromSF SET cID=1250 WHERE "Account Name" LIKE 'Pareto Energy%'
UPDATE CompanyProfilesFromSF SET cID=1249 WHERE "Account Name" LIKE 'Panoramic Power%'
UPDATE CompanyProfilesFromSF SET cID=1248 WHERE "Account Name" LIKE 'Panasonic Corporation' -- Do not include subsidiary "Panasonic Corporation of North America"
UPDATE CompanyProfilesFromSF SET cID=1247 WHERE "Account Name" LIKE 'Pacific Gas%Electric%'
UPDATE CompanyProfilesFromSF SET cID=1246 WHERE "Account Name" LIKE 'Pacific Controls%'
UPDATE CompanyProfilesFromSF SET cID=1245 WHERE "Account Name" LIKE 'Osram%GmbH' -- Do not include "Osram-Sylvania"

SELECT cID, [Account Name],Profile FROM dbo.CompanyProfilesFromSF WHERE "Account Name" LIKE '%Osram%'

