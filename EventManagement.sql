-- Create the Database
CREATE DATABASE EventPlanning;

-- Use the Database
USE EventPlanning;

-- Create Clients Table
CREATE TABLE Clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

-- Create Events Table
CREATE TABLE Events (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT,
    EventName VARCHAR(100),
    EventDate DATE,
    Location VARCHAR(255),
    Budget DECIMAL(10, 2),
    Description TEXT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

-- Create Vendors Table
CREATE TABLE Vendors (
    VendorID INT AUTO_INCREMENT PRIMARY KEY,
    VendorName VARCHAR(100),
    ContactName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    ServiceType VARCHAR(50),
    Address VARCHAR(255)
);

-- Create EventVendors Table
CREATE TABLE EventVendors (
    EventVendorID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    VendorID INT,
    ServiceDescription TEXT,
    Cost DECIMAL(10, 2),
    FOREIGN KEY (EventID) REFERENCES Events(EventID),
    FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID)
);

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Role VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Create EventEmployees Table
CREATE TABLE EventEmployees (
    EventEmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    EmployeeID INT,
    Role VARCHAR(50),
    AssignedDate DATE,
    FOREIGN KEY (EventID) REFERENCES Events(EventID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Create Tasks Table
CREATE TABLE Tasks (
    TaskID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    TaskDescription TEXT,
    AssignedTo INT,
    DueDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (EventID) REFERENCES Events(EventID),
    FOREIGN KEY (AssignedTo) REFERENCES Employees(EmployeeID)
);
-- Insert Sample Clients
INSERT INTO Clients (FirstName, LastName, Email, Phone, Address)
VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Elm Street'),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321', '456 Oak Avenue'),
('Michael', 'Johnson', 'michael.johnson@example.com', '1122334455', '789 Maple Road'),
('Emily', 'Williams', 'emily.williams@example.com', '2233445566', '321 Pine Street'),
('David', 'Brown', 'david.brown@example.com', '3344556677', '654 Cedar Lane'),
('Linda', 'Davis', 'linda.davis@example.com', '4455667788', '987 Birch Boulevard'),
('James', 'Miller', 'james.miller@example.com', '5566778899', '111 Aspen Avenue'),
('Barbara', 'Wilson', 'barbara.wilson@example.com', '6677889900', '222 Willow Way'),
('William', 'Moore', 'william.moore@example.com', '7788990011', '333 Cedar Circle'),
('Susan', 'Taylor', 'susan.taylor@example.com', '8899001122', '444 Maple Street'),
('Richard', 'Anderson', 'richard.anderson@example.com', '9900112233', '555 Pine Avenue'),
('Jessica', 'Thomas', 'jessica.thomas@example.com', '1011223344', '666 Birch Lane'),
('Charles', 'Jackson', 'charles.jackson@example.com', '1122334455', '777 Elm Circle'),
('Margaret', 'White', 'margaret.white@example.com', '1233445566', '888 Cedar Way'),
('Joseph', 'Harris', 'joseph.harris@example.com', '1344556677', '999 Oak Avenue'),
('Elizabeth', 'Martin', 'elizabeth.martin@example.com', '1455667788', '101 Maple Circle'),
('Thomas', 'Thompson', 'thomas.thompson@example.com', '1566778899', '202 Birch Way'),
('Karen', 'Garcia', 'karen.garcia@example.com', '1677889900', '303 Willow Street'),
('Christopher', 'Martinez', 'christopher.martinez@example.com', '1788990011', '404 Elm Avenue'),
('Nancy', 'Robinson', 'nancy.robinson@example.com', '1899001122', '505 Maple Lane'),
('Daniel', 'Clark', 'daniel.clark@example.com', '2000112233', '606 Pine Circle'),
('Lisa', 'Rodriguez', 'lisa.rodriguez@example.com', '2111223344', '707 Birch Avenue'),
('Paul', 'Lewis', 'paul.lewis@example.com', '2222334455', '808 Elm Lane'),
('Betty', 'Lee', 'betty.lee@example.com', '2333445566', '909 Cedar Street'),
('Mark', 'Walker', 'mark.walker@example.com', '2444556677', '1010 Pine Way'),
('Sandra', 'Hall', 'sandra.hall@example.com', '2555667788', '1111 Birch Circle'),
('Steven', 'Allen', 'steven.allen@example.com', '2666778899', '1212 Maple Avenue'),
('Donna', 'Young', 'donna.young@example.com', '2777889900', '1313 Elm Street'),
('Andrew', 'Hernandez', 'andrew.hernandez@example.com', '2888990011', '1414 Cedar Lane'),
('Carol', 'King', 'carol.king@example.com', '2999001122', '1515 Pine Circle'),
('Joshua', 'Wright', 'joshua.wright@example.com', '3111223344', '1616 Birch Avenue'),
('Dorothy', 'Lopez', 'dorothy.lopez@example.com', '3222334455', '1717 Elm Lane'),
('Ryan', 'Hill', 'ryan.hill@example.com', '3333445566', '1818 Cedar Street'),
('Sharon', 'Scott', 'sharon.scott@example.com', '3444556677', '1919 Pine Way'),
('Larry', 'Green', 'larry.green@example.com', '3555667788', '2020 Birch Circle'),
('Kathleen', 'Adams', 'kathleen.adams@example.com', '3666778899', '2121 Maple Avenue'),
('Nicholas', 'Baker', 'nicholas.baker@example.com', '3777889900', '2222 Elm Street'),
('Deborah', 'Gonzalez', 'deborah.gonzalez@example.com', '3888990011', '2323 Cedar Lane'),
('Kevin', 'Nelson', 'kevin.nelson@example.com', '3999001122', '2424 Pine Circle'),
('Laura', 'Carter', 'laura.carter@example.com', '4000112233', '2525 Birch Avenue'),
('Matthew', 'Mitchell', 'matthew.mitchell@example.com', '4111223344', '2626 Elm Lane'),
('Amy', 'Perez', 'amy.perez@example.com', '4222334455', '2727 Cedar Street'),
('Brian', 'Roberts', 'brian.roberts@example.com', '4333445566', '2828 Pine Way'),
('Helen', 'Turner', 'helen.turner@example.com', '4444556677', '2929 Birch Circle'),
('Anthony', 'Phillips', 'anthony.phillips@example.com', '4555667788', '3030 Maple Avenue');
-- Exercises in SQL using commands
SELECT * FROM Employees;
-- Insert Sample Employees
INSERT INTO Employees (FirstName, LastName, Email, Phone, Role, Salary)
VALUES
('Michael', 'White', 'michael.white@example.com', '3344556677', 'Event Manager', 60000.00),
('Sarah', 'Green', 'sarah.green@example.com', '4455667788', 'Assistant Manager', 45000.00),
('James', 'Clark', 'james.clark@example.com', '5566778899', 'Coordinator', 40000.00),
('Linda', 'Lewis', 'linda.lewis@example.com', '6677889900', 'Planner', 50000.00),
('Robert', 'Walker', 'robert.walker@example.com', '7788990011', 'Technician', 55000.00),
('Karen', 'Young', 'karen.young@example.com', '8899001122', 'Coordinator', 42000.00),
('Steven', 'Hall', 'steven.hall@example.com', '9900112233', 'Planner', 52000.00),
('Nancy', 'Allen', 'nancy.allen@example.com', '1011223344', 'Event Manager', 62000.00),
('Betty', 'Hernandez', 'betty.hernandez@example.com', '1122334455', 'Assistant Manager', 46000.00),
('Lisa', 'King', 'lisa.king@example.com', '1233445566', 'Technician', 57000.00),
('Dorothy', 'Wright', 'dorothy.wright@example.com', '1344556677', 'Coordinator', 43000.00),
('Thomas', 'Lopez', 'thomas.lopez@example.com', '1455667788', 'Planner', 53000.00),
('Sandra', 'Hill', 'sandra.hill@example.com', '1566778899', 'Event Manager', 64000.00),
('Paul', 'Scott', 'paul.scott@example.com', '1677889900', 'Assistant Manager', 47000.00),
('Donna', 'Green', 'donna.green@example.com', '1788990011', 'Technician', 58000.00),
('Edward', 'Adams', 'edward.adams@example.com', '1899001122', 'Coordinator', 44000.00),
('Helen', 'Baker', 'helen.baker@example.com', '2000112233', 'Planner', 54000.00),
('Kevin', 'Gonzalez', 'kevin.gonzalez@example.com', '2111223344', 'Event Manager', 66000.00),
('Laura', 'Nelson', 'laura.nelson@example.com', '2222334455', 'Assistant Manager', 48000.00),
('Brian', 'Carter', 'brian.carter@example.com', '2333445566', 'Technician', 59000.00),
('George', 'Mitchell', 'george.mitchell@example.com', '2444556677', 'Coordinator', 45000.00),
('Deborah', 'Perez', 'deborah.perez@example.com', '2555667788', 'Planner', 55000.00),
('Rebecca', 'Roberts', 'rebecca.roberts@example.com', '2666778899', 'Event Manager', 68000.00),
('Jason', 'Turner', 'jason.turner@example.com', '2777889900', 'Assistant Manager', 49000.00),
('Cynthia', 'Phillips', 'cynthia.phillips@example.com', '2888990011', 'Technician', 60000.00),
('Matthew', 'Campbell', 'matthew.campbell@example.com', '2999001122', 'Coordinator', 46000.00),
('Elizabeth', 'Parker', 'elizabeth.parker@example.com', '3111223344', 'Planner', 56000.00),
('Gary', 'Evans', 'gary.evans@example.com', '3222334455', 'Event Manager', 70000.00),
('Sharon', 'Edwards', 'sharon.edwards@example.com', '3333445566', 'Assistant Manager', 50000.00),
('Larry', 'Collins', 'larry.collins@example.com', '3444556677', 'Technician', 61000.00),
('Michelle', 'Stewart', 'michelle.stewart@example.com', '3555667788', 'Coordinator', 47000.00),
('Kimberly', 'Sanchez', 'kimberly.sanchez@example.com', '3666778899', 'Planner', 57000.00),
('Frank', 'Morris', 'frank.morris@example.com', '3777889900', 'Event Manager', 72000.00),
('Carol', 'Rogers', 'carol.rogers@example.com', '3888990011', 'Assistant Manager', 51000.00),
('Eric', 'Reed', 'eric.reed@example.com', '3999001122', 'Technician', 62000.00),
('Angela', 'Cook', 'angela.cook@example.com', '4000112233', 'Coordinator', 48000.00),
('Scott', 'Morgan', 'scott.morgan@example.com', '4111223344', 'Planner', 58000.00),
('Maria', 'Bell', 'maria.bell@example.com', '4222334455', 'Event Manager', 74000.00),
('Travis', 'Murphy', 'travis.murphy@example.com', '4333445566', 'Assistant Manager', 52000.00),
('Kathleen', 'Bailey', 'kathleen.bailey@example.com', '4444556677', 'Technician', 63000.00),
('Benjamin', 'Rivera', 'benjamin.rivera@example.com', '4555667788', 'Coordinator', 49000.00),
('Nicole', 'Cooper', 'nicole.cooper@example.com', '4666778899', 'Planner', 59000.00),
('Raymond', 'Richardson', 'raymond.richardson@example.com', '4777889900', 'Event Manager', 76000.00),
('Christina', 'Cox', 'christina.cox@example.com', '4888990011', 'Assistant Manager', 53000.00),
('Adam', 'Howard', 'adam.howard@example.com', '4999001122', 'Technician', 64000.00),
('Megan', 'Ward', 'megan.ward@example.com', '5000112233', 'Coordinator', 50000.00),
('Joshua', 'Torres', 'joshua.torres@example.com', '5111223344', 'Planner', 60000.00),
('Rachel', 'Peterson', 'rachel.peterson@example.com', '5222334455', 'Event Manager', 78000.00);
SELECT * FROM Employees;
-- Insert Sample Events
INSERT INTO Events (ClientID, EventName, EventDate, Location, Budget, Description)
VALUES
(1, 'Wedding', '2024-09-10', 'Central Park', 20000.00, 'Outdoor wedding ceremony and reception'),
(2, 'Corporate Conference', '2024-10-15', 'Convention Center', 50000.00, 'Annual corporate conference'),
(3, 'Birthday Party', '2024-08-20', 'John\'s House', 500.00, 'John\'s 30th birthday celebration'),
(4, 'Charity Gala', '2024-11-25', 'Grand Hotel Ballroom', 30000.00, 'Annual charity fundraising event'),
(5, 'Product Launch', '2024-12-05', 'Tech Hub', 15000.00, 'Launch of new tech product'),
(6, 'Family Reunion', '2024-07-15', 'City Park', 1000.00, 'Annual family reunion picnic'),
(7, 'Music Festival', '2024-09-20', 'Green Field', 75000.00, 'Three-day outdoor music festival'),
(8, 'Art Exhibition', '2024-06-10', 'Modern Art Museum', 20000.00, 'Contemporary art exhibition'),
(9, 'Sports Tournament', '2024-08-30', 'Stadium', 30000.00, 'Annual local sports tournament'),
(10, 'Networking Event', '2024-11-05', 'Downtown Convention Center', 5000.00, 'Professional networking event'),
(11, 'School Fundraiser', '2024-05-25', 'High School Gym', 3000.00, 'Fundraising event for school projects'),
(12, 'Tech Conference', '2024-10-01', 'Tech Convention Center', 40000.00, 'Annual technology conference'),
(13, 'New Year Party', '2024-12-31', 'City Hall', 10000.00, 'New Year celebration party'),
(14, 'Fashion Show', '2024-09-05', 'Luxury Hotel', 25000.00, 'Annual fashion show event'),
(15, 'Book Launch', '2024-03-15', 'City Library', 2000.00, 'Launch event for a new book'),
(16, 'Cooking Workshop', '2024-04-10', 'Culinary School', 5000.00, 'Interactive cooking workshop'),
(17, 'Charity Walk', '2024-05-10', 'City Park', 1500.00, 'Fundraising walk for charity'),
(18, 'Film Festival', '2024-11-15', 'Downtown Cinema', 60000.00, 'Annual international film festival'),
(19, 'Graduation Ceremony', '2024-06-20', 'University Campus', 10000.00, 'University graduation ceremony'),
(20, 'Wine Tasting', '2024-07-25', 'Vineyard', 5000.00, 'Exclusive wine tasting event'),
(21, 'Halloween Party', '2024-10-31', 'Community Center', 3000.00, 'Halloween costume party'),
(22, 'Car Show', '2024-08-15', 'City Plaza', 15000.00, 'Annual car show event'),
(23, 'Health Expo', '2024-09-25', 'Convention Center', 20000.00, 'Health and wellness expo'),
(24, 'Poetry Reading', '2024-04-05', 'City Library', 1000.00, 'Public poetry reading event'),
(25, 'Charity Auction', '2024-05-20', 'Luxury Hotel', 20000.00, 'Auction to raise funds for charity'),
(26, 'Food Festival', '2024-08-10', 'Downtown', 25000.00, 'Annual food festival with various vendors'),
(27, 'Business Seminar', '2024-09-10', 'Conference Hall', 8000.00, 'Seminar for local businesses'),
(28, 'Summer Camp', '2024-06-25', 'Campgrounds', 10000.00, 'Children\'s summer camp'),
(29, 'Theater Performance', '2024-10-20', 'City Theater', 15000.00, 'Live theater performance'),
(30, 'Craft Fair', '2024-11-10', 'Community Center', 5000.00, 'Local craft fair and market'),
(31, 'Christmas Market', '2024-12-20', 'Town Square', 10000.00, 'Holiday market with various vendors'),
(32, 'Photography Workshop', '2024-07-05', 'Art Studio', 2000.00, 'Workshop for amateur photographers'),
(33, 'Environmental Conference', '2024-09-30', 'Eco Center', 30000.00, 'Conference on environmental issues'),
(34, 'Science Fair', '2024-03-25', 'High School Gym', 2000.00, 'Annual science fair for students'),
(35, 'Charity Concert', '2024-06-15', 'Open Air Theater', 15000.00, 'Concert to raise funds for charity'),
(36, 'Real Estate Expo', '2024-04-20', 'Convention Center', 25000.00, 'Expo for real estate professionals'),
(37, 'Art Auction', '2024-05-30', 'Gallery', 10000.00, 'Auction of contemporary art pieces'),
(38, 'Volunteer Appreciation', '2024-12-05', 'Community Hall', 3000.00, 'Event to appreciate volunteers'),
(39, 'Startup Pitch', '2024-10-25', 'Tech Hub', 8000.00, 'Event for startups to pitch to investors'),
(40, 'Garden Party', '2024-07-15', 'Botanical Gardens', 5000.00, 'Outdoor garden party and picnic'),
(41, 'Dance Competition', '2024-08-05', 'Dance Studio', 7000.00, 'Local dance competition'),
(42, 'History Lecture', '2024-04-15', 'City Museum', 1000.00, 'Lecture on local history'),
(43, 'Volunteer Training', '2024-09-01', 'Training Center', 2000.00, 'Training session for new volunteers'),
(44, 'Language Workshop', '2024-03-10', 'Community Center', 1500.00, 'Workshop to learn new languages'),
(45, 'Robotics Competition', '2024-10-05', 'University Lab', 12000.00, 'Robotics competition for students'),
(46, 'Meditation Retreat', '2024-06-05', 'Retreat Center', 5000.00, 'Weekend meditation retreat'),
(47, 'Craft Workshop', '2024-04-25', 'Art Studio', 1000.00, 'Hands-on craft workshop'),
(48, 'Pet Adoption Event', '2024-07-10', 'Animal Shelter', 2000.00, 'Event to promote pet adoption'),
(49, 'Coding Bootcamp', '2024-09-20', 'Tech Center', 10000.00, 'Intensive coding bootcamp'),
(50, 'Chess Tournament', '2024-05-15', 'Community Center', 3000.00, 'Annual chess tournament');
-- Insert Sample Events
INSERT INTO Events (ClientID, EventName, EventDate, Location, Budget, Description)
VALUES
(1, 'Wedding', '2024-09-10', 'Central Park', 20000.00, 'Outdoor wedding ceremony and reception'),
(2, 'Corporate Conference', '2024-10-15', 'Convention Center', 50000.00, 'Annual corporate conference'),
(3, 'Birthday Party', '2024-08-20', 'John\'s House', 500.00, 'John\'s 30th birthday celebration'),
(4, 'Charity Gala', '2024-11-25', 'Grand Hotel Ballroom', 30000.00, 'Annual charity fundraising event'),
(5, 'Product Launch', '2024-12-05', 'Tech Hub', 15000.00, 'Launch of new tech product'),
(6, 'Family Reunion', '2024-07-15', 'City Park', 1000.00, 'Annual family reunion picnic'),
(7, 'Music Festival', '2024-09-20', 'Green Field', 75000.00, 'Three-day outdoor music festival'),
(8, 'Art Exhibition', '2024-06-10', 'Modern Art Museum', 20000.00, 'Contemporary art exhibition'),
(9, 'Sports Tournament', '2024-08-30', 'Stadium', 30000.00, 'Annual local sports tournament'),
(10, 'Networking Event', '2024-11-05', 'Downtown Convention Center', 5000.00, 'Professional networking event'),
(11, 'School Fundraiser', '2024-05-25', 'High School Gym', 3000.00, 'Fundraising event for school projects'),
(12, 'Tech Conference', '2024-10-01', 'Tech Convention Center', 40000.00, 'Annual technology conference'),
(13, 'New Year Party', '2024-12-31', 'City Hall', 10000.00, 'New Year celebration party'),
(14, 'Fashion Show', '2024-09-05', 'Luxury Hotel', 25000.00, 'Annual fashion show event'),
(15, 'Book Launch', '2024-03-15', 'City Library', 2000.00, 'Launch event for a new book'),
(16, 'Cooking Workshop', '2024-04-10', 'Culinary School', 5000.00, 'Interactive cooking workshop'),
(17, 'Charity Walk', '2024-05-10', 'City Park', 1500.00, 'Fundraising walk for charity'),
(18, 'Film Festival', '2024-11-15', 'Downtown Cinema', 60000.00, 'Annual international film festival'),
(19, 'Graduation Ceremony', '2024-06-20', 'University Campus', 10000.00, 'University graduation ceremony'),
(20, 'Wine Tasting', '2024-07-25', 'Vineyard', 5000.00, 'Exclusive wine tasting event'),
(21, 'Halloween Party', '2024-10-31', 'Community Center', 3000.00, 'Halloween costume party'),
(22, 'Car Show', '2024-08-15', 'City Plaza', 15000.00, 'Annual car show event'),
(23, 'Health Expo', '2024-09-25', 'Convention Center', 20000.00, 'Health and wellness expo'),
(24, 'Poetry Reading', '2024-04-05', 'City Library', 1000.00, 'Public poetry reading event'),
(25, 'Charity Auction', '2024-05-20', 'Luxury Hotel', 20000.00, 'Auction to raise funds for charity'),
(26, 'Food Festival', '2024-08-10', 'Downtown', 25000.00, 'Annual food festival with various vendors'),
(27, 'Business Seminar', '2024-09-10', 'Conference Hall', 8000.00, 'Seminar for local businesses'),
(28, 'Summer Camp', '2024-06-25', 'Campgrounds', 10000.00, 'Children\'s summer camp'),
(29, 'Theater Performance', '2024-10-20', 'City Theater', 15000.00, 'Live theater performance'),
(30, 'Craft Fair', '2024-11-10', 'Community Center', 5000.00, 'Local craft fair and market'),
(31, 'Christmas Market', '2024-12-20', 'Town Square', 10000.00, 'Holiday market with various vendors'),
(32, 'Photography Workshop', '2024-07-05', 'Art Studio', 2000.00, 'Workshop for amateur photographers'),
(33, 'Environmental Conference', '2024-09-30', 'Eco Center', 30000.00, 'Conference on environmental issues'),
(34, 'Science Fair', '2024-03-25', 'High School Gym', 2000.00, 'Annual science fair for students'),
(35, 'Charity Concert', '2024-06-15', 'Open Air Theater', 15000.00, 'Concert to raise funds for charity'),
(36, 'Real Estate Expo', '2024-04-20', 'Convention Center', 25000.00, 'Expo for real estate professionals'),
(37, 'Art Auction', '2024-05-30', 'Gallery', 10000.00, 'Auction of contemporary art pieces'),
(38, 'Volunteer Appreciation', '2024-12-05', 'Community Hall', 3000.00, 'Event to appreciate volunteers'),
(39, 'Startup Pitch', '2024-10-25', 'Tech Hub', 8000.00, 'Event for startups to pitch to investors'),
(40, 'Garden Party', '2024-07-15', 'Botanical Gardens', 5000.00, 'Outdoor garden party and picnic'),
(41, 'Dance Competition', '2024-08-05', 'Dance Studio', 7000.00, 'Local dance competition'),
(42, 'History Lecture', '2024-04-15', 'City Museum', 1000.00, 'Lecture on local history'),
(43, 'Volunteer Training', '2024-09-01', 'Training Center', 2000.00, 'Training session for new volunteers'),
(44, 'Language Workshop', '2024-03-10', 'Community Center', 1500.00, 'Workshop to learn new languages'),
(45, 'Robotics Competition', '2024-10-05', 'University Lab', 12000.00, 'Robotics competition for students'),
(46, 'Meditation Retreat', '2024-06-05', 'Retreat Center', 5000.00, 'Weekend meditation retreat'),
(47, 'Craft Workshop', '2024-04-25', 'Art Studio', 1000.00, 'Hands-on craft workshop'),
(48, 'Pet Adoption Event', '2024-07-10', 'Animal Shelter', 2000.00, 'Event to promote pet adoption'),
(49, 'Coding Bootcamp', '2024-09-20', 'Tech Center', 10000.00, 'Intensive coding bootcamp'),
(50, 'Chess Tournament', '2024-05-15', 'Community Center', 3000.00, 'Annual chess tournament');
SELECT * FROM clients;
-- Insert Sample Events
INSERT INTO Events (ClientID, EventName, EventDate, Location, Budget, Description)
VALUES
(1, 'Wedding', '2024-09-10', 'Central Park', 20000.00, 'Outdoor wedding ceremony and reception'),
(2, 'Corporate Conference', '2024-10-15', 'Convention Center', 50000.00, 'Annual corporate conference'),
(3, 'Birthday Party', '2024-08-20', 'John\'s House', 500.00, 'John\'s 30th birthday celebration'),
(4, 'Charity Gala', '2024-11-25', 'Grand Hotel Ballroom', 30000.00, 'Annual charity fundraising event'),
(5, 'Product Launch', '2024-12-05', 'Tech Hub', 15000.00, 'Launch of new tech product'),
(6, 'Family Reunion', '2024-07-15', 'City Park', 1000.00, 'Annual family reunion picnic'),
(7, 'Music Festival', '2024-09-20', 'Green Field', 75000.00, 'Three-day outdoor music festival'),
(8, 'Art Exhibition', '2024-06-10', 'Modern Art Museum', 20000.00, 'Contemporary art exhibition'),
(9, 'Sports Tournament', '2024-08-30', 'Stadium', 30000.00, 'Annual local sports tournament'),
(10, 'Networking Event', '2024-11-05', 'Downtown Convention Center', 5000.00, 'Professional networking event'),
(11, 'School Fundraiser', '2024-05-25', 'High School Gym', 3000.00, 'Fundraising event for school projects'),
(12, 'Tech Conference', '2024-10-01', 'Tech Convention Center', 40000.00, 'Annual technology conference'),
(13, 'New Year Party', '2024-12-31', 'City Hall', 10000.00, 'New Year celebration party'),
(14, 'Fashion Show', '2024-09-05', 'Luxury Hotel', 25000.00, 'Annual fashion show event'),
(15, 'Book Launch', '2024-03-15', 'City Library', 2000.00, 'Launch event for a new book'),
(16, 'Cooking Workshop', '2024-04-10', 'Culinary School', 5000.00, 'Interactive cooking workshop'),
(17, 'Charity Walk', '2024-05-10', 'City Park', 1500.00, 'Fundraising walk for charity'),
(18, 'Film Festival', '2024-11-15', 'Downtown Cinema', 60000.00, 'Annual international film festival');
SELECT * FROM Events;

-- the second data base that will consist of a library management system

CREATE DATABASE LibraryManagement;
Use LibraryManagement;

-- Create Authors Table
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Country VARCHAR(50)
);

-- Create Books Table
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    Genre VARCHAR(50),
    PublishedYear YEAR,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Create Members Table
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20)
);

-- Create Borrowings Table
CREATE TABLE Borrowings (
    BorrowingID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Insert Sample Data into Authors
INSERT INTO Authors (Name, Country) VALUES
('J.K. Rowling', 'United Kingdom'),
('George R.R. Martin', 'United States'),
('J.R.R. Tolkien', 'United Kingdom');

-- Insert Sample Data into Books
INSERT INTO Books (Title, AuthorID, Genre, PublishedYear) VALUES
('Harry Potter and the Sorcerer''s Stone', 1, 'Fantasy', 1997),
('A Game of Thrones', 2, 'Fantasy', 1996),
('The Hobbit', 3, 'Fantasy', 1937);

-- Insert Sample Data into Members
INSERT INTO Members (FirstName, LastName, Email, Phone) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234'),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678');

-- Insert Sample Data into Borrowings
INSERT INTO Borrowings (BookID, MemberID, BorrowDate, ReturnDate) VALUES
(1, 1, '2024-08-01', NULL),
(2, 2, '2024-08-02', '2024-08-09');


