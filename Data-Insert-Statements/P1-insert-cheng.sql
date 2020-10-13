INSERT INTO Risk VALUES
	('1', 'Low'),
	('2', 'Medium'),
	('3', 'High');

INSERT INTO `Contact` (`contactID`,`CTid`,`notificationTime`,`contactTimeWithPatient`,`name`,`gender`,`age`,`phone`,`testResults`,`riskID`) VALUES 
	("vl_44","427121DF-AD2A-C513-6AA2-E69BC302402B","09/11/2020","08/31/2020","Raymond","Other",79,"004-505-7889","False",3),
	("yz_29","C82D9935-0D32-2ECB-D181-7174DF664EF1","08/14/2020","08/20/2020","Robin","Other",42,"528-313-6169","True",3),
	("qs_33","65790A18-E70C-7031-6317-C0A1F5BE1B52","09/15/2020","08/26/2020","Sasha","Male",64,"636-145-8152","True",2),
	("nl_78","2523DCD9-BC4C-7B6B-A607-ED1510BEB8B7","09/24/2020","08/30/2020","Patricia","Other",52,"786-586-7290","True",3),
	("ld_12","EECAAE5F-945E-69AD-32E4-88261AAB6CB8","08/24/2020","09/01/2020","Jacob","Female",39,"263-696-7465","False",1),
	("hk_69","5E3638ED-C71C-B735-BAB9-C8E85C37D029","09/02/2020","08/31/2020","Emerald","Other",79,"468-969-5731","True",2),
	("ns_34","58611E5F-6F7C-A433-CE69-2C6A8434AAC1","09/16/2020","09/08/2020","Sage","Other",82,"255-796-2603","False",1),
	("nq_98","D2F3A676-80BA-CAE3-45EA-F3B424B6D791","09/11/2020","09/18/2020","Mason","Female",55,"751-719-1986","False",1),
	("rt_16","1A27F66A-EAE5-E545-4871-9B1D501A23D6","09/17/2020","08/02/2020","Cheyenne","Female",35,"668-850-1747","True",2),
	("mw_27","25B0BD17-706F-15AD-8B82-7D6A2637A96A","09/22/2020","08/18/2020","Dolan","Female",22,"808-392-6328","True",2);

INSERT INTO `Patient` (`patientID`,`identificationTime`,`symptomOnsetTime`,`name`,`gender`,`age`,`phone`,`interviewTime`, 'PIid') VALUES 
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
	("164304021266","167606172356","160407283720"),
	("167511266889","165708051627","164805218205"),
	("162111028813","165304187569","168408036393"),
	("160211047832","166905256746","161405287358"),
	("165405291898","163302248897","168212085362");



# 2523DCD9-BC4C-7B6B-A607-ED1510BEB8B7
# EECAAE5F-945E-69AD-32E4-88261AAB6CB8
# 5E3638ED-C71C-B735-BAB9-C8E85C37D029
# 58611E5F-6F7C-A433-CE69-2C6A8434AAC1
# D2F3A676-80BA-CAE3-45EA-F3B424B6D791
# 1A27F66A-EAE5-E545-4871-9B1D501A23D6
# 25B0BD17-706F-15AD-8B82-7D6A2637A96A
#INSERT INTO `ContactTracer` (`CTid`,`Email`,`phone`,`departmentID`) VALUES ("427121DF-AD2A-C513-6AA2-E69BC302402B","risus@miAliquam.org","(713) 782-0723","EBD18975-0449-65DB-710F-2D410D9D9B6B"),("C82D9935-0D32-2ECB-D181-7174DF664EF1","nonummy.ut@tincidunt.co.uk","(625) 496-8484","046D742F-74BE-65D3-8310-09E3B1C591E8"),("65790A18-E70C-7031-6317-C0A1F5BE1B52","Phasellus@adipiscing.co.uk","(453) 661-1983","0CA87667-8F22-DB99-120C-2ECD74F8F9BA"),("2523DCD9-BC4C-7B6B-A607-ED1510BEB8B7","amet.ultricies.sem@a.com","(524) 872-9443","B99D117F-B0EA-801B-48A5-D2BEBD51DF52"),("EECAAE5F-945E-69AD-32E4-88261AAB6CB8","id.erat.Etiam@massarutrum.net","(385) 123-3277","0E46B2F8-4682-39D6-C51E-BAC6D1FAEE08"),("5E3638ED-C71C-B735-BAB9-C8E85C37D029","tristique.pellentesque.tellus@afacilisisnon.com","(100) 306-4339","CD894C89-BF90-F690-F83A-800938D4F544"),("58611E5F-6F7C-A433-CE69-2C6A8434AAC1","tincidunt.adipiscing@molestie.edu","(639) 574-6394","9CC008EA-6D6A-A620-37D0-8C86E878C6E7"),("D2F3A676-80BA-CAE3-45EA-F3B424B6D791","Lorem@Vivamus.co.uk","(131) 543-4245","ACC95169-F728-F343-E47E-72962FC65556"),("1A27F66A-EAE5-E545-4871-9B1D501A23D6","mollis.non.cursus@tristiqueneque.ca","(940) 729-5980","8EA22EF4-B65F-A4AA-A5FE-DFB84D4E9D01"),("25B0BD17-706F-15AD-8B82-7D6A2637A96A","tortor.nibh.sit@placerataugueSed.com","(827) 133-1679","E3A8FE06-FF28-FA6F-BAC1-58AFAF23A636");