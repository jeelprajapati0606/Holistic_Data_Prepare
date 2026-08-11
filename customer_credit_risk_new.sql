-- Customer Credit Risk Database
-- SQLite compatible SQL
-- Contains BOTH customer_master and loan_repayment_history tables

DROP TABLE IF EXISTS loan_repayment_history;
DROP TABLE IF EXISTS customer_master;

CREATE TABLE customer_master (
    customer_id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    gender TEXT,
    region TEXT,
    education_level TEXT,
    employment_type TEXT,
    annual_income REAL,
    loan_amount REAL,
    credit_score INTEGER,
    loan_purpose TEXT,
    join_date TEXT
);

INSERT INTO customer_master
(customer_id, name, age, gender, region, education_level, employment_type,
 annual_income, loan_amount, credit_score, loan_purpose, join_date)
VALUES
('CUST0001','Aarav Shah',28,'Male','West','Graduate','Salaried',650000,250000,742,'Home','2022-01-15'),
('CUST0002','Diya Patel',34,'Female','West','Post-Graduate','Salaried',820000,400000,781,'Education','2021-07-22'),
('CUST0003','Rohan Mehta',41,'Male','North','Graduate','Business',950000,600000,690,'Business','2020-03-10'),
('CUST0004','Anaya Desai',25,'Female','South','Graduate','Salaried',480000,180000,725,'Personal','2023-02-18'),
('CUST0005','Vivaan Joshi',38,'Male','West','Secondary','Business',720000,500000,612,'Business','2019-11-05'),
('CUST0006','Isha Shah',31,'Female','North','Post-Graduate','Salaried',880000,350000,805,'Home','2021-12-12'),
('CUST0007','Kabir Patel',45,'Male','East','Graduate','Self-Employed',1100000,750000,675,'Business','2018-06-30'),
('CUST0008','Myra Mehta',29,'Female','West','Graduate','Salaried',590000,220000,754,'Education','2022-09-14'),
('CUST0009','Aditya Desai',52,'Male','South','Secondary','Business',1250000,900000,598,'Personal','2017-04-25'),
('CUST0010','Kiara Joshi',36,'Female','North','Post-Graduate','Salaried',760000,300000,769,'Home','2020-10-08'),
('CUST0011','Arjun Shah',43,'Male','West','Graduate','Self-Employed',980000,650000,640,'Business','2019-02-16'),
('CUST0012','Meera Patel',27,'Female','East','Graduate','Salaried',520000,200000,733,'Education','2023-05-19'),
('CUST0013','Yash Mehta',39,'Male','North','Post-Graduate','Business',1050000,550000,710,'Home','2020-08-11'),
('CUST0014','Tara Desai',33,'Female','South','Graduate','Salaried',690000,280000,758,'Personal','2021-03-27'),
('CUST0015','Dhruv Joshi',47,'Male','West','Secondary','Self-Employed',900000,700000,585,'Business','2018-12-03'),
('CUST0016','Riya Shah',30,'Female','East','Graduate','Salaried',610000,240000,790,'Home','2022-11-21'),
('CUST0017','Ved Patel',55,'Male','North','Graduate','Business',1350000,850000,625,'Business','2016-09-17'),
('CUST0018','Sara Mehta',26,'Female','West','Post-Graduate','Salaried',570000,160000,812,'Education','2024-01-09'),
('CUST0019','Manav Desai',40,'Male','South','Graduate','Salaried',830000,420000,701,'Personal','2020-05-13'),
('CUST0020','Avni Joshi',35,'Female','East','Graduate','Business',780000,360000,745,'Home','2021-08-29');

CREATE TABLE loan_repayment_history (
    repayment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id TEXT NOT NULL,
    payment_date TEXT NOT NULL,
    payment_amount REAL,
    payment_status TEXT,
    missed_payment INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer_master(customer_id)
);

INSERT INTO loan_repayment_history
(customer_id, payment_date, payment_amount, payment_status, missed_payment)
VALUES
('CUST0001','2025-01-05',12500,'Paid',0),
('CUST0001','2025-02-05',12500,'Paid',0),
('CUST0001','2025-03-05',12500,'Paid',0),
('CUST0002','2025-01-10',18000,'Paid',0),
('CUST0002','2025-02-10',18000,'Paid',0),
('CUST0002','2025-03-10',18000,'Paid',0),
('CUST0003','2025-01-15',22000,'Paid',0),
('CUST0003','2025-02-15',22000,'Missed',1),
('CUST0003','2025-03-15',22000,'Paid',0),
('CUST0004','2025-01-07',9000,'Paid',0),
('CUST0004','2025-02-07',9000,'Paid',0),
('CUST0004','2025-03-07',9000,'Paid',0),
('CUST0005','2025-01-12',16000,'Missed',1),
('CUST0005','2025-02-12',16000,'Missed',1),
('CUST0005','2025-03-12',16000,'Paid',0),
('CUST0006','2025-01-20',15000,'Paid',0),
('CUST0006','2025-02-20',15000,'Paid',0),
('CUST0006','2025-03-20',15000,'Paid',0),
('CUST0007','2025-01-08',25000,'Missed',1),
('CUST0007','2025-02-08',25000,'Paid',0),
('CUST0007','2025-03-08',25000,'Missed',1),
('CUST0008','2025-01-18',11000,'Paid',0),
('CUST0008','2025-02-18',11000,'Paid',0),
('CUST0008','2025-03-18',11000,'Paid',0),
('CUST0009','2025-01-25',30000,'Missed',1),
('CUST0009','2025-02-25',30000,'Missed',1),
('CUST0009','2025-03-25',30000,'Missed',1),
('CUST0010','2025-01-14',14000,'Paid',0),
('CUST0010','2025-02-14',14000,'Paid',0),
('CUST0010','2025-03-14',14000,'Paid',0),
('CUST0011','2025-01-11',21000,'Paid',0),
('CUST0011','2025-02-11',21000,'Missed',1),
('CUST0011','2025-03-11',21000,'Paid',0),
('CUST0012','2025-01-22',10000,'Paid',0),
('CUST0012','2025-02-22',10000,'Paid',0),
('CUST0012','2025-03-22',10000,'Paid',0),
('CUST0013','2025-01-16',19000,'Paid',0),
('CUST0013','2025-02-16',19000,'Paid',0),
('CUST0013','2025-03-16',19000,'Paid',0),
('CUST0014','2025-01-09',12000,'Paid',0),
('CUST0014','2025-02-09',12000,'Missed',1),
('CUST0014','2025-03-09',12000,'Paid',0),
('CUST0015','2025-01-06',23000,'Missed',1),
('CUST0015','2025-02-06',23000,'Missed',1),
('CUST0015','2025-03-06',23000,'Paid',0),
('CUST0016','2025-01-19',10500,'Paid',0),
('CUST0016','2025-02-19',10500,'Paid',0),
('CUST0016','2025-03-19',10500,'Paid',0),
('CUST0017','2025-01-13',28000,'Missed',1),
('CUST0017','2025-02-13',28000,'Missed',1),
('CUST0017','2025-03-13',28000,'Paid',0),
('CUST0018','2025-01-24',8500,'Paid',0),
('CUST0018','2025-02-24',8500,'Paid',0),
('CUST0018','2025-03-24',8500,'Paid',0),
('CUST0019','2025-01-17',15500,'Paid',0),
('CUST0019','2025-02-17',15500,'Paid',0),
('CUST0019','2025-03-17',15500,'Paid',0),
('CUST0020','2025-01-21',13000,'Paid',0),
('CUST0020','2025-02-21',13000,'Missed',1),
('CUST0020','2025-03-21',13000,'Paid',0);
