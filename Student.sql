CREATE DATABASE StudentDB;
USE StudentDB;
CREATE TABLE stu_details (
  S_ID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Gender ENUM('Male', 'Female', 'Other') NOT NULL,
  Dob DATE NOT NULL,
  City VARCHAR(100),
  Course ENUM('BTech', 'MTech', 'BCA', 'MCA') NOT NULL,
  Fees DECIMAL(10,2) NOT NULL,
  
  CHECK (Dob > '2004-12-31'),
  CHECK (Fees > 10000 AND Fees < 100000)
);
INSERT INTO stu_details (S_ID, Name, Gender, Dob, City, Course, Fees)
VALUES 
(1, 'Amit Roy', 'Male', '2006-05-12', 'Kolkata', 'BTech', 45000.00),
(2, 'Sneha Das', 'Female', '2005-08-20', 'Delhi', 'MCA', 60000.00),
(3, 'Rahul Sen', 'Male', '2007-01-15', 'Mumbai', 'BCA', 30000.00),
(4, 'Priya Mehta', 'Female', '2006-11-30', 'Ahmedabad', 'MTech', 75000.00),
(5, 'Arjun Verma', 'Male', '2005-06-10', 'Chennai', 'BTech', 55000.00),
(6, 'Neha Kapoor', 'Female', '2006-03-25', 'Pune', 'BCA', 40000.00),
(7, 'Karan Singh', 'Male', '2007-09-05', 'Jaipur', 'MCA', 65000.00),
(8, 'Isha Jain', 'Female', '2006-07-18', 'Hyderabad', 'MTech', 80000.00),
(9, 'Ravi Thakur', 'Male', '2005-12-22', 'Bhopal', 'BTech', 47000.00),
(10, 'Anjali Sharma', 'Female', '2006-04-02', 'Lucknow', 'BCA', 35000.00);

SELECT NAME,CITY,FEES FROM Stu_details;
SELECT * FROM Stu_details;
SELECT * FROM Stu_details where course !='Btech';
SELECT * FROM Stu_details where Fees>50000;
SELECT NAME FROM Stu_details where Dob>2005;
SELECT * FROM Stu_details where City='Chennai' and Course='BTech';
SELECT * FROM Stu_details where City='Chennai' or Course='BTech';

SELECT * FROM Stu_details where City='Puri' and Course='BTech';

SELECT NAME FROM Stu_details where Course='BCA' or Course='MCA';

SELECT * FROM Stu_details where Fees>=45000 AND Fees<=70000;
SELECT * FROM Stu_details where Fees BETWEEN 45000 and 70000;
#SELECT * FROM Stu_details where Fees in BETWEEN (45000,70000);
SELECT * FROM Stu_details where Fees not between 45000 and 70000;
SELECT * FROM Stu_details where Fees<45000 or Fees>70000;
SELECT * FROM Stu_details where Dob BETWEEN '2006-03-01' and '2006-10-01';

CREATE TABLE Sales (
    OrderID VARCHAR(20) PRIMARY KEY,
    OrderDate DATE NOT NULL,
    OrderMode ENUM('Online', 'Offline') NOT NULL,
    Region VARCHAR(100),
    Category VARCHAR(100),
    SubCategory VARCHAR(100),
    CustomerName VARCHAR(100),
    Sales DECIMAL(10,2) NOT NULL,
    Profit DECIMAL(10,2) NOT NULL,
    Discount DECIMAL(10,2),
    PaymentMode ENUM('Upi', 'Card', 'Cash'),
    CHECK (OrderMode IN ('Online', 'Offline')),
    CHECK (PaymentMode IN ('Upi', 'Card', 'Cash'))
);

INSERT INTO Sales VALUES 
('ORD-1001','2025-01-10','Online','South','Furniture','Chairs','Amit Roy',1200.00,150.00,0.10,'Card'),
('ORD-1002','2025-01-12','Offline','West','Technology','Phones','Priya Sen',2500.00,400.00,0.00,'Upi'),
('ORD-1003','2025-01-15','Online','East','Office Supplies','Binders','Rahul Mehta',300.00,50.00,0.05,'Cash'),
('ORD-1004','2025-01-18','Offline','Central','Furniture','Tables','Sneha Das',1800.00,-100.00,0.20,'Card'),
('ORD-1005','2025-01-20','Online','South','Technology','Accessories','Karan Patel',950.00,120.00,0.00,'Upi'),
('ORD-1006','2025-01-22','Offline','West','Office Supplies','Paper','Neha Sharma',150.00,30.00,0.10,'Cash'),
('ORD-1007','2025-01-25','Online','East','Furniture','Bookcases','Ravi Kumar',700.00,80.00,0.15,'Card'),
('ORD-1008','2025-01-28','Offline','Central','Technology','Phones','Anjali Verma',3200.00,500.00,0.00,'Upi'),
('ORD-1009','2025-01-30','Online','South','Office Supplies','Storage','Deepak Joshi',400.00,60.00,0.05,'Cash'),
('ORD-1010','2025-02-02','Offline','West','Furniture','Chairs','Meena Gupta',1100.00,140.00,0.10,'Card'),
('ORD-1011','2025-02-05','Online','East','Technology','Accessories','Vikram Singh',870.00,100.00,0.00,'Upi'),
('ORD-1012','2025-02-08','Offline','Central','Office Supplies','Binders','Pooja Reddy',280.00,45.00,0.05,'Cash'),
('ORD-1013','2025-02-10','Online','South','Furniture','Tables','Arjun Nair',1950.00,-120.00,0.20,'Card'),
('ORD-1014','2025-02-12','Offline','West','Technology','Phones','Divya Jain',3100.00,480.00,0.00,'Upi'),
('ORD-1015','2025-02-15','Online','East','Office Supplies','Paper','Suresh Menon',160.00,35.00,0.10,'Cash'),
('ORD-1016','2025-02-18','Offline','Central','Furniture','Bookcases','Ritika Bose',750.00,90.00,0.15,'Card'),
('ORD-1017','2025-02-20','Online','South','Technology','Accessories','Manish Agarwal',920.00,110.00,0.00,'Upi'),
('ORD-1018','2025-02-22','Offline','West','Office Supplies','Storage','Tanya Kapoor',420.00,65.00,0.05,'Cash'),
('ORD-1019','2025-02-25','Online','East','Furniture','Chairs','Nikhil Sinha',1150.00,145.00,0.10,'Card'),
('ORD-1020','2025-02-28','Offline','Central','Technology','Phones','Shalini Rao',3300.00,520.00,0.00,'Upi');

SELECT * FROM Sales;
DELETE FROM Sales WHERE OrderID = 'ORD-1005';
SELECT * FROM Sales WHERE CustomerName like 'A%';
SELECT * FROM Sales WHERE CustomerName like 'A*';
SELECT * FROM Sales WHERE CustomerName like '%A%';

SELECT * FROM Sales WHERE CustomerName like 'A___%';
SELECT * FROM Sales WHERE SubCategory like 'P_____';
SELECT CustomerName,Sales,Sales+99 FROM Sales;
SET SQL_SAFE_UPDATES = 0;
UPDATE Sales SET Discount=0.09 WHERE PaymentMode='UPi';

-- Step 1: Add the new column
ALTER TABLE Sales
ADD COLUMN Remarks VARCHAR(255);

-- Step 2: Update rows where the month is January
UPDATE Sales
SET Remarks = 'January Order'
WHERE MONTH(OrderDate) = 1;

UPDATE Sales
SET CustomerName = UPPER(CustomerName);

UPDATE Sales
SET Sales=Sales+(Sales*0.10)
WHERE Category != 'Furniture';


ALTER TABLE Sales 
MODIFY COLUMN CustomerName VARCHAR(150);

ALTER TABLE Sales
CHANGE COLUMN Sales TotalSales DECIMAL(10,2);

ALTER TABLE Sales
ALTER COLUMN OrderMode SET DEFAULT 'Online';
ALTER TABLE Sales
DROP COLUMN Discount;




