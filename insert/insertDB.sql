--
-- COLLEGE MANAGEMENT SYSTEM TEAM-03 SQL FILES
--



CREATE TABLE IF NOT EXISTS `faculty` (
  `fid` varchar(30) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'f',
  `degree` varchar(10) NOT NULL,
  `degree_field` varchar(35) NOT NULL,
  `f_mob_no` varchar(10) DEFAULT NULL,
  `f_email` varchar(50) DEFAULT NULL,
  `address` varchar(60) NOT NULL,
  `city` varchar(6) NOT NULL,
  `state` varchar(25) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `join_date` date NOT NULL,
  `blood_group` enum('ABP','ABN','AP','AN','BP','BN','OP','ON') DEFAULT 'OP',
  `ip` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES
('faculty', 'pratik', 'shah', '5f4dcc3b5aa765d61d8327deb882cf99', 'm', 'btech', 'it', '8758595685', 'h@f.n', 'Bondwell Compounds, Shapar', 'Rajkot', 'Gujarat', '360024', '2013-08-05', 'OP', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`);









-- --------------------------------------------------------

--
-- Table structure for table `course_faculty`
--

CREATE TABLE IF NOT EXISTS `course_faculty` (
  `fid` varchar(30) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `acadyear` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_faculty`
--

INSERT INTO `course_faculty` (`fid`, `course_id`, `acadyear`) VALUES
('faculty', 'MA101', '2015'),
('faculty', 'MA102', '2015'),
('faculty', 'MA202', '2014'),
('faculty', 'MA205', '2015');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_faculty`
--
ALTER TABLE `course_faculty`
  ADD PRIMARY KEY (`fid`,`course_id`);





-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE IF NOT EXISTS `certificate` (
  `cid` int(11) NOT NULL,
  `request_type` varchar(50) NOT NULL,
  `purpose` varchar(30) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`cid`, `request_type`, `purpose`, `request_date`) VALUES
(1, 'Bonafide_certificate', 'JJ', '2015-11-15'),
(2, 'Bonafide_certificate', 'Hello', '2015-11-15'),
(3, 'Hostel_Resident_certificate', 'Hostel', '2015-11-15'),
(4, 'Bonafide_certificate', 'Hellooooooooooo', '2015-11-15'),
(5, 'Bonafide_certificate', 'Jishnu ', '2015-11-15'),
(6, 'Fee_Reciept_certificate', 'AAAAAAAAAAAAAAAAAAAAAAAAAA', '2015-11-15'),
(7, 'Bonafide_certificate', '11111111111111111111', '2015-11-15'),
(8, 'Fee_Reciept_certificate', 'HELPPPPPPPPPPPPPPPPPP', '2015-11-15'),
(9, 'Bonafide_certificate', '122222222222222222222', '2015-11-15'),
(10, 'Hostel_Resident_certificate', '22222222222222222', '2015-11-15'),
(11, 'Fee_Reciept_certificate', '333333333333333333', '2015-11-15'),
(12, 'Hostel_Resident_certificate', '4444444444444444', '2015-11-15'),
(13, 'Fee_Reciept_certificate', '546546546', '2015-11-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;










-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ip` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `ip`) VALUES
('jishnuAdmin', '5f4dcc3b5aa765d61d8327deb882cf99', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);








-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(10) NOT NULL,
  `course_credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_credit`) VALUES
('MA101', 'Discrete M', 4),
('MA202', 'aaaa', 3),
('MA205', 'Probabilit', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);








-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `gid` varchar(2) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`gid`, `grade`) VALUES
('AA', 10),
('AB', 9),
('BB', 8),
('BC', 7),
('CC', 6),
('CD', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gid`);








INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('HM101', 'ENGLISH', '2'); 
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('MA101', 'DESCRETE', '4');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('EL101', 'DLD', '5'); 
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('IT101', 'C PROG.', '3'); 
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('IT102', 'C LAB', '2');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('PH101', 'PHYSICS', '3');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('EL102', 'BEC', '5'); 
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('MA102', 'CALCULAS', '4');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('CS201', 'DS', '3');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('CS202', 'DS LAB', '3');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('CS203', 'CO', '5');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('IT203', 'INTRO IT', '2');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('CS205', 'INTRO CS', '2');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('HM201', 'ECONOMICS', '3'); 
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('IT202', 'DAA', '4');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('IT201', 'ITKS', '4');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('CS206', 'OOPS', '3');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('CS207', 'OOPS LAB', '3');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('MA201', 'PROB.', '4');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('CS208', 'SST', '4');
INSERT INTO `cms`.`course` (`course_id`, `course_name`, `course_credit`) VALUES ('CS209', 'OS', '5');

INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES ('7', 'MAJAD', 'JAVERI', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES  ('8', 'MANIK LAL', 'DAS', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES ('1', 'MB', 'BHORANI', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES  ('2', 'PRATIK', 'SHAH', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES ('3', 'BISWJEET', 'MISHRA', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES  ('4', 'PRASHNJEET', 'MAJUNDAR', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES ('6', 'GUATUM', 'DUTTA', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES  ('9', 'RAHUL', 'DUBEY', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES ('10', 'ALKA', 'PARIK', '', 'F', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES  ('11', 'GAGAN', 'GURGE', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES ('12', 'PM', 'JATT', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES  ('13', 'JIGNESH', 'BATT', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES ('14', 'ASIM', 'BENERJEE', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES  ('16', 'NABIN', 'SHAHU', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');
INSERT INTO `cms`.`faculty` (`fid`, `firstname`, `lastname`, `password`, `gender`, `degree`, `degree_field`, `f_mob_no`, `f_email`, `address`, `city`, `state`, `pin`, `join_date`, `blood_group`, `ip`) VALUES ('15', 'AMIT', 'MISHRA', '', 'm', '', '', NULL, NULL, '', '', '', '', '', 'O+', '');

INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('6', 'PH101', '2013'); 
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('4', 'IT102', '2013');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('3', 'EL101', '2013'); 
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('4', 'IT101', '2013');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('1', 'HM101', '2013'); 
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('2', 'MA201', '2013');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('7', 'EL102', '2013'); 
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('2', 'MA102', '2013');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('8', 'IT203', '2013'); 
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('4', 'CS205', '2013');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('8', 'CS201', '2013');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('8', 'CS202', '2013'); 
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('9', 'CS203', '2013');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('10', 'HM201', '2014'),
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('11', 'IT202', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('8', 'IT201', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('12', 'CS206', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('12', 'CS207', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('2', 'MA201', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('2', 'CS208', '2014'); 
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES('4', 'CS209', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('12', 'CS211', '2014'); 
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('8', 'IT204', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('4', 'IT205', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('4', 'IT206', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('13', 'CS212', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('13', 'CS213', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('14', 'HM202', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('15', 'HM203', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('16', 'IT207', '2014');
INSERT INTO `cms`.`course_faculty` (`fid`, `course_id`, `acadyear`) VALUES ('11', 'CS214', '2014');

INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('1', 'HM101');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('1', 'MA101');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('1', 'EL101');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('1', 'IT101');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('1', 'IT102');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('1', 'PH101');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('2', 'EL102');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('2', 'MA102');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('2', 'CS201');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('2', 'CS202');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('2', 'CS203');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('2', 'IT203');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('2', 'CS205');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('3', 'HM201');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('3', 'IT202');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('3', 'IT201');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('3', 'CS206');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('3', 'CS207');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('3', 'MA201');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('3', 'CS208');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('3', 'CS209');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('4', 'CS210');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('4', 'CS211');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('4', 'IT204');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('4', 'IT205');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('4', 'IT206');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('4', 'CS212');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('4', 'CS213');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('4', 'CS214');
INSERT INTO `cms`.`semester_courses` (`sem_id`, `course_id`) VALUES ('4', 'HM202');

INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'HM101', '1', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'MA101', '2', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'EL101', '3', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'IT101', '4', 'AB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'IT102', '4', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'PH101', '6', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'HM202', '1', 'AA');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'MA202', '2', 'CC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'EL101', '3', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'IT101', '4', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'IT102', '4', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'PH101', '6', 'AB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'HM101', '1', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'MA101', '2', 'CD');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'EL101', '3', 'AA');

INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'CS206', '12', 'AB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'CS207', '12', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'MA201', '2', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'HM201', '10', 'AA');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'CS206', '12', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'CS207', '12', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'MA201', '2', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'CS208', '2', 'CD');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'CS209', '4', 'AB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'CS210', '12', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'CS211', '12', 'CC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'IT204', '8', 'AA');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'IT205', '4', 'AA');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'IT206', '4', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'HM202', '14', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'HM203', '15', 'AB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('1', 'IT207', '16', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'CS210', '12', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'CS211', '12', 'CC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'IT204', '8', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'IT205', '4', 'CC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'IT206', '4', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'HM202', '14', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'HM203', '15', 'CD');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('2', 'IT207', '16', 'CC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'CS210', '12', 'BB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'CS211', '12', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'CS212', '13', 'AB');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'CS213', '13', 'BC');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'HM202', '14', 'CD');
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES ('3', 'HM203', '15', 'BC'); 
INSERT INTO `cms`.`student_course_faculty_grade` (`sid`, `course_id`, `fid`, `gid`) VALUES('3', 'CS214', '11', 'AA');


INSERT INTO `cms`.`student` (`sid`, `firstname`, `lastname`, `password`, `father_name`, `mother_name`, `gender`, `status_ARA`, `status_MC`, `s_mob_no`, `guardian_email`, `guardian_mob_no`, `branch`, `jee_rank`, `jee_roll_no`, `board`, `address`, `city`, `state`, `pin`, `batch`, `blood_group`) VALUES ('1', 'ABCC', 'MINNNNA', '585666', 'dMNOP', 'ANTOSH', 'm', '0', '0', '2569896', 'BBaa@gmail.com', '458979', 'it', '658', '852', 'Cbse', 'MMMM', 'MUMBAI', 'MAHARATRA', '325896', '2013', 'B+');
INSERT INTO `cms`.`student` (`sid`, `firstname`, `lastname`, `password`, `father_name`, `mother_name`, `gender`, `status_ARA`, `status_MC`, `s_mob_no`, `guardian_email`, `guardian_mob_no`, `branch`, `jee_rank`, `jee_roll_no`, `board`, `address`, `city`, `state`, `pin`, `batch`, `blood_group`) VALUES ('2', 'PQRS', 'VINNNDD', '4785', 'NHUI', 'NHUYT', 'm', '0', '0', '858698569', 'nnjaa21@gmail.com', '58666', 'it', '5896', '2856', 'Cbse', 'TELNGGGNNNAa', 'HDRBD', 'JHUDI', '325252', '2013', 'O+');
INSERT INTO `cms`.`student` (`sid`, `firstname`, `lastname`, `password`, `father_name`, `mother_name`, `gender`, `status_ARA`, `status_MC`, `s_mob_no`, `guardian_email`, `guardian_mob_no`, `branch`, `jee_rank`, `jee_roll_no`, `board`, `address`, `city`, `state`, `pin`, `batch`, `blood_group`) VALUES ('3', 'Ghk', 'mmana', '1254', 'dlme', 'seemm', 'm', '0', '0', '98888', '25aa@gmail.com', '458888', 'CS', '55', '258', 'cbse', 'kkoota', 'city', 'rajj', '352585', '2013', 'O+');


INSERT INTO `cms`.`semester` (`sem_id`, `season`) VALUES ('1', 'Autumn');
INSERT INTO `cms`.`semester` (`sem_id`, `season`) VALUES ('2', 'Winter');
INSERT INTO `cms`.`semester` (`sem_id`, `season`) VALUES ('3', 'Autumn');
INSERT INTO `cms`.`semester` (`sem_id`, `season`) VALUES ('4', 'Winter');
INSERT INTO `cms`.`semester` (`sem_id`, `season`) VALUES ('5', 'Autumn');
INSERT INTO `cms`.`semester` (`sem_id`, `season`) VALUES ('6', 'Winter');
INSERT INTO `cms`.`semester` (`sem_id`, `season`) VALUES ('7', 'Autumn');
INSERT INTO `cms`.`semester` (`sem_id`, `season`) VALUES ('8', 'Winter');



INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'MA101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'HM101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'EL101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'IT101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'IT102', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'PH101', '2013');


INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'MA101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'HM101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'EL101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'IT101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'IT102', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'PH101', '2013');


INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'MA101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'HM101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'EL101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'IT101', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'IT102', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'PH101', '2013');


INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'MA102', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'CS201', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'EL102', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'IT203', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'CS202', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'CS203', '2013');


INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'MA102', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'CS201', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'EL102', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'IT203', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'CS202', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'CS203', '2013');


INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'MA102', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS201', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'EL102', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS205', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS202', '2013');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS203', '2013');


INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'MA201', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'CS206', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'HM201', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'IT201', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'CS207', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'IT202', '2014');

INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'MA201', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'CS206', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'HM201', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'IT201', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'CS207', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'IT202', '2014');


INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'MA201', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS206', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'HM201', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS208', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS207', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS209', '2014');


INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'HM203', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'CS210', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'HM202', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'IT204', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'CS211', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'IT205', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'IT206', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('1', 'IT207', '2014');

INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'HM203', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'CS210', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'HM202', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'IT204', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'CS211', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'IT205', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'IT206', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('2', 'IT207', '2014');



INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'HM203', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS210', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'HM202', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS211', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS212', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS213', '2014');
INSERT INTO `cms`.`student_enrolls_course` (`sid`, `course_id`, `acadyear`) VALUES ('3', 'CS214', '2014');


INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('1', '1', '2013');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('1', '2', '2013');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('1', '3', '2014');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('1', '4', '2014');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('2', '1', '2013');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('2', '2', '2013');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('2', '3', '2014');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('2', '4', '2014');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('3', '1', '2013');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('3', '2', '2013');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('3', '3', '2014');
INSERT INTO `cms`.`student_registers_for_semester` (`sid`, `sem_id`, `acadyear`) VALUES ('3', '4', '2014');

INSERT INTO `cms`.`grade` (`gid`, `grade`) VALUES ('AA', '10');
INSERT INTO `cms`.`grade` (`gid`, `grade`) VALUES ('AB', '9');
INSERT INTO `cms`.`grade` (`gid`, `grade`) VALUES ('BB', '8');
INSERT INTO `cms`.`grade` (`gid`, `grade`) VALUES ('BC', '7');
INSERT INTO `cms`.`grade` (`gid`, `grade`) VALUES ('CC', '6');
INSERT INTO `cms`.`grade` (`gid`, `grade`) VALUES ('CD', '5');
INSERT INTO `cms`.`grade` (`gid`, `grade`) VALUES ('DD', '4');
INSERT INTO `cms`.`grade` (`gid`, `grade`) VALUES ('DE', '3');
INSERT INTO `cms`.`grade` (`gid`, `grade`) VALUES ('F', '2');












-- --------------------------------------------------------

--
-- Table structure for table `rebate`
--

CREATE TABLE IF NOT EXISTS `rebate` (
  `rid` int(11) NOT NULL,
  `st_id` int(10) NOT NULL,
  `apply_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_date` varchar(10) NOT NULL,
  `no_of_days` int(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` varchar(12) NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rebate`
--

INSERT INTO `rebate` (`rid`, `st_id`, `apply_date`, `from_date`, `no_of_days`, `description`, `status`, `Action`) VALUES
(1, 0, '2015-11-01 12:23:48', '0000-00-00', 4, 'Demo', '', 1),
(2, 0, '2015-11-01 12:27:50', '27/10/2015', 5, 'Demo 2', '', 1),
(3, 0, '2015-11-01 12:30:03', '27/10/2015', 6, 'Demo 3', '', 1),
(4, 0, '2015-11-01 12:39:16', '27/10/2015', 4, 'Demo 5', 'Accepted', 1),
(5, 0, '2015-11-01 12:39:58', '27/10/2015', 4, 'Demo6', 'Rejected', 1),
(6, 201352015, '2015-11-01 14:37:28', '27/10/2015', 6, 'Demo 6 new', 'Accepted', 1),
(7, 201352015, '2015-11-01 15:34:53', '28/10/2015', 6, 'Going to Jaipur', 'Accepted', 1),
(8, 201352015, '2015-11-01 17:19:02', '27/10/2015', 5, 'For Holiday.', 'Accepted', 1),
(9, 201352015, '2015-11-08 19:36:24', '2015-11-08', 5, 'Again going to chandigarh', 'Accepted', 1),
(10, 201352015, '2015-11-13 00:17:10', '2015-11-27', 9, 'New Request from vivek', 'Accepted', 1),
(11, 201352015, '2015-11-13 00:22:17', '2015-11-21', 6, 'New rebate form from vivek', 'Accepted', 1),
(12, 201352015, '2015-11-13 00:25:46', '2015-11-20', 9, 'new Rebate form from \r\ntty', 'Pending', 0),
(13, 201352015, '2015-11-13 01:08:31', '2015-11-18', 5, 'New rebaet', 'Accepted', 1),
(14, 201352015, '2015-11-13 11:00:43', '2015-11-18', 9, 'THis is a new rebate req', 'Accepted', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rebate`
--
ALTER TABLE `rebate`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rebate`
--
ALTER TABLE `rebate`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;











-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'f',
  `status_ARA` enum('0','1') NOT NULL DEFAULT '0',
  `status_MC` enum('0','1') NOT NULL DEFAULT '0',
  `category` enum('sc','st','obc','gen') NOT NULL DEFAULT 'gen',
  `s_mob_no` varchar(10) NOT NULL,
  `guardian_email` varchar(50) NOT NULL,
  `guardian_mob_no` varchar(10) NOT NULL,
  `branch` enum('it','cse') NOT NULL DEFAULT 'it',
  `jee_rank` varchar(10) NOT NULL,
  `jee_roll_no` varchar(10) DEFAULT NULL,
  `board` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(6) NOT NULL,
  `state` varchar(25) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `batch` varchar(4) NOT NULL,
  `blood_group` enum('ABP','ABN','AP','AN','BP','BN','OP','ON') DEFAULT 'OP',
  `ip` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `firstname`, `lastname`, `password`, `father_name`, `mother_name`, `dob`, `gender`, `status_ARA`, `status_MC`, `category`, `s_mob_no`, `guardian_email`, `guardian_mob_no`, `branch`, `jee_rank`, `jee_roll_no`, `board`, `address`, `city`, `state`, `pin`, `batch`, `blood_group`, `ip`) VALUES
(201352005, 'Jishnu', 'Jaykumar', '5f4dcc3b5aa765d61d8327deb882cf99', 'asdfd', 'jkhkhj', '2015-12-31', 'm', '1', '1', 'sc', '8758585855', 'lkmkl', '8585858585', 'it', '1565', '56656', '5555', 'Padalunkal', 'nkl', 'jklj', '565856', '2013', '', '1'),
(201352353, 'Xavier', 'Paul', '5f4dcc3b5aa765d61d8327deb882cf99', 'Paul Mathew', 'Lila Mathew', '1996-03-08', 'm', '0', '1', 'gen', '8758599133', 'x_Paul@paulo.com', '8528528520', 'it', '19979', '99009807', 'Kerala', 'Padalunkal', 'Kottay', 'Kerala', '686555', '2013', '', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);












-- --------------------------------------------------------

--
-- Table structure for table `student_certificate_requests`
--

CREATE TABLE IF NOT EXISTS `student_certificate_requests` (
  `sid` varchar(10) NOT NULL,
  `c_id` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_certificate_requests`
--

INSERT INTO `student_certificate_requests` (`sid`, `c_id`, `status`) VALUES
('201352005', '1', 'Accepted'),
('201352005', '10', 'Accepted'),
('201352005', '11', 'Accepted'),
('201352005', '12', 'Rejected'),
('201352005', '13', 'Pending'),
('201352005', '2', 'Accepted'),
('201352005', '3', 'Accepted'),
('201352005', '4', 'Accepted'),
('201352005', '5', '0'),
('201352005', '6', '0'),
('201352005', '7', ''),
('201352005', '8', 'Accepted'),
('201352005', '9', 'Accepted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_certificate_requests`
--
ALTER TABLE `student_certificate_requests`
  ADD PRIMARY KEY (`sid`,`c_id`);








-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2015 at 10:59 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `complaint_id` int(11) NOT NULL,
  `sid` varchar(20) NOT NULL,
  `apply_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `request_type` enum('academic','mess','hostel','transport') NOT NULL DEFAULT 'academic',
  `subject_description` varchar(100) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `status` varchar(12) NOT NULL,
  `reply` varchar(100) NOT NULL,
  `Action` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_id`, `sid`, `apply_date`, `request_type`, `subject_description`, `no_of_days`, `status`, `reply`, `Action`) VALUES
(2, '201352015', '2015-11-11 01:31:28', 'hostel', ' my fan is not working. room n', 0, 'Pending', '', 0),
(3, '201352015', '2015-11-16 03:19:56', 'academic', 'there is no computer lab arrangement lab arrangement for my batch .', 0, 'Pending', '', 0),
(4, '201352015', '2015-11-16 03:20:35', 'mess', 'aaj ka khana accha nhi tha.', 0, 'Pending', '', 0),
(5, '201352015', '2015-11-16 03:21:34', 'mess', 'today butter was not present in the lunch time.', 0, 'Pending', '', 0),
(6, '201352015', '2015-11-16 03:22:32', 'hostel', 'Mere room ki tubelight kharab ho gyi he', 0, 'Pending', '', 0),
(7, '201352015', '2015-11-16 03:26:44', 'transport', 'Bus driver has not reached till 9 o clock.in the morning so i become late.', 0, 'Pending', '', 0),
(8, '201352015', '2015-11-16 03:27:58', 'hostel', 'my previous problem of tubelight is not resolved till now.  ', 0, 'Pending', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;

