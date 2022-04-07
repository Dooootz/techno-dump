-- create employer table 
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

insert into jobListing(jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values('Junior React Developer','Web Development','Fulltime','Great Company',60000,80000,'QLD',4100)

insert into jobListing(jobTitle,jobType,positionType,jobDescription,jobMinSalary,jobMaxSalary,jobState,jobPostCode)
values('Junior React Developer','Web Development','Fulltime','Great Company',60000,80000,'QLD',4100)

-- c
-- ----------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------
