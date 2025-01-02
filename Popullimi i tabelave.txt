-- Popullimi i tabelave:

INSERT INTO Student (StudentID, Name, DOB, Grade, Address) VALUES
(1, 'Ardit Leka', '2005-09-15', '8', 'Rruga e Dajti, Prishtinë'),
(2, 'Elira Deda', '2004-12-22', '8', 'Rruga e Elbasanit, Pejë'),
(3, 'Artan Gashi', '2005-05-10', '9', 'Rruga e Mimozës, Prizren'),
(4, 'Alban Hoxha', '2004-07-30', '7', 'Rruga e Pogradecit, Ferizaj'),
(5, 'Albion Mazreku', '2005-04-15', '6', 'Rruga 123, Tiranë'),
(6, 'Lira Nushi', '2004-11-22', '7', 'Rruga 456, Durrës'),
(7, 'Ilir Hoxha', '2006-02-03', '8', 'Rruga 789, Shkodër'),
(8, 'Drita Zejnullahu', '2005-06-13', '9', 'Rruga 101, Elbasan'),
(9, 'Mira Jaku', '2007-01-25', '10', 'Rruga 202, Vlorë'),
(10, 'Emir Krasniqi', '2004-09-05', '10', 'Rruga 303, Fier'),
(11, 'Blerina Shala', '2006-12-17', '6', 'Rruga 404, Sarandë'),
(12, 'Jon Kryeziu', '2005-03-09', '6', 'Rruga 505, Korçë');

INSERT INTO Teacher (TeacherID, Name, Subject, Salary) VALUES
(1, 'Petrit Gashi', 'Matematikë', '90000'),
(2, 'Luljeta Krasniqi', 'Histori', '85000'),
(3, 'Flamur Alushaj', 'Biologji', '95000'),
(4, 'Nora Gashi', 'Kimi', '90000'),
(5, 'Gent Palaj', 'Matematikë', '1500'),
(6, 'Tina Ahmeti', 'Fizikë', '1600'),
(7, 'Klaudio Ndoja', 'Kimi', '1700'),
(8, 'Iris Alushi', 'Gjuhë Angleze', '1800'),
(9, 'Florian Krasniqi', 'Histori', '1900'),
(10, 'Elira Zogu', 'Gjeografi', '1600'),
(11, 'Dorian Lleshi', 'Biologji', '1700'),
(12, 'Era Agushi', 'Muzikë', '1500');

INSERT INTO Classes (ClassID, Name, TeacherID, Schedule, MaxCapacity) VALUES
(1, 'Matematikë 1', 1, 'Monday 09:00-11:00, Wednesday 10:00-12:00', 30),
(2, 'Sociologji 1', 2, 'Tuesday 09:00-11:00, Thursday 10:00-12:00', 30),
(3, 'Biologji 1', 3, 'Monday 14:00-16:00, Wednesday 13:00-15:00', 30),
(4, 'Kimi 1', 4, 'Tuesday 14:00-16:00, Thursday 13:00-15:00', 30),
(5, 'Fizikë 2', 2, 'Mon-Wed 12:30-14:30', 25),
(6, 'Kimi 3', 3, 'Tue-Thu 14:00-16:00', 30),
(7, 'Gjuhë Angleze 2', 4, 'Mon-Wed 16:30-18:30', 35),
(8, 'Histori 2', 5, 'Mon-Fri 09:00-10:30', 40),
(9, 'Gjeografi 3', 6, 'Tue-Thu 10:00-12:00', 25),
(10, 'Biologji 3', 7, 'Mon-Wed 08:30-10:30', 30),
(11, 'Muzikë 1', 8, 'Tue-Thu 14:30-16:00', 20);

INSERT INTO Enrollments (EnrollmentsID, StudentID, ClassID, Grade) VALUES
(1, 1, 1, 85),
(2, 2, 2, 90),
(3, 3, 3, 78),
(4, 4, 4, 88),
(5, 5, 5, 92),
(6, 6, 6, 81),
(7, 7, 7, 95),
(8, 8, 8, 84),
(9, 1, 2, 76),
(10, 2, 3, 89),
(11, 3, 4, 82),
(12, 4, 5, 91),
(13, 5, 6, 75),
(14, 6, 7, 94),
(15, 7, 8, 80);

INSERT INTO Staff (StaffID, TeacherID, Name) VALUES
(1, 1, 'Petrit Gashi'),
(2, 2, 'Luljeta Krasniqi'),
(3, 3, 'Flamur Alushaj'),
(4, 4, 'Nora Gashi'),
(5, 5, 'Gent Palaj'),
(6, 6, 'Tina Ahmeti'),
(7, 7, 'Klaudio Ndoja'),
(8, 8, 'Iris Alushi'),
(9, 9, 'Florian Krasniqi'),
(10, 10, 'Elira Zogu'),
(11, 11, 'Dorian Lleshi'),
(12, 12, 'Era Agushi');

INSERT INTO AttendanceReport (AttendanceID, Date, Status, Comments) VALUES
(1, '2024-09-01', 'Pranishëm', 'Nuk ka koment'),
(2, '2024-09-02', 'Mungon', 'I sëmuar'),
(3, '2024-09-03', 'Pranishëm', 'Nuk ka koment'),
(4, '2024-09-04', 'Pranishëm', 'Nuk ka koment'),
(5, '2024-09-01', 'Pranishëm', 'Në kohë'),
(6, '2024-09-02', 'Mungon', 'I sëmuar'),
(7, '2024-09-03', 'Vonë', 'Vonesë trafiku'),
(8, '2024-09-04', 'Pranishëm', 'Në kohë'),
(9, '2024-09-05', 'Mungon', 'Emergjencë familjare'),
(10, '2024-09-06', 'Pranishëm', 'Në kohë'),
(11, '2024-09-07', 'Vonë', 'U zgjua vonë'),
(12, '2024-09-08', 'Pranishëm', 'Në kohë');

INSERT INTO Department (DepartmentID, Name, HeadOfDepartment) VALUES
(1, 'Shkencë Natyrore', 1),
(2, 'Matematikë', 2),
(3, 'Njerëzimet', 3),
(4, 'Artet', 4),
(5, 'Shkencat Sociale', 5);

INSERT INTO Activity (ActivityID, Name, Schedule, AssignedStaff) VALUES
(1, 'Futboll', 'Mon-Fri 16:00-18:00', 'Gent Palaj'),
(2, 'Basketboll', 'Mon-Wed 17:00-19:00', 'Tina Ahmeti'),
(3, 'Not', 'Tue-Thu 15:00-17:00', 'Klaudio Ndoja'),
(4, 'Klubi i Artit', 'Mon-Fri 13:00-15:00', 'Iris Alushi'),
(5, 'Klubi i Dramës', 'Mon-Wed 14:00-16:00', 'Florian Krasniqi'),
(6, 'Klubi i Shahut', 'Tue-Thu 12:00-14:00', 'Elira Zogu'),
(7, 'Fotografi', 'Wed-Fri 09:00-11:00', 'Dorian Lleshi'),
(8, 'Bandë Muzikore', 'Mon-Wed 10:00-12:00', 'Era Agushi'),
(9, 'Olimpiadë Matematikore', 'Mon-Wed 09:00-11:00', 'Gent Palaj'),
(10, 'Panair i Fizikës', 'Mon-Wed 12:00-14:00', 'Tina Ahmeti'),
(11, 'Laborator i Kimisë', 'Tue-Thu 10:00-12:00', 'Klaudio Ndoja');

INSERT INTO Extracurricular (ActivityID, Name, Schedule, AssignedStaff) VALUES
(1, 'Football', 'Mon-Fri 16:00-18:00', 'Gent Palaj'),
(2, 'Basketball', 'Mon-Wed 17:00-19:00', 'Tina Ahmeti'),
(3, 'Swimming', 'Tue-Thu 15:00-17:00', 'Klaudio Ndoja'),
(4, 'Art Club', 'Mon-Fri 13:00-15:00', 'Iris Alushi'),
(5, 'Drama Club', 'Mon-Wed 14:00-16:00', 'Florian Krasniqi'),
(6, 'Chess Club', 'Tue-Thu 12:00-14:00', 'Elira Zogu'),
(7, 'Photography', 'Wed-Fri 09:00-11:00', 'Dorian Lleshi'),
(8, 'Music Band', 'Mon-Wed 10:00-12:00', 'Era Agushi');

INSERT INTO Academic (ActivityID, Name, Schedule, AssignedStaff) VALUES
(9, 'Olimpiadë Matematikore', 'Mon-Wed 09:00-11:00', 'Gent Palaj'),
(10, 'Panair i Fizikës', 'Mon-Wed 12:00-14:00', 'Tina Ahmeti'),
(11, 'Laborator i Kimisë', 'Tue-Thu 10:00-12:00', 'Klaudio Ndoja');

INSERT INTO PerformanceReportOnline (PRID, StudentID, Semester, GPA, Comments) VALUES
(1, 1, '2024 Fall', 3.8, 'Performancë e mrekullueshme'),
(2, 2, '2024 Fall', 3.5, 'Përmisim i mirë'),
(3, 3, '2024 Fall', 3.2, 'Ka nevojë për përmirësim'),
(4, 4, '2024 Fall', 3.7, 'Performancë e mirë'),
(5, 5, '2024 Fall', 3.9, 'Student i shkëlqyeshëm'),
(6, 6, '2024 Fall', 3.6, 'Performancë e fortë'),
(7, 7, '2024 Fall', 4.0, 'Performancë e jashtëzakonshme'),
(8, 8, '2024 Fall', 3.4, 'Performancë e mirë');

INSERT INTO ClassroomAssignment (AssignmentID, Building, RoomNumber) VALUES
(1, 'Ndërtesa A', '101'),
(2, 'Ndërtesa B', '102'),
(3, 'Ndërtesa C', '103'),
(4, 'Ndërtesa D', '104'),
(5, 'Ndërtesa E', '105'),
(6, 'Ndërtesa F', '106'),
(7, 'Ndërtesa G', '107'),
(8, 'Ndëertsa H', '108');

INSERT INTO Parent (ParentID, Name, Phone, Occupation) VALUES
(1, 'Bardh Beqaj', '049123456', 'Inxhinier'),
(2, 'Mira Deda', '045235678', 'Arsimtar'),
(3, 'Elda Hasolli', '044356789', 'Mjek'),
(4, 'Alban Hoxha', '045457890', 'Avokat'),
(5, 'Alba Kreshniku', '044112233', 'Mjek'),
(6, 'Kaltrina Mustafaj', '044223344', 'Inxhinier'),
(7, 'Ilira Hoxha', '049334555', 'Mësues'),
(8, 'Driton Selimi', '045445666', 'Artist'),
(9, 'Mirlinda Gashi', '049565777', 'Infermiere'),
(10, 'Sokol Agolli', '044667888', 'Avokat'),
(11, 'Lina Shala', '049778999', 'Sipërmarrëse'),
(12, 'Altin Mehmeti', '045889000', 'Shkencëtar');

INSERT INTO DisciplinaryAction (DAID, ActionTaken, Date, Details) VALUES
(1, 'Suspendim', '2024-09-05', 'Përleshje me shokët e klasës'),
(2, 'Paralajmërim', '2024-09-06', 'Vonesa në klasë disa herë'),
(3, 'Dëbim', '2024-09-07', 'Ngacmimi i bashkënxënësve'),
(4, 'Paralajmërim', '2024-09-10', 'Me vonesë në klasë tre herë'),
(5, 'Suspendim', '2024-09-12', 'Përleshje në klasë'),
(6, 'Ndalim', '2024-09-14', 'Sjellje mosrespektuese'),
(7, 'Paralajmërim', '2024-09-16', 'Detyrë shtëpie jo të plota'),
(8, 'Suspendim', '2024-09-18', 'Vandalizëm');

INSERT INTO Resource (ResourceID, Name, Type, Quantity) VALUES
(1, 'Projektor', 'Electronikë', 5),
(2, 'Tabela e bardhë', 'Mobilje', 10),
(3, 'Laptop', 'Electronikë', 20),
(4, 'Tavolinë', 'Mobilje', 50),
(5, 'Tekste shkollore', 'Libra', 200),
(6, 'Kompjuterë', 'Electronikë', 15),
(7, 'Kalkulator shkencorë', 'Vegël', 30);

INSERT INTO RevenueReport (RRID, Date, Source, PaymentMethod) VALUES
(1, '2024-09-01', 'Tarifa e shkollimit', 'Transfertë bankare'),
(2, '2024-09-02', 'Donacionet', 'Cash'),
(3, '2024-09-03', 'Ngjarjet shkollore', 'Kartë krediti'),
(4, '2024-09-15', 'Shitje librash', 'Transferë bankare'),
(5, '2024-09-25', 'Qira', 'Transferë bankare');

INSERT INTO TeachingSchedule (ScheduleID, Location, Time) VALUES
(1, 'Salla 101', '10:00:00'),
(2, 'Salla 102', '11:00:00'),
(3, 'Salla 103', '12:00:00'),
(4, 'Salla 104', '13:00:00'),
(5, 'Salla 105', '14:00:00'),
(6, 'Salla 106', '15:00:00'),
(7, 'Salla 107', '16:00:00'),
(8, 'Salla 108', '17:00:00');

INSERT INTO ParticipatesIn (StudentID, ActivityID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(1, 2),
(2, 3),
(3, 4),
(4, 5);


INSERT INTO Has (ParentID, StudentID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Meets (ParentID, TeacherID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Views (ParentID, PRID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Faces (DAID, StudentID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Attends (AttendanceID, StudentID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Manage (ActivityID, StaffID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO TuitionFeePayment (ParentID, RRID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO Updates (TeacherID, EnrollmentsID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Teaches (TeacherID, ClassID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Need (AttendanceID, ClassID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Checks (TeacherID, ScheduleID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Uses (ResourceID, ClassID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

INSERT INTO AssignedTo (AssignmentID, ClassID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Manages (DepartmentID, ClassID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 7),
(3, 8);

INSERT INTO Oversee (DepartmentID, RRID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);