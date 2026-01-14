CREATE SCHEMA IF NOT EXISTS Optics_cul_ampolla;

USE Optics_cul_ampolla;

DROP TABLE IF EXISTS Address CASCADE;

CREATE TABLE Address (
    Address_Id INT AUTO_INCREMENT,
    Street VARCHAR(50) NOT NULL,
    Number INT NOT NULL,
    Floor INT,
    Door INT,
    City VARCHAR(20),
    Zip INT NOT NULL,
    Country VARCHAR(20),
    PRIMARY KEY (Address_Id)
);

DROP TABLE IF EXISTS Provider CASCADE;

CREATE TABLE Provider (
    Provider_ID VARCHAR(15),
    Name VARCHAR(30),
    Phone INT,
    Fax VARCHAR(20),
    Address INT,
    PRIMARY KEY (Provider_ID),
    FOREIGN KEY (Address) REFERENCES Address(Address_Id)
);

DROP TABLE IF EXISTS Glasses CASCADE;

CREATE TABLE Glasses (
    Glass_Id INT AUTO_INCREMENT,
    Provider VARCHAR(15),
    Brand VARCHAR(20) NOT NULL ,
    Lens_prescription_L DECIMAL(4,2) NOT NULL,
    Lens_prescription_R DECIMAL(4,2) NOT NULL ,
    Frame_type ENUM('floating', 'paste', 'metal') NOT NULL,
    Frame_color VARCHAR(20) NOT NULL,
    Lens_color VARCHAR(20),
    Price DECIMAL(10,2) CHECK (Price >= 0),
    PRIMARY KEY (Glass_Id),
    FOREIGN KEY (Provider) REFERENCES Provider(Provider_ID)
);

DROP TABLE IF EXISTS Customer CASCADE;

CREATE TABLE Customer (
    Customer_id INT AUTO_INCREMENT,
    Name VARCHAR(15) NOT NULL,
    Surname VARCHAR(15) NOT NULL,
    Phone INT NOT NULL,
    Registration_date DATETIME NOT NULL,
    Address INT,
    Recommended_by INT,
    PRIMARY KEY (Customer_id),
    FOREIGN KEY (Address) REFERENCES Address(Address_Id),
    FOREIGN KEY (Recommended_by) REFERENCES Customer(Customer_id)
);

DROP TABLE IF EXISTS Employee CASCADE;

CREATE TABLE Employee (
    Employee_Id INT AUTO_INCREMENT,
    Name VARCHAR(15),
    Surname VARCHAR(15),
    PRIMARY KEY (Employee_Id)
);

DROP TABLE IF EXISTS Sell CASCADE;

CREATE TABLE Sell (
    Sell_Id INT AUTO_INCREMENT,
    Customer_Id INT NOT NULL,
    Employee_Id INT NOT NULL,
    Date DATETIME NOT NULL,
    Total DECIMAL(8,2) CHECK (Total >= 0),
    PRIMARY KEY (Sell_Id),
    FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id)
);

DROP TABLE IF EXISTS Sell_line CASCADE;

CREATE TABLE Sell_line (
    Line_Id INT,
    Sell_Id INT,
    Glass_Id INT NOT NULL,
    Quantity INT CHECK (Quantity >= 0),
    Subtotal DECIMAL(8,2) CHECK (Subtotal >= 0),
    PRIMARY KEY (Line_Id, Sell_Id),
    FOREIGN KEY (Sell_Id) REFERENCES Sell(Sell_Id),
    FOREIGN KEY (Glass_Id) REFERENCES Glasses(Glass_Id)
);

