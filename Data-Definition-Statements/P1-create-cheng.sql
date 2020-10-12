DROP TABLE IF EXISTS HealthDepartment;
CREATE TABLE  HealthDepartment (
    departmentID TEXT NOT NULL,
    address TEXT,
    phone VARCHAR(25),
    PRIMARY KEY (departmentID)
);

DROP TABLE IF EXISTS ContactAssignment;
CREATE TABLE ContactAssignment (
    TAid TEXT NOT NULL,
    CTid TEXT NOT NULL,
    PRIMARY KEY (TAid, CTid),
    FOREIGN KEY (TAid) REFERENCES TriageAssociate (TAid),
    FOREIGN KEY (CTid) REFERENCES ContactTracer (CTid)
);

DROP TABLE IF EXISTS PatientInterviewer;
CREATE TABLE PatientInterviewer (
    PIid TEXT NOT NULL,
    departmentID TEXT,
    TAid TEXT,
    PRIMARY KEY (PIid),
    FOREIGN KEY (departmentID) REFERENCES HealthDepartment(departmentID),
    FOREIGN KEY (TAid) REFERENCES TriageAssociate(TAid)
);

DROP TABLE IF EXISTS TestForContact;
CREATE TABLE TestForContact (
    contactID TEXT NOT NULL,
    TCid TEXT NOT NULL,
    PRIMARY KEY (contactID, TCid),
    FOREIGN KEY (contactID) REFERENCES Contact(contactID),
    FOREIGN KEY (TCid) REFERENCES TestCenter(TCid)
);

DROP TABLE IF EXISTS TestCenter;
CREATE TABLE TestCenter (
    TCid TEXT NOT NULL,
    address TEXT,
    phone VARCHAR(25),
    PRIMARY KEY (TCid)
);

DROP TABLE IF EXISTS MedicalProvidePatient;
CREATE TABLE MedicalProvidePatient (
    contactID TEXT NOT NULL,
    MPid TEXT NOT NULL,
    PRIMARY KEY (contactID, MPid),
    FOREIGN KEY (contactID) REFERENCES Contact(contactID),
    FOREIGN KEY (MPid) REFERENCES MedicalProvider(MPid)
);

DROP TABLE IF EXISTS Risk;
CREATE TABLE Risk (
    riskID TEXT NOT NULL,
    risk TEXT,
    PRIMARY KEY (riskID)
);

DROP TABLE IF EXISTS DepartmentAndLevel;
CREATE TABLE DepartmentAndLevel (
    levelID TEXT NOT NULL,
    level TEXT,
    PRIMARY KEY (levelID)
);