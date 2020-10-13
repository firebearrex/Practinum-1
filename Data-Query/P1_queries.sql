-- Q1. List the emails of tracers who work at state level health department
SELECT Email
FROM ContactTracer AS CT
JOIN (SELECT departmentID 
	FROM HealthDepartment AS HD
	JOIN DepartmentLevel AS DL ON HD.levelID = DL.levelID
	WHERE level = "state") AS DI ON CT.departmentID = DI.departmentID;


-- Q2. list contact IDs who are at high risk and have taken test
SELECT TFC.contactID
FROM TestForContact as TFC
JOIN (SELECT Contact.contactID
	FROM Contact
	JOIN Risk  ON Risk.riskID=Contact.riskID
	WHERE risk="high") AS CT 
ON CT.contactID=TFC.contactID;


-- Q3. list the department IDs who has more than 3 Triage Associates
SELECT HD.departmentID
FROM HealthDepartment AS HD
JOIN TriageAssociate AS TA ON HD.departmentID=TA.departmentID
GROUP BY HD.departmentID
HAVING COUNT (TAid) > 3;


-- Q4. list the IDs of Patient Interveiwers who has patients aging between 18 to 50 years old
SELECT PI.PIid
FROM PatientInterviewer AS PI
JOIN Patient AS P
ON PI.PIid=P.PIid
WHERE P.age > 18 AND P.age < 50;


-- Q5. Get the total number of contacts tested at city-run test center grouped by city
SELECT cityName,
       CRTS.TCid,
       countOfContacts,
       AVG(countOfContacts) OVER(PARTITION BY CRTS.cityName) AS avgNumberOfTestedContacts,
	   SUM(countOfContacts) OVER(PARTITION BY CRTS.cityName) AS totalNumberOfTestedContacts
FROM CityRunTestingSite as CRTS
JOIN (SELECT COUNT (contactID) countOfContacts, TFC.TCid
	FROM TestForContact AS TFC
	JOIN CityRunTestingSite AS CRTS
	ON TFC.TCid = CRTS.TCid
	GROUP BY TFC.TCid) AS countContact_TC
ON CRTS.TCid = countContact_TC.TCid;
