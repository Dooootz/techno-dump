-- ----------------------------------------------------------------------------------------------------------------
#employers
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `employers` (
  `employerID` int auto_increment not null,
  `empName` varchar(50) not null,
  `empPhone` int not null,
  `empEmail` varchar(50) not null,
  `empAddress` varchar(100) not null,
  `empCity` varchar(30) not null,
  `empState` varchar(30) not null,
  `empPostCode` int not null,
  `empProfileImage_URL` varchar(255) not null,
  `empJoinDate` date not null,
  PRIMARY KEY (`employerID`)
);


-- create ~ 5 entry points 
insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Tre Molony',123123,'tre@web.com','1 Queen St','Brisbane','QLD',4170,'www.picsum.co',date(curdate()));

insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Youngi Kim',130043,'young@web.com','10 Albert St','Brisbane','QLD',4000,'www.picsum.co',date(curdate()));

insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Street Rossi',590166,'squid@web.com','75 Frank Rd','Byron Bay','NSW',2545,'www.picsum.co',date(curdate()));

insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Korean Zombie',2011613,'brains@web.com','220 Falcon Lane','Sydney','NSW',1202,'www.picsum.co',date(curdate()));

insert into employers(empName,empPhone,empEmail,empAddress,empCity,empState,empPostCode,empProfileImage_URL,empJoinDate)
values ('Khamzat Chimaev',112233,'bird@web.com','89 Eagle St','Brisbane','QLD',4178,'www.picsum.co',date(curdate()));

select * from employers;


-- delete the table (reset)
drop table employers;



-- ----------------------------------------------------------------------------------------------------------------
#joblisting
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `jobListing` (
  `jobID` int auto_increment not null,
  `employerID` int not null,
  `jobTitle` varchar(50),
  `jobType` varchar(50),
  `positionType` varchar(50),
  `jobDescription` text(3000),
  `jobMinSalary` int not null,
  `jobMaxSalary` int not null,
  `jobState` varchar(30) not null,
  `jobPostCode` int not null,
  PRIMARY KEY (`jobID`),
  FOREIGN KEY (`employerID`) REFERENCES `employers`(`employerID`)
);

select * from jobListing;


insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(1,'Junior React Developer','Web Development','Fulltime','Great Company',60000,80000,'QLD',4100);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(2,'Unity Game Developer','Game Development','Casual','Small Indie Company',40000,50000,'VIC',3000);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(3,'Data Analyst','Database Dev','Part time','Flexible Hours',70000,90000,'NSW',2100);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(4,'Software Tester','Software Development','Part time','Small start up',40000,60000,'QLD',4000);

insert into jobListing(employerID,jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values(5,'Web Designer','Web Design','Fulltime','Remote',50000,60000,'QLD',4100);


-- ----------------------------------------------------------------------------------------------------------------
#jobseeker
-- ----------------------------------------------------------------------------------------------------------------
CREATE TABLE `jobSeeker` (
  `jobSeekerID` int auto_increment not null,
  `firstName` varchar(50) not null,
  `lastName` varchar(50) not null,
  `email` varchar(50) not null,
  `password` varchar(50) not null,
  `birthDate` date not null,
  `state` varchar(30),
  `postCode` int not null,
  `CV_URL` varchar(255) not null,
  `profileImage_URL` varchar(255) not null,
  `joinDate` datetime not null,
  PRIMARY KEY (`jobSeekerID`)
);

insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Tre','Day','tre@web.com','123',date(curdate()),'QLD',4100,'www.cv.com','www.picsum.com', date(curdate()))

insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Yammie','Noob','fast@bro.com','321',date(curdate()),'QLD',4430,'www.cv.com','www.picsum.com', date(curdate()))

insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Chloe','Kim','chur@web.com','333',date(curdate()),'QLD',4000,'www.cv.com','www.picsum.com', date(curdate()))

insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Shaun','White','wet@snow.com','444',date(curdate()),'QLD',4100,'www.cv.com','www.picsum.com', date(curdate()))

insert into jobSeeker(firstName,lastName,email,password,birthDate,state,postCode,CV_URL,profileImage_URL,joinDate)
values ('Harris','Fisher','up2@web.com','888',date(curdate()),'QLD',4100,'www.cv.com','www.picsum.com', date(curdate()))



-- ----------------------------------------------------------------------------------------------------------------
#
-- ----------------------------------------------------------------------------------------------------------------