-- Krijimi dhe përdorimi i databazës:

CREATE DATABASE SchoolManagementSystem;
USE SchoolManagementSystem;

-- Krijimi i tabelave kryesore:

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    DOB DATE,
    Grade VARCHAR(10),
    Address VARCHAR(100)
);

CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    Name VARCHAR(100),
    Subject VARCHAR(50),
    Salary VARCHAR(15)
);

CREATE TABLE Classes (
    ClassID INT,
    Name VARCHAR(100),
    TeacherID INT,
    Schedule TEXT,
    MaxCapacity INT,
    PRIMARY KEY (ClassID)
);

CREATE TABLE Enrollments (
    EnrollmentsID INT,
    StudentID INT NOT NULL,
    ClassID INT NOT NULL,
    Grade INT,
    PRIMARY KEY (EnrollmentsID),
    FOREIGN KEY (StudentID) REFERENCES Student (StudentID) ON DELETE CASCADE,
    FOREIGN KEY (ClassID) REFERENCES Classes (ClassID) ON DELETE CASCADE
);

CREATE TABLE AttendanceReport (
    AttendanceID INT,
    Date DATE NOT NULL,
    Status VARCHAR(10) NOT NULL,
    Comments VARCHAR(200),
    PRIMARY KEY (AttendanceID)
);

CREATE TABLE Department (
    DepartmentID INT,
    Name VARCHAR(100),
    HeadOfDepartment INT,
    PRIMARY KEY (DepartmentID)
);

CREATE TABLE Staff (
	StaffID INT,
	TeacherID INT NOT NULL,
        Name VARCHAR(100),
	PRIMARY KEY (StaffID),
	FOREIGN KEY (TeacherID) REFERENCES Teacher (TeacherID) ON DELETE CASCADE
);

CREATE TABLE Activity (
    ActivityID INT,
    Name VARCHAR(100),
    Schedule VARCHAR(500),
    AssignedStaff VARCHAR(500),
    PRIMARY KEY (ActivityID)
);

CREATE TABLE Extracurricular (
    ActivityID INT,
    Name VARCHAR(100),
    Schedule VARCHAR(500),
    AssignedStaff VARCHAR(500),
    PRIMARY KEY (ActivityID)
);

CREATE TABLE Academic (
    ActivityID INT,
    Name VARCHAR(100),
    Schedule VARCHAR(500),
    AssignedStaff VARCHAR(500),
    PRIMARY KEY (ActivityID)
);

CREATE TABLE PerformanceReportOnline (
    PRID INT,
    StudentID INT NOT NULL,
    Semester VARCHAR(10),
    GPA INT,
    Comments VARCHAR(200),
    PRIMARY KEY (PRID)
);

CREATE TABLE ClassroomAssignment (
    AssignmentID INT,
    Building VARCHAR(100) NOT NULL,
    RoomNumber VARCHAR(50) NOT NULL,
    PRIMARY KEY (AssignmentID)
);

CREATE TABLE Parent (
    ParentID INT,
    Name VARCHAR(100),
    Phone VARCHAR(15),
    Occupation VARCHAR(50),
    PRIMARY KEY (ParentID)
);

CREATE TABLE DisciplinaryAction (
    DAID INT,
    ActionTaken VARCHAR(100),
    Date DATE,
    Details VARCHAR(500),
    PRIMARY KEY (DAID)
);

CREATE TABLE Resource (
    ResourceID INT,
    Name VARCHAR(100),
    Type VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (ResourceID)
);

CREATE TABLE RevenueReport (
    RRID INT,
    Date DATE,
    Source VARCHAR(100),
    PaymentMethod VARCHAR(100),
    PRIMARY KEY (RRID)
);

CREATE TABLE TeachingSchedule (
    ScheduleID INT,
    Location VARCHAR(100),
    Time TIME,
    PRIMARY KEY (ScheduleID)
);

-- Tabelat lidhëse/konektuese:

CREATE TABLE ParticipatesIn (
    StudentID INT NOT NULL,
    ActivityID INT NOT NULL,
    PRIMARY KEY (StudentID, ActivityID),
    FOREIGN KEY (StudentID) REFERENCES Student (StudentID),
    FOREIGN KEY (ActivityID) REFERENCES Extracurricular (ActivityID)
);

CREATE TABLE Has (
	ParentID INT NOT NULL,
	StudentID INT NOT NULL,
	PRIMARY KEY(ParentID, StudentID),
	FOREIGN KEY (ParentID) REFERENCES Parent (ParentID) ON DELETE CASCADE,
	FOREIGN KEY (StudentID) REFERENCES Student (StudentID) ON DELETE CASCADE
);

CREATE TABLE Meets (
	ParentID INT NOT NULL,
	TeacherID INT NOT NULL,
	PRIMARY KEY(ParentID, TeacherID),
	FOREIGN KEY (ParentID) REFERENCES Parent (ParentID) ON DELETE CASCADE,
	FOREIGN KEY (TeacherID) REFERENCES Teacher (TeacherID) ON DELETE CASCADE
);

CREATE TABLE Views (
	ParentID INT NOT NULL,
	PRID INT NOT NULL,
	PRIMARY KEY (ParentID, PRID),
	FOREIGN KEY (ParentID) REFERENCES Parent (ParentID) ON DELETE CASCADE,
	FOREIGN KEY (PRID) REFERENCES PerformanceReportOnline (PRID) ON DELETE CASCADE
);

CREATE TABLE Faces (
	DAID INT NOT NULL,
	StudentID INT NOT NULL,
	PRIMARY KEY (DAID, StudentID),
	FOREIGN KEY (DAID) REFERENCES DisciplinaryAction (DAID) ON DELETE CASCADE,
	FOREIGN KEY (StudentID) REFERENCES Student (StudentID) ON DELETE CASCADE
);

CREATE TABLE Attends (
	AttendanceID INT NOT NULL,
	StudentID INT NOT NULL,
	PRIMARY KEY (AttendanceID, StudentID),
	FOREIGN KEY (AttendanceID) REFERENCES AttendanceReport (AttendanceID) ON DELETE CASCADE,
	FOREIGN KEY (StudentID) REFERENCES Student (StudentID) ON DELETE CASCADE
);

CREATE TABLE Manage (
	ActivityID INT NOT NULL,
	StaffID INT NOT NULL,
	PRIMARY KEY (ActivityID, StaffID),
	FOREIGN KEY (ActivityID) REFERENCES Activity (ActivityID) ON DELETE CASCADE,
	FOREIGN KEY (StaffID) REFERENCES Staff (StaffID) ON DELETE CASCADE
);

CREATE TABLE TuitionFeePayment (
	ParentID INT NOT NULL,
	RRID INT NOT NULL,
	PRIMARY KEY (ParentID, RRID),
	FOREIGN KEY (ParentID) REFERENCES Parent (ParentID) ON DELETE CASCADE,
	FOREIGN KEY (RRID) REFERENCES RevenueReport (RRID) ON DELETE CASCADE
);

CREATE TABLE Updates (
	TeacherID INT NOT NULL,
	EnrollmentsID INT NOT NULL,
	PRIMARY KEY (TeacherID, EnrollmentsID),
	FOREIGN KEY (TeacherID) REFERENCES Teacher (TeacherID) ON DELETE CASCADE,
	FOREIGN KEY (EnrollmentsID) REFERENCES Enrollments (EnrollmentsID) ON DELETE CASCADE
);

CREATE TABLE Teaches (
	TeacherID INT NOT NULL,
	ClassID INT NOT NULL,
	PRIMARY KEY (TeacherID, ClassID),
	FOREIGN KEY (TeacherID) REFERENCES Teacher (TeacherID) ON DELETE CASCADE,
	FOREIGN KEY (ClassID) REFERENCES Classes (ClassID) ON DELETE CASCADE
);

CREATE TABLE Need (
	AttendanceID INT NOT NULL,
	ClassID INT NOT NULL,
	PRIMARY KEY (AttendanceID, ClassID),
	FOREIGN KEY (AttendanceID) REFERENCES AttendanceReport (AttendanceID) ON DELETE CASCADE,
	FOREIGN KEY (ClassID) REFERENCES Classes (ClassID) ON DELETE CASCADE
);

CREATE TABLE Checks (
	TeacherID INT NOT NULL,
	ScheduleID INT NOT NULL,
	PRIMARY KEY (TeacherID, ScheduleID),
	FOREIGN KEY (TeacherID) REFERENCES Teacher (TeacherID) ON DELETE CASCADE,
	FOREIGN KEY (ScheduleID) REFERENCES TeachingSchedule (ScheduleID) ON DELETE CASCADE
);

CREATE TABLE Uses (
	ResourceID INT NOT NULL,
	ClassID INT NOT NULL,
	PRIMARY KEY (ResourceID, ClassID),
	FOREIGN KEY (ResourceID) REFERENCES Resource (ResourceID) ON DELETE CASCADE,
	FOREIGN KEY (ClassID) REFERENCES Classes (ClassID) ON DELETE CASCADE
);

CREATE TABLE AssignedTo (
	AssignmentID INT NOT NULL,
	ClassID INT NOT NULL,
	PRIMARY KEY (AssignmentID, ClassID),
	FOREIGN KEY (AssignmentID) REFERENCES ClassroomAssignment (AssignmentID) ON DELETE CASCADE,
	FOREIGN KEY (ClassID) REFERENCES Classes (ClassID) ON DELETE CASCADE
);

CREATE TABLE Manages (
	DepartmentID INT NOT NULL,
	ClassID INT NOT NULL,
	PRIMARY KEY (DepartmentID, ClassID),
	FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID) ON DELETE CASCADE,
	FOREIGN KEY (ClassID) REFERENCES Classes (ClassID) ON DELETE CASCADE
);

CREATE TABLE Oversee (
	DepartmentID INT NOT NULL,
	RRID INT NOT NULL,
	PRIMARY KEY (DepartmentID, RRID),
	FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID) ON DELETE CASCADE,
	FOREIGN KEY (RRID) REFERENCES RevenueReport (RRID) ON DELETE CASCADE
);
