CREATE DATABASE AShopCMS

CREATE TABLE Account(
	ID INT NOT NULL identity(1,1),
	UserName NVARCHAR (32) NOT NULL,
	Password NVARCHAR (32) NOT NULL,
	Role NVARCHAR (32) NOT NULL,
	Name NVARCHAR (32) NOT NULL,
	Gender BIT,
	DOB DATE NOT NULL,
	PRIMARY KEY (ID)
)

CREATE TABLE Customer(
	CustomerID INT NOT NULL identity(1,1),
	[Full Name] NVARCHAR (32) NOT NULL,
	[Phone Number] INT NOT NULL,
	ProductID INT NOT NULL,
	[Shop Points] INT NOT NULL,
)

ALTER TABLE Customer ALTER COLUMN [Shop Points] INT NULL;
ALTER TABLE Customer DROP COLUMN ProductID;
ALTER TABLE Customer ADD PurchaseID INT;
ALTER TABLE Customer ADD DiscountID INT;
ALTER TABLE Customer ADD ShopID INT;

CREATE TABLE DiscountCode(
	ID INT NOT NULL identity(1,1),
	DiscountContent NVARCHAR (32) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	ProductID INT NOT NULL,
)
ALTER TABLE DiscountCode ADD Status BIT;
ALTER TABLE DiscountCode DROP COLUMN ProductID;

CREATE TABLE Product(
	ProductID INT NOT NULL identity(1,1),
	[Product Name] NVARCHAR(32) NOT NULL,
)

CREATE TABLE Purchase(
	PurchaseID INT NOT NULL identity(1,1),
	ProductID int NOT NULL,
)

SELECT * FROM Account
INSERT INTO Account(UserName, Password,	Role, Name, Gender, DOB) VALUES ('abcd','123456','Admin', 'abcd', 1, '1981-04-18'); 
INSERT INTO Account(UserName, Password,	Role, Name, DOB) VALUES ('nvc@abcd','123456','shop', N'Nguyễn Văn Công', '1981-04-18'); 
INSERT INTO Account(UserName, Password,	Role, Name, DOB) VALUES ('dtd@abcd','123456','shop', N'Đào Thị Dung', '1990-05-20'); 
INSERT INTO Account(UserName, Password,	Role, Name, Gender, DOB) VALUES ('nmh@abcd','123456',N'Admin', 'Ngô Mỹ Hạnh', 0, '2002-01-01'); 

SELECT * FROM Product
INSERT INTO Product([Product Name]) VALUES('ProductNo1');
INSERT INTO Product([Product Name]) VALUES('ProductNo2');
INSERT INTO Product([Product Name]) VALUES('ProductNo3');
INSERT INTO Product([Product Name]) VALUES('ProductNo4');
INSERT INTO Product([Product Name]) VALUES('ProductNo5');

SELECT * FROM DiscountCode
INSERT INTO DiscountCode(DiscountContent, StartDate, EndDate) VALUES ('DISCOUNT 30%','2022-03-02', '2022-03-05');
INSERT INTO DiscountCode(DiscountContent, StartDate, EndDate) VALUES ('DISCOUNT 10%','2022-03-02', '2025-03-05');
INSERT INTO DiscountCode(DiscountContent, StartDate, EndDate) VALUES ('DISCOUNT 50%','2022-03-02', '2022-03-05');

SELECT * FROM Purchase
INSERT INTO Purchase(ProductID) VALUES (5);
INSERT INTO Purchase(ProductID) VALUES (3);
INSERT INTO Purchase(ProductID) VALUES (2);

SELECT * FROM Customer
INSERT INTO Customer([Full Name], [Phone Number], PurchaseID, DiscountID, ShopID) VALUES ('Nguyễn Văn A', 0123456789, 1, 14, 2);
INSERT INTO Customer([Full Name], [Phone Number], PurchaseID, ShopID) VALUES ('Nguyễn Văn B', 0123456789, 2, 2);
INSERT INTO Customer([Full Name], [Phone Number], PurchaseID, ShopID) VALUES ('Nguyễn Văn C', 0123456789, 3, 3);