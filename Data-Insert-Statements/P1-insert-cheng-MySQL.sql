INSERT INTO Risk VALUES
	(1, 'Low'),
	(2, 'Medium'),
	(3, 'High');

INSERT INTO `Contact` (`contactID`,`CTid`,`notificationTime`,`contactTimeWithPatient`,`name`,`gender`,`age`,`phone`,`testResults`,`riskID`) VALUES 
		("vl_44","427121DF-AD2A-C513-6AA2-E69BC302402B","09/11/2020","08/31/2020","Raymond","Other",79,"004-505-7889",0,3),
		("yz_29","C82D9935-0D32-2ECB-D181-7174DF664EF1","08/14/2020","08/20/2020","Robin","Other",42,"528-313-6169",1,3),
		("qs_33","65790A18-E70C-7031-6317-C0A1F5BE1B52","09/15/2020","08/26/2020","Sasha","Male",64,"636-145-8152",1,2),
		("nl_78","2523DCD9-BC4C-7B6B-A607-ED1510BEB8B7","09/24/2020","08/30/2020","Patricia","Other",52,"786-586-7290",1,3),
		("ld_12","EECAAE5F-945E-69AD-32E4-88261AAB6CB8","08/24/2020","09/01/2020","Jacob","Female",39,"263-696-7465",0,1),
		("hk_69","427121DF-AD2A-C513-6AA2-E69BC302402B","09/02/2020","08/31/2020","Emerald","Other",79,"468-969-5731",1,2),
		("ns_34","C82D9935-0D32-2ECB-D181-7174DF664EF1","09/16/2020","09/08/2020","Sage","Other",82,"255-796-2603",0,1),
		("nq_98","65790A18-E70C-7031-6317-C0A1F5BE1B52","09/11/2020","09/18/2020","Mason","Female",55,"751-719-1986",0,1),
		("rt_16","2523DCD9-BC4C-7B6B-A607-ED1510BEB8B7","09/17/2020","08/02/2020","Cheyenne","Female",35,"668-850-1747",1,2),
		("mw_27","EECAAE5F-945E-69AD-32E4-88261AAB6CB8","09/22/2020","08/18/2020","Dolan","Female",22,"808-392-6328",1,2);

INSERT INTO `Patient` (`patientID`,`identificationTime`,`symptomOnsetTime`,`name`,`gender`,`age`,`phone`,`interviewTime`, `PIid`) VALUES 
	("1671013093599","08/28/2020","08/05/2020","Marah","Other",61,"168-334-3015","08/30/2020","164304021266"),
	("1690060623099","09/27/2020","08/22/2020","Randall","Female",79,"253-436-3243","09/01/2020","160211047832"),
	("1696110349499","09/21/2020","08/03/2020","Gabriel","Male",72,"412-833-5191","09/05/2020","162111028813"),
	("1603111719899","09/19/2020","08/12/2020","Bruce","Male",28,"985-870-7872","09/30/2020","164304021266"),
	("1687032071899","09/10/2020","08/24/2020","Darrel","Female",21,"847-740-2318","08/26/2020","160211047832"),
	("1609013017999","08/27/2020","08/26/2020","Chandler","Male",43,"839-663-6234","08/07/2020","167511266889"),
	("1634010339999","08/03/2020","08/13/2020","Camilla","Other",63,"658-508-6818","08/04/2020","167511266889"),
	("1621062182699","08/24/2020","08/31/2020","Yoko","Male",43,"786-573-1172","08/28/2020","165405291898"),
	("1634092934799","08/06/2020","08/26/2020","Stella","Female",52,"326-285-0996","08/04/2020","164304021266"),
	("1679042572199","09/28/2020","09/01/2020","Harper","Other",53,"352-818-0468","09/19/2020","162111028813");

INSERT INTO `Relationship` (`patientID`,`contactID`) VALUES 
	("1690060623099","ns_34"),
	("1603111719899","hk_69"),
	("1634010339999","qs_33"),
	("1634092934799","yz_29"),
	("1679042572199","vl_44"),
	("1690060623099","mw_27"),
	("1671013093599","ld_12"),
	("1634092934799","qs_33"),
	("1609013017999","nq_98"),
	("1696110349499","hk_69");

INSERT INTO `PatientInterviewer` (`PIid`,`departmentID`,`TAid`) VALUES 
	("164304021266","1683081052999","160407283720"),
	("167511266889","1673061707799","164805218205"),
	("162111028813","1648062424999","168408036393"),
	("160211047832","1677092812299","161405287358"),
	("165405291898","1673061707799","168212085362");

INSERT INTO `HealthDepartment` (`departmentID`,`address`,`phone`,`levelID`) VALUES 
	("1683081052999","8758 Diam. Avenue","960-379-4840",4),
	("1673061707799","7480 Nec Road","560-581-9532",1),
	("1648062424999","576-3061 Cursus Avenue","344-887-2578",3),
	("1677092812299","3902 Enim. Street","602-939-9425",2);

INSERT INTO DepartmentLevel VALUES
	(1, "state"),
	(2, "local"),
	(3, "tribal"),
	(4, "territorial");

INSERT INTO ContactAssignment VALUES
	("160407283720", "65790A18-E70C-7031-6317-C0A1F5BE1B52"),
	("164805218205", "EECAAE5F-945E-69AD-32E4-88261AAB6CB8"),
	("164805218205", "5E3638ED-C71C-B735-BAB9-C8E85C37D029"),
	("168212085362", "58611E5F-6F7C-A433-CE69-2C6A8434AAC1"),
	("168212085362", "25B0BD17-706F-15AD-8B82-7D6A2637A96A");
	

INSERT INTO ContactTracer (`CTid`,`Email`,`phone`,`departmentID`) VALUES 
    ("427121DF-AD2A-C513-6AA2-E69BC302402B","risus@miAliquam.org","(713) 782-0723","1683081052999"),
    ("C82D9935-0D32-2ECB-D181-7174DF664EF1","nonummy.ut@tincidunt.co.uk","(625) 496-8484","1683081052999"),
    ("65790A18-E70C-7031-6317-C0A1F5BE1B52","Phasellus@adipiscing.co.uk","(453) 661-1983","1648062424999"),
    ("2523DCD9-BC4C-7B6B-A607-ED1510BEB8B7","amet.ultricies.sem@a.com","(524) 872-9443","1683081052999"),
    ("EECAAE5F-945E-69AD-32E4-88261AAB6CB8","id.erat.Etiam@massarutrum.net","(385) 123-3277","1677092812299");

INSERT INTO TestCenter (`TCid`,`address`,`phone`) VALUES 
    ("0F08900A-DEE9-739E-5096-6899654CA947","952-7185 Sed Av.","(180) 404-5715"),
    ("C8FA18D1-5075-9E97-A0F8-04155E978045","589-4080 Amet Rd.","(512) 347-6713");

INSERT INTO MobileTestingSites (`TCid`,`startDate`,`endDate`,`community`) VALUES 
    ("0F08900A-DEE9-739E-5096-6899654CA947","11/09/2020","21/12/2019","Ap #584-1554 Nunc Street"),
    ("C8FA18D1-5075-9E97-A0F8-04155E978045","02/05/2020","10/12/2019","465-6474 Etiam St.");
  
INSERT INTO NeighborhoodTestSite (`TCid`,`postCode`) VALUES 
    ("0F08900A-DEE9-739E-5096-6899654CA947","20333"),
    ("C8FA18D1-5075-9E97-A0F8-04155E978045","44663");
   
INSERT INTO CityRunTestingSite (`TCid`,`cityName`,`appointmentAvailable`) VALUES 
    ("0F08900A-DEE9-739E-5096-6899654CA947","Oostkerk","No"),
    ("C8FA18D1-5075-9E97-A0F8-04155E978045","Montelupo Fiorentino","No");
    
INSERT INTO MedicalProvider (`MPid`,`address`,`phone`) VALUES 
    ("22","2997 Tempus, Ave","(164) 530-4896"),
    ("69","8071 Donec St.","(224) 422-0399"),
    ("20","P.O. Box 751, 9637 Blandit Rd.","(890) 387-0498");

INSERT INTO SupportServiceProvider (`SSPid`,`name`,`address`,`phone`) VALUES 
    ("25","Celeste Ray","Ap #867-6244 Ipsum. Ave","(282) 563-2296"),
    ("80","Ava Brennan","Ap #557-8346 Varius Rd.","(931) 385-6008");


INSERT INTO TestCenterReferral VALUES
    ("427121DF-AD2A-C513-6AA2-E69BC302402B","0F08900A-DEE9-739E-5096-6899654CA947"),
    ("C82D9935-0D32-2ECB-D181-7174DF664EF1","C8FA18D1-5075-9E97-A0F8-04155E978045");

INSERT INTO MedicalReferral VALUES
    ("EECAAE5F-945E-69AD-32E4-88261AAB6CB8","22"),
    ("C82D9935-0D32-2ECB-D181-7174DF664EF1","20");

INSERT INTO SupportServiceReferral VALUES
    ("2523DCD9-BC4C-7B6B-A607-ED1510BEB8B7","25"),
    ("C82D9935-0D32-2ECB-D181-7174DF664EF1","80");


INSERT INTO SupportServiceCustomer VALUES
    ("vl_44","25"),
    ("yz_29","80");

INSERT INTO MedicalProvidePatient VALUES
    ("nl_78","22"),
    ("ld_12","69");
    
INSERT INTO TestForContact VALUES
    ("ns_34","0F08900A-DEE9-739E-5096-6899654CA947"),
    ("mw_27","C8FA18D1-5075-9E97-A0F8-04155E978045");


INSERT INTO TriageAssociate VALUES
    ("160407283720","1683081052999"),
    ("164805218205","1683081052999"),
    ("168408036393","1683081052999"),
    ("161405287358","1648062424999"),
    ("168212085362","1648062424999");
