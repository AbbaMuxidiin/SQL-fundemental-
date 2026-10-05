/*==============================================================
SQL PRACTICE DATABASE - EXPLICIT INSERT RECORDS
SQL Server / Azure SQL
Contains 300 visible rows in Orders.
==============================================================*/

Create database Practice  

use Practice

DROP TABLE IF EXISTS Orders_2026;
DROP TABLE IF EXISTS Orders_2025;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Branches;

CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    gender_raw VARCHAR(20),
    city_raw VARCHAR(50),
    phone VARCHAR(30),
    email VARCHAR(120),
    age_text VARCHAR(20),
    registration_date DATE
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_raw VARCHAR(50),
    unit_price_text VARCHAR(30)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    manager_id INT NULL,
    branch_id INT NOT NULL,
    role VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    employee_id INT,
    branch_id INT,
    order_date DATE,
    quantity INT,
    unit_price DECIMAL(10,2),
    discount_pct INT NULL,
    payment_method_raw VARCHAR(30),
    status_raw VARCHAR(30),
    notes VARCHAR(200) NULL
);

-- Branches: 5 records
INSERT INTO Branches (branch_id, branch_name, city) VALUES
(1, 'Central Branch', 'Mogadishu'),
(2, 'Wadajir Branch', 'Mogadishu'),
(3, 'Hargeisa Branch', 'Hargeisa'),
(4, 'Bosaso Branch', 'Bosaso'),
(5, 'Kismayo Branch', 'Kismayo');

-- Customers: 120 records
INSERT INTO Customers (customer_id, full_name, gender_raw, city_raw, phone, email, age_text, registration_date) VALUES
(1, 'Liban Osman', NULL, 'Mogadishu', '0619582901', 'Liban.Osman1@example.com', '22', '2024-01-08'),
(2, 'Nasra Isse', 'male', 'Garowe', '0618693329', 'Nasra.Isse2@example.com', '60', '2024-01-15'),
(3, 'NIMO ALI', 'MALE', ' Kismayo ', '0619752268', 'Nimo.Ali3@example.com', '24', '2024-01-22'),
(4, ' Nasra Omar ', 'MALE', 'Bosaso', '0615304315', 'Nasra.Omar4@example.com', '37', '2024-01-29'),
(5, 'hawa jama', 'male', ' Mogadishu ', '0612995576', 'Hawa.Jama5@example.com', '44', '2024-02-05'),
(6, 'KHADIJA ABDULLE', 'M', 'mogadishu', '0616250934', 'Khadija.Abdulle6@example.com', '35', '2024-02-12'),
(7, 'MAHAD HASSAN', 'MALE', ' Baydhabo ', '0619954564', 'Mahad.Hassan7@example.com', '19', '2024-02-19'),
(8, 'Fadumo Yusuf', 'MALE', 'Mogadisho', '0614260406', 'Fadumo.Yusuf8@example.com', '54', '2024-02-26'),
(9, 'Halima Omar', 'Female', ' Mogadishu ', '0618948893', 'Halima.Omar9@example.com', '40', '2024-03-04'),
(10, 'Sahra Mohamed', 'female', 'BAIDOA', '0619827463', 'Sahra.Mohamed10@example.com', '39', '2024-03-11'),
(11, 'HASSAN ABDI', 'female', 'Mogadishu', '0613236350', ' Hassan.Abdi11@example.com ', '55', '2024-03-18'),
(12, 'ABDIRAHMAN ISSE', 'male', 'bosaso', '0613775412', 'Abdirahman.Isse12@example.com', '51', '2024-03-25'),
(13, ' Hassan Omar ', 'Male', 'Kismaayo', '0612760553', 'HASSAN.OMAR13@EXAMPLE.COM', '20', '2024-04-01'),
(14, 'Sumaya Abdulle', 'female', 'Kismaayo', '0612791991', 'Sumaya.Abdulle14@example.com', '25', '2024-04-08'),
(15, 'HALIMA GULED', 'Female', ' Baydhabo ', '0616630238', 'Halima.Guled15@example.com', '40', '2024-04-15'),
(16, ' Yusuf Ali ', NULL, 'baidoa', '0612686917', 'Yusuf.Ali16@example.com', '20', '2024-04-22'),
(17, 'Ibrahim Yusuf', 'Female', 'Mogadisho', NULL, 'Ibrahim.Yusuf17@example.com', '23', '2024-04-29'),
(18, 'Amal Hassan', 'FEMALE', 'GAROWE', '0618796353', 'Amal.Hassan18@example.com', '42', '2024-05-06'),
(19, 'mohamed abdi', 'female', 'MOGADISHU', '0617712605', NULL, '53', '2024-05-13'),
(20, ' Amina Sheikh ', NULL, 'Kismayo', '0618262373', 'Amina.Sheikh20@example.com', '33', '2024-05-20'),
(21, 'nimo guled', 'Female', 'Mogadishu', '0616817489', 'Nimo.Guled21@example.com', '46', '2024-05-27'),
(22, 'Amal Ali', 'M', 'MOGADISHU', '0614047379', ' Amal.Ali22@example.com ', '25', '2024-06-03'),
(23, 'NASRA IBRAHIM', 'FEMALE', 'GAROWE', '061-466-9568', 'Nasra.Ibrahim23@example.com', '55', '2024-06-10'),
(24, ' Ibrahim Hassan ', 'Female', 'hargeisa', '0616332130', 'Ibrahim.Hassan24@example.com', '25', '2024-06-17'),
(25, ' Omar Farah ', 'MALE', 'Mogadisho', '0619420717', 'Omar.Farah25@example.com', '46', '2024-06-24'),
(26, 'khadija isse', NULL, 'Kismayo', '0619581661', 'KHADIJA.ISSE26@EXAMPLE.COM', '46', '2024-07-01'),
(27, 'HODAN WARSAME', NULL, 'Kismayo', '0612751650', 'Hodan.Warsame27@example.com', '45', '2024-07-08'),
(28, 'fadumo osman', 'female', 'HARGEISA', '0615031393', 'Fadumo.Osman28@example.com', '61', '2024-07-15'),
(29, ' Ibrahim Warsame ', 'F', 'bosaso', '0619642203', 'Ibrahim.Warsame29@example.com', NULL, '2024-07-22'),
(30, 'hassan warsame', 'FEMALE', ' Hargeisa ', '0615343645', 'Hassan.Warsame30@example.com', '41', '2024-07-29'),
(31, 'KHADIJA GULED', 'F', 'Mogadisho', '0619688023', 'Khadija.Guled31@example.com', '64', '2024-08-05'),
(32, ' Rahma Nur ', 'Male', 'Kismayo', '0614363641', 'Rahma.Nur32@example.com', '29', '2024-08-12'),
(33, ' Nasra Nur ', 'Female', 'HARGEISA', '0615377438', ' Nasra.Nur33@example.com ', '49', '2024-08-19'),
(34, 'Hawa Aden', 'F', ' Bosaso ', NULL, 'Hawa.Aden34@example.com', '36', '2024-08-26'),
(35, 'KHADIJA IBRAHIM', 'female', 'hargeisa', '0611466729', 'Khadija.Ibrahim35@example.com', '68', '2024-09-02'),
(36, ' Rahma Abdi ', 'female', 'GAROWE', '0615083319', 'Rahma.Abdi36@example.com', '29', '2024-09-09'),
(37, 'AMAL HASSAN', 'Female', 'MOGADISHU', '0615823820', 'Amal.Hassan37@example.com', '49 years', '2024-09-16'),
(38, 'YUSUF ALI', 'F', ' Garoowe ', '0614707112', NULL, '32', '2024-09-23'),
(39, 'abdullahi omar', 'M', ' Bosaso ', '0618373912', 'ABDULLAHI.OMAR39@EXAMPLE.COM', '46', '2024-09-30'),
(40, ' Maryan Farah ', 'M', ' Garoowe ', '0618621572', 'Maryan.Farah40@example.com', '60', '2024-10-07'),
(41, 'hodan sheikh', 'male', ' Hargeisa ', '0613232369', 'Hodan.Sheikh41@example.com', '33', '2024-10-14'),
(42, ' Ahmed Omar ', 'Female', 'bosaso', '0613501157', 'Ahmed.Omar42@example.com', '58', '2024-10-21'),
(43, ' Maryan Abdi ', NULL, 'Baidoa', '0617275663', 'Maryan.Abdi43@example.com', '55', '2024-10-28'),
(44, 'Amal Guled', 'MALE', ' Baydhabo ', '0616666059', ' Amal.Guled44@example.com ', '60', '2024-11-04'),
(45, 'Omar Farah', 'Male', ' Bosaso ', '0615389314', 'Omar.Farah45@example.com', '39', '2024-11-11'),
(46, 'HODAN MUMIN', 'Male', 'Mogadisho', '061-259-8566', 'Hodan.Mumin46@example.com', '45', '2024-11-18'),
(47, 'amal mohamed', 'Male', ' Garoowe ', '0611464124', 'Amal.Mohamed47@example.com', '65', '2024-11-25'),
(48, ' Sahra Guled ', 'Male', 'BAIDOA', '0615193001', 'Sahra.Guled48@example.com', '18', '2024-12-02'),
(49, ' Ifrah Osman ', 'Female', 'BOSASO', '0619370914', 'Ifrah.Osman49@example.com', '35', '2024-12-09'),
(50, ' Hodan Nur ', 'Female', ' Hargeisa ', '0618254027', 'Hodan.Nur50@example.com', '57', '2024-12-16'),
(51, 'HASSAN ADEN', 'female', 'MOGADISHU', NULL, 'Hassan.Aden51@example.com', '35', '2024-12-23'),
(52, 'SAHRA GULED', 'M', 'HARGEISA', '0616103120', 'SAHRA.GULED52@EXAMPLE.COM', '42', '2024-12-30'),
(53, 'NASRA ADEN', 'male', 'Garowe', '0618170687', 'Nasra.Aden53@example.com', '46', '2025-01-06'),
(54, 'LIBAN FARAH', 'Female', ' Baydhabo ', '0614987413', 'Liban.Farah54@example.com', '27', '2025-01-13'),
(55, 'hodan aden', 'male', 'GAROWE', '0618713908', ' Hodan.Aden55@example.com ', '50', '2025-01-20'),
(56, 'Ifrah Osman', 'Female', 'Kismayo', '0614337167', 'Ifrah.Osman56@example.com', '19', '2025-01-27'),
(57, 'nasra abdulle', 'male', 'Mogadishu', '0614965249', NULL, '41', '2025-02-03'),
(58, 'rahma yusuf', 'MALE', 'BOSASO', '0611323723', 'Rahma.Yusuf58@example.com', NULL, '2025-02-10'),
(59, 'Sahra Ibrahim', 'male', ' Hargeisa ', '0616412645', 'Sahra.Ibrahim59@example.com', '26', '2025-02-17'),
(60, 'abdi omar', 'female', 'Mogadisho', '0616950107', 'Abdi.Omar60@example.com', '67', '2025-02-24'),
(61, 'Liban Sheikh', 'Female', ' Mogadishu ', '0617510937', 'Liban.Sheikh61@example.com', '30', '2025-03-03'),
(62, 'NASRA MOHAMED', 'Female', 'Bossaso', '0618908487', 'Nasra.Mohamed62@example.com', '42', '2025-03-10'),
(63, 'Asha Aden', 'male', 'BAIDOA', '0611581185', 'Asha.Aden63@example.com', '26', '2025-03-17'),
(64, 'maryan abdulle', 'F', 'Kismaayo', '0615195545', 'Maryan.Abdulle64@example.com', '22', '2025-03-24'),
(65, 'khadija mumin', 'MALE', 'bosaso', '0614393166', 'KHADIJA.MUMIN65@EXAMPLE.COM', '32', '2025-03-31'),
(66, 'khadija aden', 'MALE', ' Hargeisa ', '0618663996', ' Khadija.Aden66@example.com ', '41', '2025-04-07'),
(67, 'hodan aden', 'female', 'Hargeisa', '0618367998', 'Hodan.Aden67@example.com', '39', '2025-04-14'),
(68, 'sahra abdulle', 'F', ' Hargeisa ', NULL, 'Sahra.Abdulle68@example.com', '22', '2025-04-21'),
(69, ' Yusuf Abdulle ', 'FEMALE', 'GAROWE', '061-686-5494', 'Yusuf.Abdulle69@example.com', '18', '2025-04-28'),
(70, ' Sahra Nur ', 'male', 'bosaso', '0615313283', 'Sahra.Nur70@example.com', '27', '2025-05-05'),
(71, ' Ifrah Ahmed ', NULL, 'HARGEISA', '0616225952', 'Ifrah.Ahmed71@example.com', '21', '2025-05-12'),
(72, ' Abdullahi Ahmed ', 'MALE', ' Bosaso ', '0612753741', 'Abdullahi.Ahmed72@example.com', '38', '2025-05-19'),
(73, 'Nimo Mohamed', 'M', ' Garoowe ', '0615076414', 'Nimo.Mohamed73@example.com', '63', '2025-05-26'),
(74, 'IBRAHIM ADEN', 'F', 'Mogadisho', '0611442435', 'Ibrahim.Aden74@example.com', '45 years', '2025-06-02'),
(75, 'Abdirahman Hassan', 'Female', 'Mogadisho', '0619283653', 'Abdirahman.Hassan75@example.com', '65', '2025-06-09'),
(76, 'Asha Warsame', 'female', ' Hargeisa ', '0611654120', NULL, '61', '2025-06-16'),
(77, 'ABDULLAHI DAHIR', 'female', 'baidoa', '0619316597', ' Abdullahi.Dahir77@example.com ', '21', '2025-06-23'),
(78, 'ali omar', 'female', 'KISMAYO', '0617472085', 'ALI.OMAR78@EXAMPLE.COM', '61', '2025-06-30'),
(79, ' Ibrahim Jama ', 'F', ' Baydhabo ', '0618936563', 'Ibrahim.Jama79@example.com', '44', '2025-07-07'),
(80, 'Ifrah Nur', 'male', ' Baydhabo ', '0613812275', 'Ifrah.Nur80@example.com', '69', '2025-07-14'),
(81, 'Maryan Hassan', 'Female', 'Garowe', '0615508870', 'Maryan.Hassan81@example.com', '56', '2025-07-21'),
(82, 'ismail omar', 'male', 'HARGEISA', '0614902925', 'Ismail.Omar82@example.com', '48', '2025-07-28'),
(83, 'ALI IBRAHIM', 'MALE', 'baidoa', '0611893976', 'Ali.Ibrahim83@example.com', '30', '2025-08-04'),
(84, 'Halima Ibrahim', 'FEMALE', 'Kismayo', '0617150394', 'Halima.Ibrahim84@example.com', '25', '2025-08-11'),
(85, 'Sahra Warsame', 'FEMALE', 'hargeisa', NULL, 'Sahra.Warsame85@example.com', '29', '2025-08-18'),
(86, 'liban mohamed', 'FEMALE', 'Baidoa', '0615819068', 'Liban.Mohamed86@example.com', '50', '2025-08-25'),
(87, 'omar warsame', 'M', 'Baidoa', '0615985316', 'Omar.Warsame87@example.com', NULL, '2025-09-01'),
(88, 'Omar Nur', 'M', 'garowe', '0613606074', ' Omar.Nur88@example.com ', '59', '2025-09-08'),
(89, 'mustafa omar', 'female', 'BAIDOA', '0617225584', 'Mustafa.Omar89@example.com', '43', '2025-09-15'),
(90, ' Ifrah Osman ', 'FEMALE', 'Kismaayo', '0613659380', 'Ifrah.Osman90@example.com', '20', '2025-09-22'),
(91, 'sahra mohamed', 'M', 'Bossaso', '0617181278', 'SAHRA.MOHAMED91@EXAMPLE.COM', '49', '2025-09-29'),
(92, ' Sumaya Isse ', 'male', 'Baidoa', '061-623-6426', 'Sumaya.Isse92@example.com', '36', '2025-10-06'),
(93, 'ibrahim jama', 'F', 'BOSASO', '0611299053', 'Ibrahim.Jama93@example.com', '34', '2025-10-13'),
(94, ' Ismail Sheikh ', 'Male', ' Baydhabo ', '0618186990', 'Ismail.Sheikh94@example.com', '42', '2025-10-20'),
(95, 'HAWA FARAH', NULL, 'mogadishu', '0616727527', NULL, '32', '2025-10-27'),
(96, 'Hassan Hassan', 'MALE', 'Kismaayo', '0617463170', 'Hassan.Hassan96@example.com', '31', '2025-11-03'),
(97, 'Ifrah Ahmed', 'male', 'bosaso', '0619120041', 'Ifrah.Ahmed97@example.com', '25', '2025-11-10'),
(98, 'Fadumo Ibrahim', 'female', ' Garoowe ', '0611937105', 'Fadumo.Ibrahim98@example.com', '62', '2025-11-17'),
(99, 'Liban Omar', 'F', 'Kismaayo', '0618053740', ' Liban.Omar99@example.com ', '46', '2025-11-24'),
(100, ' Halima Osman ', 'MALE', 'GAROWE', '0615841105', 'Halima.Osman100@example.com', '44', '2025-12-01'),
(101, 'Ahmed Abdulle', 'female', 'bosaso', '0616103893', 'Ahmed.Abdulle101@example.com', '69', '2025-12-08'),
(102, 'SAHRA ISSE', 'female', 'garowe', NULL, 'Sahra.Isse102@example.com', '45', '2025-12-15'),
(103, ' Mustafa Dahir ', 'Male', 'Hargeisa', '0618818740', 'Mustafa.Dahir103@example.com', '43', '2025-12-22'),
(104, ' Hawa Sheikh ', 'FEMALE', 'Bosaso', '0617982887', 'HAWA.SHEIKH104@EXAMPLE.COM', '36', '2025-12-29'),
(105, ' Hodan Abdulle ', 'male', 'Hargeisa', '0618445933', 'Hodan.Abdulle105@example.com', '70', '2026-01-05'),
(106, 'sahra farah', 'MALE', 'garowe', '0618190599', 'Sahra.Farah106@example.com', '69', '2026-01-12'),
(107, ' Mustafa Abdulle ', 'M', 'Bosaso', '0612634495', 'Mustafa.Abdulle107@example.com', '53', '2026-01-19'),
(108, 'HASSAN YUSUF', 'M', ' Hargeisa ', '0613700366', 'Hassan.Yusuf108@example.com', '64', '2026-01-26'),
(109, 'abdi dahir', 'female', 'Baidoa', '0614928104', 'Abdi.Dahir109@example.com', '19', '2026-02-02'),
(110, 'Nasra Farah', 'Female', 'garowe', '0619811742', ' Nasra.Farah110@example.com ', '54', '2026-02-09'),
(111, 'Rahma Ibrahim', 'Male', ' Kismayo ', '0618876492', 'Rahma.Ibrahim111@example.com', '66 years', '2026-02-16'),
(112, ' Ibrahim Jama ', 'F', 'BOSASO', '0614911373', 'Ibrahim.Jama112@example.com', '22', '2026-02-23'),
(113, 'sumaya abdulle', 'FEMALE', ' Hargeisa ', '0614725892', 'Sumaya.Abdulle113@example.com', '60', '2026-03-02'),
(114, 'nasra abdi', NULL, 'GAROWE', '0617182567', NULL, '63', '2026-03-09'),
(115, 'nimo hassan', 'F', 'garowe', '061-788-6619', 'Nimo.Hassan115@example.com', '47', '2026-03-16'),
(116, ' Rahma Nur ', 'Male', 'Baidoa', '0619741192', 'Rahma.Nur116@example.com', NULL, '2026-03-23'),
(117, ' Halima Yusuf ', 'Male', ' Kismayo ', '0615762351', 'HALIMA.YUSUF117@EXAMPLE.COM', '48', '2026-03-30'),
(118, 'ismail abdi', 'F', 'Garowe', '0614641035', 'Ismail.Abdi118@example.com', '18', '2026-04-06'),
(119, 'HAWA ISSE', 'male', 'Mogadisho', NULL, 'Hawa.Isse119@example.com', '24', '2026-04-13'),
(120, 'Abdirahman Osman', 'MALE', 'bosaso', '0612753173', 'Abdirahman.Osman120@example.com', '68', '2026-04-20');

-- Products: 45 records
INSERT INTO Products (product_id, product_name, category_raw, unit_price_text) VALUES
(1, 'Laptop Stand', 'Education', '27.35'),
(2, 'Wireless Mouse', 'Electronics', '44.70'),
(3, 'Keyboard', 'ELECTRONICS', '62.05'),
(4, 'USB Flash Drive', 'OFFICE SUPPLIES', '79.40'),
(5, 'Power Bank', ' Office Supplies ', '96.75'),
(6, 'Headphones', 'HEALTH', '114.10'),
(7, 'Notebook Pack', 'Health', '131.45'),
(8, 'Printer Paper', 'OFFICE SUPPLIES', '148.80'),
(9, 'Desk Organizer', 'OFFICE SUPPLIES', '166.15'),
(10, 'Calculator', 'Education', '183.50'),
(11, 'Water Bottle', 'electronics', '200.85'),
(12, 'Desk Lamp', 'OFFICE SUPPLIES', '218.20'),
(13, 'First Aid Kit', 'Accessories', '235.55'),
(14, 'Thermometer', 'electronics', '$252.90'),
(15, 'Blood Pressure Monitor', 'OFFICE SUPPLIES', '270.25'),
(16, 'Stethoscope', 'HEALTH', '287.60'),
(17, 'Textbook', 'Health', '304.95'),
(18, 'USB Cable', 'Electronics', '322.30'),
(19, 'Phone Charger', 'Electronics', '339.65'),
(20, 'Backpack', 'ELECTRONICS', '357.00'),
(21, 'External SSD', 'ELECTRONICS', '374.35'),
(22, 'Webcam', 'OFFICE SUPPLIES', '391.70'),
(23, 'Router', 'electronics', '409.05'),
(24, 'HDMI Cable', 'electronics', '426.40'),
(25, 'Extension Cable', 'Health', '443.75'),
(26, 'Office Chair', 'Education', '461.10'),
(27, 'Desk Fan', 'Health', '478.45'),
(28, 'Whiteboard Marker', 'Health', '$495.80'),
(29, 'Stapler', 'ELECTRONICS', '513.15'),
(30, 'File Folder', ' Office Supplies ', '530.50'),
(31, 'Tablet', 'electronics', '547.85'),
(32, 'Smartphone', ' Office Supplies ', '565.20'),
(33, 'Monitor', 'Accessories', '582.55'),
(34, 'Mini Projector', ' Office Supplies ', '599.90'),
(35, 'Scientific Calculator', 'Education', '617.25'),
(36, 'Lab Coat', 'Health', '634.60'),
(37, 'Safety Goggles', 'HEALTH', '651.95'),
(38, 'Clipboard', 'OFFICE SUPPLIES', '669.30'),
(39, 'Ethernet Cable', 'HEALTH', '686.65'),
(40, 'Memory Card', 'ELECTRONICS', '704.00'),
(41, 'Portable Speaker', 'electronics', '721.35'),
(42, 'Microphone', ' Office Supplies ', '$738.70'),
(43, 'Ring Light', 'electronics', '756.05'),
(44, 'Pen Set', 'Electronics', '773.40'),
(45, 'Mouse Pad', 'Accessories', '790.75');

-- Employees: 30 records
INSERT INTO Employees (employee_id, employee_name, manager_id, branch_id, role) VALUES
(1, 'Ahmed Hassan', NULL, 1, 'General Manager'),
(2, 'Asha Ali', 1, 1, 'Branch Manager'),
(3, 'Mohamed Nur', 1, 2, 'Branch Manager'),
(4, 'Hawa Omar', 1, 3, 'Branch Manager'),
(5, 'Abdi Farah', 1, 4, 'Branch Manager'),
(6, 'Maryan Yusuf', 1, 5, 'Branch Manager'),
(7, 'Mustafa Yusuf', 2, 1, 'Store Officer'),
(8, 'Mustafa Osman', 3, 2, 'Sales Officer'),
(9, 'Ismail Mumin', 4, 3, 'Cashier'),
(10, 'Amina Mumin', 5, 4, 'Data Clerk'),
(11, 'Liban Dahir', 6, 5, 'Store Officer'),
(12, 'Abdi Dahir', 2, 1, 'Sales Officer'),
(13, 'Ahmed Hassan', 3, 2, 'Cashier'),
(14, 'Omar Warsame', 4, 3, 'Data Clerk'),
(15, 'Mustafa Osman', 5, 4, 'Store Officer'),
(16, 'Omar Guled', 6, 5, 'Sales Officer'),
(17, 'Sahra Sheikh', 2, 1, 'Cashier'),
(18, 'Sahra Aden', 3, 2, 'Data Clerk'),
(19, 'Amal Abdulle', 4, 3, 'Store Officer'),
(20, 'Hawa Hassan', 5, 4, 'Sales Officer'),
(21, 'Ahmed Ahmed', 6, 5, 'Cashier'),
(22, 'Ali Mumin', 2, 1, 'Data Clerk'),
(23, 'Yusuf Dahir', 3, 2, 'Store Officer'),
(24, 'Mohamed Guled', 4, 3, 'Sales Officer'),
(25, 'Asha Nur', 5, 4, 'Cashier'),
(26, 'Ahmed Dahir', 6, 5, 'Data Clerk'),
(27, 'Nasra Ali', 2, 1, 'Store Officer'),
(28, 'Khadija Jama', 3, 2, 'Sales Officer'),
(29, 'Halima Isse', 4, 3, 'Cashier'),
(30, 'Abdirahman Dahir', 5, 4, 'Data Clerk');

-- Orders: 300 records
INSERT INTO Orders (order_id, customer_id, product_id, employee_id, branch_id, order_date, quantity, unit_price, discount_pct, payment_method_raw, status_raw, notes) VALUES
(1001, 55, 4, 3, 2, '2025-01-04', 3, 49.01, 15, 'mobile money', 'CANCELLED', 'Repeat customer'),
(1002, 108, 33, 30, 4, '2025-01-07', 8, 78.02, 5, 'Card', 'completed', NULL),
(1003, 84, 8, 3, 2, '2025-01-10', 3, 107.03, NULL, 'Mobile Money', 'pending', 'PROMO order'),
(1004, 22, 44, 28, 2, '2025-01-13', 8, 136.04, 0, 'MOBILE MONEY', 'completed', NULL),
(1005, 6, 14, 7, 1, '2025-01-16', 1, 165.05, 5, 'CARD', 'CANCELLED', 'urgent delivery'),
(1006, 35, 21, 24, 3, '2025-01-19', 8, 194.06, 15, 'CASH', 'CANCELLED', '  Handle carefully  '),
(1007, 15, 44, 23, 2, '2025-01-22', 6, 223.07, 0, 'MOBILE MONEY', 'CANCELLED', ''),
(1008, 108, 23, 9, 3, '2025-01-25', 8, 252.08, 15, 'CARD', 'pending', 'PROMO order'),
(1009, 21, 18, 21, 5, '2025-01-28', 1, 281.09, 0, 'Cash', 'CANCELLED', '  Handle carefully  '),
(1010, 101, 9, 10, 4, '2025-01-31', 5, 310.1, 0, 'cash', 'COMPLETED', 'PROMO order'),
(1011, 44, 37, 11, 5, '2025-02-03', 2, 339.11, 15, 'cash', 'Completed', NULL),
(1012, 30, 30, 23, 2, '2025-02-06', 6, 368.12, 0, 'CARD', 'Completed', '  Handle carefully  '),
(1013, 41, 3, 4, 3, '2025-02-09', 2, 397.13, 20, 'Cash', 'completed', NULL),
(1014, 2, 22, 27, 1, '2025-02-12', 2, 426.14, 10, 'cash', 'CANCELLED', '  Handle carefully  '),
(1015, 15, 18, 10, 4, '2025-02-15', 6, 455.15, 0, 'Card', 'Completed', NULL),
(1016, 44, 41, 5, 4, '2025-02-18', 3, 484.16, 15, 'Card', 'Pending', 'PROMO order'),
(1017, 21, 13, 3, 2, '2025-02-21', 8, 513.17, 0, 'Card', 'Cancelled', NULL),
(1018, 20, 14, 27, 1, '2025-02-24', 4, 542.18, 15, 'Cash', 'Pending', NULL),
(1019, 8, 33, 24, 3, '2025-02-27', 4, 571.19, 20, 'MOBILE MONEY', 'CANCELLED', 'PROMO order'),
(1020, 20, 2, 4, 3, '2025-03-02', 5, 600.2, 0, 'Card', 'completed', NULL),
(1021, 14, 10, 9, 3, '2025-03-05', 2, 629.21, 0, NULL, 'COMPLETED', 'PROMO order'),
(1022, 28, 23, 4, 3, '2025-03-08', 4, 658.22, 15, 'Card', 'CANCELLED', NULL),
(1023, 25, 34, 11, 5, '2025-03-11', 3, 687.23, 0, 'CARD', 'Completed', ''),
(1024, 61, 15, 13, 2, '2025-03-14', 8, 716.24, 5, 'CASH', 'completed', NULL),
(1025, 88, 17, 28, 2, '2025-03-17', 8, 745.25, 10, 'cash', 'Pending', '  Handle carefully  '),
(1026, 26, 35, 3, 2, '2025-03-20', 8, 774.26, 20, 'CARD', 'COMPLETED', NULL),
(1027, 87, 43, 28, 2, '2025-03-23', 1, 803.27, 0, 'CARD', 'Cancelled', 'urgent delivery'),
(1028, 74, 4, 18, 2, '2025-03-26', 5, 832.28, 0, 'Mobile Money', 'Completed', NULL),
(1029, 79, 40, 12, 1, '2025-03-29', 4, 861.29, 0, 'CASH', 'COMPLETED', NULL),
(1030, 81, 4, 15, 4, '2025-04-01', 3, 890.3, 20, 'mobile money', 'completed', NULL),
(1031, 4, 30, 12, 1, '2025-04-04', 8, 919.31, 10, 'MOBILE MONEY', 'completed', '  Handle carefully  '),
(1032, 64, 36, 29, 3, '2025-04-07', 5, 48.32, 15, 'Mobile Money', 'CANCELLED', NULL),
(1033, 32, 31, 5, 4, '2025-04-10', 5, 77.33, 0, 'mobile money', 'Pending', NULL),
(1034, 10, 14, 3, 2, '2025-04-13', 4, 106.34, 0, 'CARD', 'CANCELLED', ''),
(1035, 43, 10, 26, 5, '2025-04-16', 8, 135.35, 15, 'MOBILE MONEY', 'Cancelled', 'urgent delivery'),
(1036, 2, 9, 28, 2, '2025-04-19', 2, 164.36, 20, 'Cash', 'Completed', '  Handle carefully  '),
(1037, 15, 35, 22, 1, '2025-04-22', 7, 193.37, 0, 'CASH', 'Pending', 'Repeat customer'),
(1038, 103, 11, 2, 1, '2025-04-25', 8, 222.38, 0, 'CARD', 'completed', NULL),
(1039, 84, 41, 18, 2, '2025-04-28', 2, 251.39, 5, 'Cash', 'Completed', 'Repeat customer'),
(1040, 16, 32, 8, 2, '2025-05-01', 3, 280.4, 5, 'CARD', 'pending', NULL),
(1041, 4, 13, 3, 2, '2025-05-04', 3, 309.41, 0, 'CARD', 'pending', 'Repeat customer'),
(1042, 12, 4, 16, 5, '2025-05-07', 2, 338.42, 20, 'CASH', 'CANCELLED', 'PROMO order'),
(1043, 26, 27, 16, 5, '2025-05-10', 1, 367.43, 0, 'CARD', 'completed', NULL),
(1044, 22, 45, 22, 1, '2025-05-13', 3, 396.44, 20, 'Card', 'Cancelled', NULL),
(1045, 71, 12, 21, 5, '2025-05-16', 1, 425.45, 0, 'mobile money', 'completed', 'PROMO order'),
(1046, 1, 22, 5, 4, '2025-05-19', 5, 454.46, 15, 'Card', 'completed', 'Repeat customer'),
(1047, 80, 38, 23, 2, '2025-05-22', 8, 483.47, NULL, 'cash', 'pending', NULL),
(1048, 4, 25, 22, 1, '2025-05-25', 7, 512.48, 15, 'mobile money', 'CANCELLED', 'urgent delivery'),
(1049, 104, 7, 7, 1, '2025-05-28', 5, 541.49, 15, 'cash', 'Cancelled', ''),
(1050, 11, 40, 20, 4, '2025-05-31', 2, 570.5, 10, 'Card', 'CANCELLED', NULL),
(1051, 79, 14, 30, 4, '2025-06-03', 8, 599.51, 0, 'MOBILE MONEY', 'completed', '  Handle carefully  '),
(1052, 18, 42, 26, 5, '2025-06-06', 1, 628.52, 0, 'CASH', 'pending', 'PROMO order'),
(1053, 79, 32, 26, 5, '2025-06-09', 5, 657.53, NULL, 'MOBILE MONEY', 'Cancelled', 'urgent delivery'),
(1054, 19, 13, 22, 1, '2025-06-12', 2, 686.54, 0, 'CASH', 'Completed', 'PROMO order'),
(1055, 9, 45, 14, 3, '2025-06-15', 7, 715.55, 0, 'cash', 'completed', NULL),
(1056, 20, 31, 20, 4, '2025-06-18', 1, 744.56, 5, 'Card', 'Pending', '  Handle carefully  '),
(1057, 42, 18, 22, 1, '2025-06-21', 4, 773.57, NULL, 'Card', 'completed', NULL),
(1058, 108, 21, 11, 5, '2025-06-24', 1, 802.58, 20, 'Mobile Money', 'pending', NULL),
(1059, 33, 14, 10, 4, '2025-06-27', 5, 831.59, 10, 'mobile money', 'pending', ''),
(1060, 42, 12, 12, 1, '2025-06-30', 8, 860.6, 15, 'mobile money', 'CANCELLED', ''),
(1061, 107, 2, 7, 1, '2025-07-03', 4, 889.61, 15, NULL, 'pending', 'urgent delivery'),
(1062, 45, 8, 10, 4, '2025-07-06', 1, 918.62, 0, NULL, 'Cancelled', 'urgent delivery'),
(1063, 77, 36, 21, 5, '2025-07-09', 6, 47.63, 20, 'Cash', 'COMPLETED', NULL),
(1064, 75, 8, 27, 1, '2025-07-12', 3, 76.64, 15, 'Cash', 'CANCELLED', '  Handle carefully  '),
(1065, 74, 41, 30, 4, '2025-07-15', 1, 105.65, 0, 'mobile money', 'COMPLETED', NULL),
(1066, 3, 38, 6, 5, '2025-07-18', 6, 134.66, 15, 'Card', 'Cancelled', 'urgent delivery'),
(1067, 33, 32, 25, 4, '2025-07-21', 4, 163.67, 0, NULL, 'Completed', 'urgent delivery'),
(1068, 74, 41, 19, 3, '2025-07-24', 3, 192.68, 20, 'cash', 'Pending', NULL),
(1069, 94, 16, 5, 4, '2025-07-27', 7, 221.69, 0, 'Mobile Money', 'CANCELLED', 'Repeat customer'),
(1070, 22, 34, 26, 5, '2025-07-30', 2, 250.7, 0, 'mobile money', 'Cancelled', ''),
(1071, 71, 36, 11, 5, '2025-08-02', 7, 279.71, 15, 'MOBILE MONEY', 'pending', ''),
(1072, 15, 3, 13, 2, '2025-08-05', 3, 308.72, 0, 'mobile money', 'CANCELLED', '  Handle carefully  '),
(1073, 40, 31, 14, 3, '2025-08-08', 4, 337.73, 0, 'cash', 'pending', 'Repeat customer'),
(1074, 96, 26, 18, 2, '2025-08-11', 1, 366.74, 5, 'Card', 'Cancelled', 'Repeat customer'),
(1075, 87, 8, 19, 3, '2025-08-14', 6, 395.75, 10, 'CASH', 'completed', 'urgent delivery'),
(1076, 66, 29, 11, 5, '2025-08-17', 6, 424.76, NULL, 'mobile money', 'COMPLETED', 'urgent delivery'),
(1077, 121, 42, 26, 5, '2025-08-20', 2, 453.77, NULL, 'Mobile Money', 'completed', NULL),
(1078, 21, 17, 29, 3, '2025-08-23', 3, 482.78, 0, 'CARD', 'CANCELLED', NULL),
(1079, 112, 19, 14, 3, '2025-08-26', 3, 511.79, 0, 'CARD', 'pending', NULL),
(1080, 44, 22, 10, 4, '2025-08-29', 2, 540.8, 5, 'Card', 'Pending', NULL),
(1081, 69, 32, 16, 5, '2025-09-01', 2, 569.81, 10, NULL, 'pending', '  Handle carefully  '),
(1082, 99, 10, 20, 4, '2025-09-04', 8, 598.82, NULL, 'Cash', 'CANCELLED', '  Handle carefully  '),
(1083, 37, 43, 7, 1, '2025-09-07', 7, 627.83, NULL, 'CARD', 'Pending', NULL),
(1084, 1, 36, 19, 3, '2025-09-10', 6, 656.84, 20, 'cash', 'Cancelled', '  Handle carefully  '),
(1085, 26, 25, 28, 2, '2025-09-13', 2, 685.85, 0, 'CARD', 'COMPLETED', 'urgent delivery'),
(1086, 34, 2, 12, 1, '2025-09-16', 6, 714.86, 0, 'MOBILE MONEY', 'COMPLETED', NULL),
(1087, 82, 17, 30, 4, '2025-09-19', 2, 743.87, 10, 'Cash', 'CANCELLED', NULL),
(1088, 87, 2, 24, 3, '2025-09-22', 2, 772.88, 0, 'Cash', 'Completed', 'urgent delivery'),
(1089, 87, 43, 3, 2, '2025-09-25', 4, 801.89, 20, 'CASH', 'CANCELLED', 'urgent delivery'),
(1090, 40, 999, 25, 4, '2025-09-28', 1, 830.9, NULL, 'Mobile Money', 'completed', 'Repeat customer'),
(1091, 38, 7, 23, 2, '2025-10-01', 3, 859.91, 0, 'CASH', 'Completed', 'urgent delivery'),
(1092, 71, 20, 29, 3, '2025-10-04', 7, 888.92, 20, 'CARD', 'Cancelled', ''),
(1093, 7, 28, 27, 1, '2025-10-07', 2, 917.93, 15, 'MOBILE MONEY', 'Cancelled', NULL),
(1094, 49, 30, 5, 4, '2025-10-10', 1, 46.94, 0, 'cash', 'Pending', NULL),
(1095, 97, 18, 18, 2, '2025-10-13', 4, 75.95, 15, 'MOBILE MONEY', 'Cancelled', 'urgent delivery'),
(1096, 24, 39, 26, 5, '2025-10-16', 1, 104.96, 20, 'mobile money', 'Completed', NULL),
(1097, 42, 2, 22, 1, '2025-10-19', 3, 133.97, 20, 'MOBILE MONEY', 'Pending', NULL),
(1098, 58, 28, 27, 1, '2025-10-22', 1, 162.98, 0, 'MOBILE MONEY', 'completed', ''),
(1099, 1, 6, 5, 4, '2025-10-25', 6, 191.99, NULL, 'Mobile Money', 'Cancelled', '  Handle carefully  '),
(1100, 50, 45, 12, 1, '2025-10-28', 5, 220.0, 0, 'MOBILE MONEY', 'Completed', '  Handle carefully  '),
(1101, 82, 33, 28, 2, '2025-10-31', 5, 249.01, 5, 'Cash', 'Cancelled', '  Handle carefully  '),
(1102, 100, 36, 23, 2, '2025-11-03', 7, 278.02, 0, 'CASH', 'completed', 'Repeat customer'),
(1103, 106, 24, 25, 4, '2025-11-06', 3, 307.03, NULL, 'cash', 'Pending', NULL),
(1104, 59, 2, 7, 1, '2025-11-09', 7, 336.04, 0, 'CARD', 'completed', 'urgent delivery'),
(1105, 84, 37, 23, 2, '2025-11-12', 2, 365.05, 20, 'cash', 'Completed', NULL),
(1106, 98, 44, 26, 5, '2025-11-15', 1, 394.06, 15, 'Cash', 'completed', ''),
(1107, 1, 41, 20, 4, '2025-11-18', 7, 423.07, 15, 'mobile money', 'COMPLETED', NULL),
(1108, 87, 25, 9, 3, '2025-11-21', 3, 452.08, 20, 'Cash', 'completed', ''),
(1109, 14, 42, 12, 1, '2025-11-24', 7, 481.09, 0, 'Card', 'completed', NULL),
(1110, 77, 20, 21, 5, '2025-11-27', 2, 510.1, 0, 'CARD', 'COMPLETED', ''),
(1111, 90, 4, 15, 4, '2025-11-30', 4, 539.11, NULL, 'cash', 'COMPLETED', ''),
(1112, 74, 18, 24, 3, '2025-12-03', 6, 568.12, NULL, 'mobile money', 'Cancelled', NULL),
(1113, 49, 43, 2, 1, '2025-12-06', 2, 597.13, 0, 'CARD', 'CANCELLED', 'Repeat customer'),
(1114, 93, 45, 13, 2, '2025-12-09', 6, 626.14, 0, 'CARD', 'pending', NULL),
(1115, 72, 13, 8, 2, '2025-12-12', 5, 655.15, 15, 'Cash', 'COMPLETED', NULL),
(1116, 50, 33, 28, 2, '2025-12-15', 7, 684.16, 0, 'Cash', 'COMPLETED', NULL),
(1117, 16, 24, 3, 2, '2025-12-18', 5, 713.17, 0, 'Mobile Money', 'COMPLETED', 'urgent delivery'),
(1118, 9, 27, 24, 3, '2025-12-21', 7, 742.18, 20, 'CASH', 'CANCELLED', ''),
(1119, 73, 14, 22, 1, '2025-12-24', 3, 771.19, 5, 'Mobile Money', 'pending', 'urgent delivery'),
(1120, 78, 26, 3, 2, '2025-12-27', 7, 800.2, 0, 'Mobile Money', 'COMPLETED', 'PROMO order'),
(1121, 17, 38, 2, 1, '2025-12-30', 1, 829.21, 15, 'mobile money', 'CANCELLED', 'Repeat customer'),
(1122, 3, 35, 6, 5, '2026-01-02', 8, 858.22, 10, 'CARD', 'Completed', 'PROMO order'),
(1123, 63, 45, 17, 1, '2026-01-05', 4, 887.23, 0, 'MOBILE MONEY', 'CANCELLED', ''),
(1124, 106, 43, 18, 2, '2026-01-08', 1, 916.24, NULL, 'MOBILE MONEY', 'Pending', NULL),
(1125, 31, 7, 8, 2, '2026-01-11', 1, 45.25, 5, 'CARD', 'CANCELLED', 'PROMO order'),
(1126, 79, 24, 28, 2, '2026-01-14', 6, 74.26, 0, 'cash', 'Completed', NULL),
(1127, 88, 17, 10, 4, '2026-01-17', 7, 103.27, 20, 'cash', 'CANCELLED', NULL),
(1128, 32, 24, 18, 2, '2026-01-20', 5, 132.28, 5, 'Card', 'pending', 'urgent delivery'),
(1129, 59, 19, 19, 3, '2026-01-23', 1, 161.29, 20, 'CASH', 'CANCELLED', 'urgent delivery'),
(1130, 83, 13, 25, 4, '2026-01-26', 6, 190.3, 0, NULL, 'completed', ''),
(1131, 27, 7, 25, 4, '2026-01-29', 2, 219.31, 0, NULL, 'CANCELLED', 'PROMO order'),
(1132, 89, 4, 19, 3, '2026-02-01', 1, 248.32, 0, 'CARD', 'Cancelled', NULL),
(1133, 23, 8, 28, 2, '2026-02-04', 5, 277.33, 20, 'mobile money', 'Pending', 'urgent delivery'),
(1134, 66, 19, 24, 3, '2026-02-07', 6, 306.34, 0, 'CASH', 'COMPLETED', NULL),
(1135, 30, 38, 25, 4, '2026-02-10', 2, 335.35, 0, 'CASH', 'completed', 'PROMO order'),
(1136, 35, 9, 29, 3, '2026-02-13', 2, 364.36, NULL, 'Cash', 'pending', 'Repeat customer'),
(1137, 82, 36, 27, 1, '2026-02-16', 3, 393.37, 5, 'CASH', 'CANCELLED', NULL),
(1138, 12, 6, 30, 4, '2026-02-19', 5, 422.38, 0, 'cash', 'Pending', ''),
(1139, 89, 12, 4, 3, '2026-02-22', 1, 451.39, 5, 'Cash', 'completed', 'PROMO order'),
(1140, 26, 45, 22, 1, '2026-02-25', 1, 480.4, 0, 'cash', 'Completed', 'PROMO order'),
(1141, 66, 43, 28, 2, '2026-02-28', 7, 509.41, 0, 'Mobile Money', 'Completed', 'PROMO order'),
(1142, 9, 3, 25, 4, '2026-03-03', 5, 538.42, NULL, NULL, 'Completed', 'urgent delivery'),
(1143, 96, 6, 14, 3, '2026-03-06', 8, 567.43, 20, 'MOBILE MONEY', 'pending', 'Repeat customer'),
(1144, 110, 1, 28, 2, '2026-03-09', 1, 596.44, 15, 'CASH', 'CANCELLED', NULL),
(1145, 98, 19, 30, 4, '2026-03-12', 8, 625.45, 15, 'cash', 'Cancelled', NULL),
(1146, 10, 33, 2, 1, '2026-03-15', 8, 654.46, 0, 'Card', 'Cancelled', '  Handle carefully  '),
(1147, 97, 2, 25, 4, '2026-03-18', 3, 683.47, 10, 'MOBILE MONEY', 'Cancelled', ''),
(1148, 3, 35, 8, 2, '2026-03-21', 1, 712.48, NULL, 'mobile money', 'Completed', '  Handle carefully  '),
(1149, 8, 15, 19, 3, '2026-03-24', 1, 741.49, 10, 'mobile money', 'Cancelled', NULL),
(1150, 53, 34, 19, 3, '2026-03-27', 4, 770.5, NULL, 'MOBILE MONEY', 'Completed', 'urgent delivery'),
(1151, 27, 27, 13, 2, '2026-03-30', 1, 799.51, 15, 'Card', 'Cancelled', ''),
(1152, 94, 19, 17, 1, '2026-04-02', 1, 828.52, 0, 'CASH', 'completed', 'urgent delivery'),
(1153, 12, 11, 9, 3, '2026-04-05', 4, 857.53, 0, NULL, 'Pending', NULL),
(1154, 33, 18, 20, 4, '2026-04-08', 8, 886.54, 0, 'Cash', 'Cancelled', 'urgent delivery'),
(1155, 121, 10, 26, 5, '2026-04-11', 5, 915.55, NULL, 'Cash', 'COMPLETED', NULL),
(1156, 47, 24, 18, 2, '2026-04-14', 1, 44.56, 0, 'CASH', 'Completed', 'Repeat customer'),
(1157, 74, 30, 19, 3, '2026-04-17', 6, 73.57, 10, NULL, 'CANCELLED', ''),
(1158, 1, 40, 5, 4, '2026-04-20', 3, 102.58, 0, 'mobile money', 'Pending', '  Handle carefully  '),
(1159, 86, 3, 12, 1, '2026-04-23', 7, 131.59, 0, 'Card', 'Completed', NULL),
(1160, 54, 34, 23, 2, '2026-04-26', 7, 160.6, 0, NULL, 'CANCELLED', ''),
(1161, 41, 42, 24, 3, '2026-04-29', 6, 189.61, 10, 'mobile money', 'Completed', 'urgent delivery'),
(1162, 58, 5, 4, 3, '2026-05-02', 7, 218.62, 10, 'Card', 'Completed', NULL),
(1163, 2, 38, 28, 2, '2026-05-05', 3, 247.63, 15, 'cash', 'Cancelled', '  Handle carefully  '),
(1164, 97, 11, 6, 5, '2026-05-08', 1, 276.64, 20, 'cash', 'completed', 'PROMO order'),
(1165, 87, 18, 12, 1, '2026-05-11', 4, 305.65, NULL, 'CASH', 'COMPLETED', '  Handle carefully  '),
(1166, 54, 44, 10, 4, '2026-05-14', 8, 334.66, NULL, 'cash', 'Completed', 'urgent delivery'),
(1167, 26, 27, 30, 4, '2026-05-17', 3, 363.67, 20, 'cash', 'Completed', NULL),
(1168, 11, 45, 22, 1, '2026-05-20', 2, 392.68, 10, NULL, 'Cancelled', 'PROMO order'),
(1169, 41, 6, 17, 1, '2026-05-23', 8, 421.69, NULL, 'Card', 'Cancelled', NULL),
(1170, 37, 43, 23, 2, '2026-05-26', 3, 450.7, 0, 'Cash', 'CANCELLED', NULL),
(1171, 79, 30, 21, 5, '2026-05-29', 8, 479.71, 20, 'CARD', 'pending', 'PROMO order'),
(1172, 49, 38, 8, 2, '2026-06-01', 7, 508.72, 5, 'CARD', 'completed', 'Repeat customer'),
(1173, 101, 38, 28, 2, '2026-06-04', 3, 537.73, 15, NULL, 'completed', 'urgent delivery'),
(1174, 19, 26, 12, 1, '2026-06-07', 2, 566.74, 5, 'Mobile Money', 'CANCELLED', NULL),
(1175, 75, 9, 16, 5, '2026-06-10', 3, 595.75, NULL, 'Mobile Money', 'CANCELLED', '  Handle carefully  '),
(1176, 101, 43, 4, 3, '2026-06-13', 1, 624.76, NULL, 'Mobile Money', 'COMPLETED', NULL),
(1177, 77, 18, 18, 2, '2026-06-16', 2, 653.77, 20, 'Mobile Money', 'completed', 'Repeat customer'),
(1178, 4, 11, 3, 2, '2026-06-19', 5, 682.78, 0, 'Card', 'Cancelled', NULL),
(1179, 39, 9, 12, 1, '2026-06-22', 2, 711.79, 0, NULL, 'Cancelled', 'Repeat customer'),
(1180, 51, 9, 22, 1, '2026-06-25', 1, 740.8, NULL, 'CASH', 'CANCELLED', 'PROMO order'),
(1181, 82, 9, 27, 1, '2026-06-28', 3, 769.81, 0, 'cash', 'Completed', 'PROMO order'),
(1182, 12, 21, 4, 3, '2026-07-01', 8, 798.82, 0, 'mobile money', 'CANCELLED', 'Repeat customer'),
(1183, 45, 36, 24, 3, '2026-07-04', 6, 827.83, 5, 'Mobile Money', 'Cancelled', NULL),
(1184, 60, 26, 27, 1, '2026-07-07', 3, 856.84, 10, 'MOBILE MONEY', 'Cancelled', ''),
(1185, 5, 32, 29, 3, '2026-07-10', 1, 885.85, 5, 'CARD', 'CANCELLED', NULL),
(1186, 30, 22, 7, 1, '2026-07-13', 4, 914.86, 15, 'CASH', 'completed', NULL),
(1187, 86, 9, 29, 3, '2026-07-16', 6, 43.87, 0, 'CARD', 'COMPLETED', NULL),
(1188, 100, 30, 5, 4, '2026-07-19', 1, 72.88, 5, 'CASH', 'CANCELLED', ''),
(1189, 18, 1, 14, 3, '2026-07-22', 5, 101.89, 0, 'cash', 'Pending', '  Handle carefully  '),
(1190, 24, 10, 27, 1, '2026-07-25', 6, 130.9, 0, 'Cash', 'pending', NULL),
(1191, 7, 16, 13, 2, '2026-07-28', 5, 159.91, 0, 'CASH', 'completed', NULL),
(1192, 19, 19, 5, 4, '2026-07-31', 7, 188.92, 5, 'CARD', 'CANCELLED', 'PROMO order'),
(1193, 65, 4, 30, 4, '2026-08-03', 6, 217.93, 0, 'Cash', 'COMPLETED', 'PROMO order'),
(1194, 27, 42, 28, 2, '2026-08-06', 1, 246.94, 0, 'cash', 'COMPLETED', 'PROMO order'),
(1195, 23, 3, 16, 5, '2026-08-09', 7, 275.95, 0, NULL, 'Pending', NULL),
(1196, 3, 28, 17, 1, '2026-08-12', 7, 304.96, 0, 'Cash', 'pending', '  Handle carefully  '),
(1197, 60, 30, 22, 1, '2026-08-15', 2, 333.97, 10, 'Cash', 'Completed', '  Handle carefully  '),
(1198, 102, 16, 21, 5, '2026-08-18', 1, 362.98, 0, 'CASH', 'COMPLETED', 'urgent delivery'),
(1199, 109, 35, 8, 2, '2026-08-21', 5, 391.99, 0, 'mobile money', 'completed', 'PROMO order'),
(1200, 17, 21, 14, 3, '2026-08-24', 7, 420.0, 0, 'CARD', 'pending', 'urgent delivery'),
(1201, 15, 7, 27, 1, '2026-08-27', 5, 449.01, 0, 'CASH', 'completed', NULL),
(1202, 47, 28, 28, 2, '2026-08-30', 5, 478.02, 15, NULL, 'COMPLETED', '  Handle carefully  '),
(1203, 87, 34, 6, 5, '2026-09-02', 7, 507.03, 15, 'MOBILE MONEY', 'Cancelled', NULL),
(1204, 97, 2, 15, 4, '2026-09-05', 2, 536.04, 10, 'Mobile Money', 'Completed', ''),
(1205, 73, 34, 18, 2, '2026-09-08', 1, 565.05, 5, 'CASH', 'COMPLETED', ''),
(1206, 59, 45, 10, 4, '2026-09-11', 5, 594.06, 10, 'CASH', 'CANCELLED', 'PROMO order'),
(1207, 12, 39, 5, 4, '2026-09-14', 5, 623.07, 15, 'CASH', 'Pending', '  Handle carefully  '),
(1208, 19, 8, 23, 2, '2026-09-17', 8, 652.08, 20, 'Card', 'Completed', '  Handle carefully  '),
(1209, 65, 42, 18, 2, '2026-09-20', 6, 681.09, 0, 'Mobile Money', 'COMPLETED', '  Handle carefully  '),
(1210, 39, 999, 27, 1, '2025-01-03', 8, 710.1, 15, 'MOBILE MONEY', 'Completed', ''),
(1211, 96, 3, 11, 5, '2025-01-06', 8, 739.11, 0, NULL, 'pending', 'urgent delivery'),
(1212, 23, 2, 5, 4, '2025-01-09', 2, 768.12, 5, 'Mobile Money', 'COMPLETED', NULL),
(1213, 14, 24, 13, 2, '2025-01-12', 3, 797.13, 10, 'Card', 'Pending', '  Handle carefully  '),
(1214, 1, 18, 7, 1, '2025-01-15', 3, 826.14, 0, 'CARD', 'COMPLETED', 'PROMO order'),
(1215, 83, 36, 29, 3, '2025-01-18', 4, 855.15, 0, 'CASH', 'pending', NULL),
(1216, 70, 28, 22, 1, '2025-01-21', 7, 884.16, 15, 'Cash', 'completed', 'urgent delivery'),
(1217, 49, 24, 12, 1, '2025-01-24', 1, 913.17, 10, 'MOBILE MONEY', 'pending', NULL),
(1218, 11, 18, 28, 2, '2025-01-27', 8, 42.18, 0, 'cash', 'CANCELLED', NULL),
(1219, 99, 31, 15, 4, '2025-01-30', 2, 71.19, 15, 'mobile money', 'COMPLETED', '  Handle carefully  '),
(1220, 110, 30, 11, 5, '2025-02-02', 2, 100.2, 5, 'cash', 'pending', NULL),
(1221, 2, 18, 27, 1, '2025-02-05', 8, 129.21, 5, 'Cash', 'completed', 'urgent delivery'),
(1222, 29, 20, 4, 3, '2025-02-08', 3, 158.22, 5, 'mobile money', 'pending', 'urgent delivery'),
(1223, 57, 12, 30, 4, '2025-02-11', 4, 187.23, 15, 'cash', 'pending', NULL),
(1224, 46, 36, 22, 1, '2025-02-14', 6, 216.24, 10, 'MOBILE MONEY', 'Pending', 'PROMO order'),
(1225, 57, 5, 19, 3, '2025-02-17', 2, 245.25, 0, 'Cash', 'COMPLETED', 'urgent delivery'),
(1226, 80, 28, 16, 5, '2025-02-20', 7, 274.26, 0, 'cash', 'completed', 'PROMO order'),
(1227, 97, 10, 22, 1, '2025-02-23', 7, 303.27, 10, 'cash', 'pending', 'Repeat customer'),
(1228, 33, 39, 21, 5, '2025-02-26', 7, 332.28, 10, 'Card', 'completed', NULL),
(1229, 81, 23, 27, 1, '2025-03-01', 1, 361.29, 0, 'Mobile Money', 'CANCELLED', NULL),
(1230, 87, 16, 10, 4, '2025-03-04', 6, 390.3, 0, 'Cash', 'COMPLETED', NULL),
(1231, 77, 7, 12, 1, '2025-03-07', 5, 419.31, 0, NULL, 'pending', '  Handle carefully  '),
(1232, 78, 32, 30, 4, '2025-03-10', 6, 448.32, NULL, 'mobile money', 'Completed', NULL),
(1233, 122, 35, 4, 3, '2025-03-13', 7, 477.33, NULL, 'mobile money', 'pending', ''),
(1234, 65, 29, 11, 5, '2025-03-16', 4, 506.34, 20, 'cash', 'COMPLETED', '  Handle carefully  '),
(1235, 20, 12, 11, 5, '2025-03-19', 5, 535.35, 20, 'Cash', 'Pending', NULL),
(1236, 43, 35, 12, 1, '2025-03-22', 2, 564.36, 0, 'Mobile Money', 'CANCELLED', ''),
(1237, 92, 32, 20, 4, '2025-03-25', 7, 593.37, 20, 'cash', 'Pending', 'urgent delivery'),
(1238, 2, 1, 29, 3, '2025-03-28', 4, 622.38, 0, 'Mobile Money', 'Cancelled', NULL),
(1239, 93, 21, 9, 3, '2025-03-31', 3, 651.39, NULL, 'cash', 'pending', '  Handle carefully  '),
(1240, 74, 24, 13, 2, '2025-04-03', 6, 680.4, NULL, 'Card', 'Completed', ''),
(1241, 88, 34, 16, 5, '2025-04-06', 3, 709.41, 0, 'cash', 'Cancelled', NULL),
(1242, 69, 28, 7, 1, '2025-04-09', 5, 738.42, 5, 'CASH', 'completed', 'Repeat customer'),
(1243, 33, 13, 4, 3, '2025-04-12', 2, 767.43, 0, 'Card', 'Cancelled', NULL),
(1244, 14, 24, 20, 4, '2025-04-15', 3, 796.44, NULL, 'Cash', 'Cancelled', NULL),
(1245, 10, 25, 3, 2, '2025-04-18', 3, 825.45, 20, 'CASH', 'pending', NULL),
(1246, 90, 2, 26, 5, '2025-04-21', 2, 854.46, 0, 'Card', 'pending', '  Handle carefully  '),
(1247, 108, 19, 2, 1, '2025-04-24', 6, 883.47, NULL, 'Mobile Money', 'pending', '  Handle carefully  '),
(1248, 99, 16, 5, 4, '2025-04-27', 6, 912.48, 0, NULL, 'CANCELLED', 'urgent delivery'),
(1249, 67, 40, 2, 1, '2025-04-30', 5, 41.49, 0, 'CARD', 'completed', NULL),
(1250, 96, 3, 29, 3, '2025-05-03', 3, 70.5, 5, NULL, 'Pending', NULL),
(1251, 31, 29, 22, 1, '2025-05-06', 4, 99.51, 20, 'Card', 'Cancelled', 'urgent delivery'),
(1252, 18, 33, 21, 5, '2025-05-09', 7, 128.52, 0, 'mobile money', 'CANCELLED', NULL),
(1253, 105, 6, 23, 2, '2025-05-12', 8, 157.53, 5, 'Mobile Money', 'Pending', 'Repeat customer'),
(1254, 10, 3, 22, 1, '2025-05-15', 2, 186.54, NULL, 'MOBILE MONEY', 'pending', '  Handle carefully  '),
(1255, 70, 40, 19, 3, '2025-05-18', 4, 215.55, 0, 'CARD', 'COMPLETED', 'urgent delivery'),
(1256, 76, 25, 26, 5, '2025-05-21', 4, 244.56, 0, 'MOBILE MONEY', 'Completed', NULL),
(1257, 73, 45, 21, 5, '2025-05-24', 2, 273.57, 20, 'CASH', 'Completed', 'urgent delivery'),
(1258, 102, 40, 11, 5, '2025-05-27', 7, 302.58, 20, 'mobile money', 'pending', 'urgent delivery'),
(1259, 101, 10, 29, 3, '2025-05-30', 5, 331.59, 5, 'Cash', 'CANCELLED', '  Handle carefully  '),
(1260, 27, 31, 26, 5, '2025-06-02', 4, 360.6, 0, 'CARD', 'Cancelled', 'urgent delivery'),
(1261, 80, 18, 25, 4, '2025-06-05', 4, 389.61, 15, 'MOBILE MONEY', 'Completed', ''),
(1262, 74, 23, 5, 4, '2025-06-08', 2, 418.62, 20, 'Cash', 'CANCELLED', ''),
(1263, 10, 18, 16, 5, '2025-06-11', 5, 447.63, 5, 'CASH', 'completed', 'Repeat customer'),
(1264, 34, 36, 12, 1, '2025-06-14', 2, 476.64, 0, 'CASH', 'pending', 'urgent delivery'),
(1265, 73, 1, 21, 5, '2025-06-17', 3, 505.65, NULL, 'MOBILE MONEY', 'Cancelled', 'urgent delivery'),
(1266, 43, 32, 6, 5, '2025-06-20', 6, 534.66, 0, 'cash', 'Pending', ''),
(1267, 11, 12, 28, 2, '2025-06-23', 6, 563.67, 0, 'Card', 'pending', 'PROMO order'),
(1268, 101, 11, 28, 2, '2025-06-26', 3, 592.68, NULL, NULL, 'completed', NULL),
(1269, 32, 37, 21, 5, '2025-06-29', 7, 621.69, 10, 'cash', 'completed', ''),
(1270, 88, 30, 18, 2, '2025-07-02', 3, 650.7, NULL, 'CASH', 'completed', '  Handle carefully  '),
(1271, 93, 18, 24, 3, '2025-07-05', 7, 679.71, 15, NULL, 'COMPLETED', ''),
(1272, 89, 42, 22, 1, '2025-07-08', 3, 708.72, 10, 'Cash', 'COMPLETED', 'Repeat customer'),
(1273, 69, 23, 25, 4, '2025-07-11', 7, 737.73, 5, 'mobile money', 'Pending', '  Handle carefully  '),
(1274, 11, 33, 8, 2, '2025-07-14', 4, 766.74, 0, 'Card', 'CANCELLED', ''),
(1275, 16, 4, 16, 5, '2025-07-17', 2, 795.75, 0, NULL, 'Pending', 'urgent delivery'),
(1276, 63, 41, 4, 3, '2025-07-20', 5, 824.76, 20, 'Cash', 'Cancelled', '  Handle carefully  '),
(1277, 64, 30, 16, 5, '2025-07-23', 2, 853.77, 20, 'cash', 'COMPLETED', NULL),
(1278, 111, 33, 28, 2, '2025-07-26', 4, 882.78, 0, NULL, 'Completed', ''),
(1279, 16, 45, 20, 4, '2025-07-29', 5, 911.79, NULL, NULL, 'COMPLETED', NULL),
(1280, 9, 31, 20, 4, '2025-08-01', 2, 40.8, 0, 'mobile money', 'Pending', 'PROMO order'),
(1281, 74, 35, 5, 4, '2025-08-04', 3, 69.81, NULL, 'mobile money', 'Pending', NULL),
(1282, 54, 37, 24, 3, '2025-08-07', 8, 98.82, 5, 'Cash', 'completed', NULL),
(1283, 106, 37, 2, 1, '2025-08-10', 3, 127.83, 0, 'cash', 'pending', NULL),
(1284, 65, 10, 28, 2, '2025-08-13', 3, 156.84, 0, 'Mobile Money', 'COMPLETED', 'Repeat customer'),
(1285, 4, 34, 30, 4, '2025-08-16', 8, 185.85, NULL, 'Cash', 'Pending', NULL),
(1286, 79, 25, 21, 5, '2025-08-19', 2, 214.86, 5, 'Cash', 'Pending', '  Handle carefully  '),
(1287, 9, 10, 6, 5, '2025-08-22', 4, 243.87, 5, 'MOBILE MONEY', 'CANCELLED', 'PROMO order'),
(1288, 58, 40, 19, 3, '2025-08-25', 7, 272.88, 15, 'CASH', 'COMPLETED', 'Repeat customer'),
(1289, 52, 2, 27, 1, '2025-08-28', 2, 301.89, 15, 'cash', 'completed', 'urgent delivery'),
(1290, 94, 4, 5, 4, '2025-08-31', 8, 330.9, 10, 'CASH', 'COMPLETED', NULL),
(1291, 100, 11, 10, 4, '2025-09-03', 6, 359.91, 15, 'Cash', 'Pending', NULL),
(1292, 21, 25, 18, 2, '2025-09-06', 7, 388.92, 0, 'CARD', 'Completed', NULL),
(1293, 11, 38, 27, 1, '2025-09-09', 5, 417.93, NULL, 'cash', 'completed', NULL),
(1294, 3, 37, 9, 3, '2025-09-12', 1, 446.94, 0, 'mobile money', 'pending', ''),
(1295, 18, 21, 25, 4, '2025-09-15', 8, 475.95, 0, 'Mobile Money', 'completed', NULL),
(1296, 35, 6, 9, 3, '2025-09-18', 4, 504.96, 15, 'Mobile Money', 'Pending', ''),
(1297, 70, 7, 27, 1, '2025-09-21', 7, 533.97, 0, NULL, 'Completed', '  Handle carefully  '),
(1298, 56, 6, 18, 2, '2025-09-24', 1, 562.98, 0, 'Cash', 'CANCELLED', 'Repeat customer'),
(1299, 68, 19, 22, 1, '2025-09-27', 1, 591.99, 15, 'MOBILE MONEY', 'Cancelled', '  Handle carefully  '),
(1300, 95, 5, 14, 3, '2025-09-30', 8, 620.0, 15, 'Card', 'Pending', NULL);

select * from Customers

select

sum(case when customer_id is null then 1 else 0 end ) as customer_id_missing,
sum(case when full_name is null then 1 else 0 end ) as full_name_missing,
sum(case when gender_raw is null then 1 else 0 end ) as gender_missing,
sum(case when city_raw is null then 1 else 0 end ) as city_missing,
sum(case when phone is null then 1 else 0 end ) as phone_missing,
sum(case when email is null then 1 else 0 end ) as email_missing,
sum(case when age_text is null then 1 else 0 end ) as age_missing,
sum(case when registration_date is null then 1 else 0 end ) as registration_date_missing

from Customers;

select full_name,
coalesce(phone,'not Available') as phone 
from Customers;

update customers set phone =''
where phone is null 

select * from Customers
where phone = 'Not available'


select trim(full_name) from Customers


select trim(full_name) as fullName from Customers

select customer_id, full_name,gender_raw from Customers 
where gender_raw is null

update Customers set gender_raw ='Female'
where customer_id in (20,26,27,43,71,95,114)

update Customers set gender_raw ='Male'
where customer_id in (20,26,27,43,71,95,114)

select *from Customers

--update space fullname

update Customers set full_name = ltrim(trim(full_name))

WHERE full_name is not null 

SELECT gender_raw COLLATE latin1_general_100_bin2 AS gender_value,
count (*) AS frequency 
from Customers 
GROUP BY  gender_raw COLLATE latin1_general_100_bin2 
ORDER BY frequency DESC;

SELECT gender_raw COLLATE latin1_general_100_bin2 AS gender_value,
count (*) AS frequency 
from Customers 
GROUP BY  gender_raw COLLATE latin1_general_100_bin2 
ORDER BY frequency ASC;

--update inconsistance

UPDATE Customers set gender_raw = 
case 
when Lower(ltrim(trim(gender_raw))) in ('male','MALE','M') then 'Male'
when Lower(ltrim(trim(gender_raw))) in ('female','FEMALE','F') then 'Female'
else gender_raw 
end
where gender_raw is not null

Select * from Customers

exec sp_help Customers

--update Customers 
--set age_text from Customers
--where TRY_CAST(age_text as int) is null 
--and age_text is not null;

--select Customers 
--set age_text from Customers
--where TRY_CAST(age_text as int) is null 
--and age_text is not null;

SELECT * FROM Customers
go 
select CAST(age_text as int ) from Customers

select customer_id From Customer 
where age_text in 