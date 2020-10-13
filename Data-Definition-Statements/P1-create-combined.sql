DROP TABLE IF EXISTS demo;

DROP TABLE IF EXISTS HealthDepartment;
CREATE TABLE  HealthDepartment (
    departmentID TEXT NOT NULL,
    address TEXT,
    phone VARCHAR(25),
    levelID Text,
    PRIMARY KEY (departmentID),
    FOREIGN KEY (levelID) REFERENCES DepartmentLevel(levelID)
);

DROP TABLE IF EXISTS DepartmentLevel;
CREATE TABLE DepartmentLevel (
  levelID Text PRIMARY KEY,
  level VARCHAR(255)
);

DROP TABLE IF EXISTS TriageAssociate;
CREATE TABLE TriageAssociate (
  TAid TEXT,
  departmentID TEXT NOT NULL,
  PRIMARY KEY (TAid)
);

DROP TABLE IF EXISTS TestCenter;
CREATE TABLE TestCenter (
    TCid TEXT NOT NULL,
    address TEXT,
    phone VARCHAR(25),
    PRIMARY KEY (TCid)
);

DROP TABLE IF EXISTS MobileTestingSites;
CREATE TABLE MobileTestingSites (
  TCid Text NOT NULL UNIQUE,
  startDate Date,
  endDate Date,
  community varchar(255),
  PRIMARY KEY(TCid),
  FOREIGN KEY(TCid)
      REFERENCES TestCenter(TCid)
);

DROP TABLE IF EXISTS CityRunTestingSite;
CREATE TABLE CityRunTestingSite (
  TCid TEXT,
  cityName VARCHAR(255) NOT NULL,
  appointmentAvailable BOOLEAN NOT NULL,
  PRIMARY KEY (TCid),
  FOREIGN KEY (TCid) REFERENCES TestCenter (TCid)
);

DROP TABLE IF EXISTS SupportServiceProvider;
CREATE TABLE SupportServiceProvider (
  SSPid Text PRIMARY KEY,
  name varchar(255),
  affiliation Text,
  address Text,
  phone varchar(25)
);

DROP TABLE IF EXISTS MedicalProvider;
CREATE TABLE MedicalProvider (
  MPid TEXT NOT NULL UNIQUE,
  affiliation varchar(255),
  address Text,
  phone varchar(25),
  PRIMARY KEY (MPid)
);

DROP TABLE IF EXISTS NeighborhoodTestSite;
CREATE TABLE NeighborhoodTestSite (
  TCid Text,
  postCode int,
  PRIMARY KEY (TCid),
  FOREIGN KEY (TCid)
      REFERENCES TestCenter(TCid)
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

DROP TABLE IF EXISTS Patient;
CREATE TABLE Patient (
   patientID Text PRIMARY KEY,
   identificationTime Date,
   symptomOnsetTime date,
   name VARCHAR(255),
   gender VARCHAR(255),
   age INT,
   phone varchar(25),
   interviewTime Date,
   PIid Text,
   FOREIGN KEY(PIid)
       REFERENCES PatientInterviewer (PIid)
       ON UPDATE RESTRICT ON DELETE CASCADE
); 

DROP TABLE IF EXISTS Relationship;
CREATE TABLE Relationship (
  patientID Text,
  contactID Text,
  Primary KEY(patientID, contactID),
  FOREIGN KEY(patientID)
      REFERENCES Patient(patientID),
  FOREIGN KEY(contactID)
      REFERENCES Contact(contactID)
);

DROP TABLE IF EXISTS TestCenterReferral;
CREATE TABLE TestCenterReferral (
  CTid Text,
  TCid Text,
  Primary KEY(CTid, TCid),
  FOREIGN KEY(CTid)
      REFERENCES ContactTracer(CTid),
  FOREIGN KEY(TCid)
      REFERENCES TestCenter(TCid)
);

DROP TABLE IF EXISTS ContactTracer;
CREATE TABLE ContactTracer (
  CTid TEXT,
  Email TEXT NOT NULL UNIQUE,
  phone VARCHAR(25) NOT NULL,
  departmentID TEXT NOT NULL,  
  PRIMARY KEY (CTid),
  FOREIGN KEY (departmentID) REFERENCES HealthDepartment (departmentID)
);

DROP TABLE IF EXISTS SupportServiceReferral;
CREATE TABLE SupportServiceReferral (
  SSPid TEXT,
  CTid TEXT,
  PRIMARY KEY (SSPid, CTid),
  FOREIGN KEY (SSPid) REFERENCES SupportServiceProvider (SSPid),
  FOREIGN KEY (CTid) REFERENCES ContactTracer (CTid)
);

DROP TABLE IF EXISTS Contact;
CREATE TABLE Contact (
  contactID TEXT,
  CTid TEXT,
  notificationTime DATE NOT NULL,
  contactTimeWithPatient DATE NOT NULL,
  name VARCHAR(255) NOT NULL,
  gender ENUM('Male', 'Female', 'Other'),
  age INT,
  phone VARCHAR(25) NOT NULL,
  testResults BOOLEAN NOT NULL,
  riskID TEXT,
  PRIMARY KEY (contactID),
  FOREIGN KEY (CTid) REFERENCES ContactTracer (CTid),
  FOREIGN KEY (riskID) REFERENCES Risk (riskID)
);

DROP TABLE IF EXISTS Risk;
CREATE TABLE Risk (
  riskID TEXT,
  risk VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY (riskID)
);

DROP TABLE IF EXISTS SupportServiceCustomer;
CREATE TABLE SupportServiceCustomer (
  contactID TEXT,
  SSPid TEXT,
  PRIMARY KEY(contactID, SSPid),
  FOREIGN KEY (SSPid) REFERENCES SupportServiceProvider (SSPid),
  FOREIGN KEY (contactID) REFERENCES Contact (contactID)
);

DROP TABLE IF EXISTS MedicalReferral;
CREATE TABLE MedicalReferral (
  CTid TEXT,
  MPid TEXT,
  PRIMARY KEY (CTid, MPid),
  FOREIGN KEY (CTid) REFERENCES ContactTracer (CTid),
  FOREIGN KEY (MPid) REFERENCES MedicalProvider (MPid)
);

DROP TABLE IF EXISTS ContactAssignment;
CREATE TABLE ContactAssignment (
    TAid TEXT NOT NULL,
    CTid TEXT NOT NULL,
    PRIMARY KEY (TAid, CTid),
    FOREIGN KEY (TAid) REFERENCES TriageAssociate (TAid),
    FOREIGN KEY (CTid) REFERENCES ContactTracer (CTid)
);

DROP TABLE IF EXISTS TestForContact;
CREATE TABLE TestForContact (
    contactID TEXT NOT NULL,
    TCid TEXT NOT NULL,
    PRIMARY KEY (contactID, TCid),
    FOREIGN KEY (contactID) REFERENCES Contact(contactID),
    FOREIGN KEY (TCid) REFERENCES TestCenter(TCid)
);

DROP TABLE IF EXISTS MedicalProvidePatient;
CREATE TABLE MedicalProvidePatient (
    contactID TEXT NOT NULL,
    MPid TEXT NOT NULL,
    PRIMARY KEY (contactID, MPid),
    FOREIGN KEY (contactID) REFERENCES Contact(contactID),
    FOREIGN KEY (MPid) REFERENCES MedicalProvider(MPid)
);
