DROP SCHEMA IF EXISTS Pizzeria_db;

CREATE SCHEMA IF NOT EXISTS Pizzeria_db;

USE Pizzeria_db;

DROP TABLE IF EXISTS Province CASCADE;
CREATE TABLE Province (
    Province_Id INT AUTO_INCREMENT,
    Name VARCHAR(20),
    PRIMARY KEY (Province_Id)
);

DROP TABLE IF EXISTS Locality CASCADE;
CREATE TABLE Locality (
    Locality_Id INT AUTO_INCREMENT,
    Name VARCHAR(20),
    Province INT,
    PRIMARY KEY (Locality_Id),
    FOREIGN KEY (Province) REFERENCES Province(Province_Id)
);

DROP TABLE IF EXISTS Customer CASCADE;
CREATE TABLE Customer (
    Customer_Id INT AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    Surname VARCHAR(20) NOT NULL,
    Address VARCHAR(30) NOT NULL,
    Zip INT NOT NULL,
    Locality INT NOT NULL,
    Phone_number INT NOT NULL,
    PRIMARY KEY (Customer_Id),
    FOREIGN KEY (Locality) REFERENCES Locality(Locality_Id)
);

DROP TABLE IF EXISTS Product CASCADE;
CREATE TABLE Product (
    Product_Id INT AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    Description VARCHAR(50),
    Image BLOB,
    Price DECIMAL(6,2) NOT NULL
                     CHECK (Price >= 0),
    Product_type ENUM('Pizza', 'Hamburger', 'Drink'),
    PRIMARY KEY(Product_Id)
);

DROP TABLE IF EXISTS Pizza_Category CASCADE;
CREATE TABLE Pizza_Category (
    Category_Id INT AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    PRIMARY KEY (Category_Id)
);

DROP TABLE IF EXISTS Pizza CASCADE;
CREATE TABLE Pizza (
    Pizza_Id INT AUTO_INCREMENT,
    Category_Id INT NOT NULL,
    Product_Id INT NOT NULL,
    PRIMARY KEY (Pizza_Id),
    FOREIGN KEY (Category_Id) REFERENCES Pizza_Category(Category_Id),
    FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);

DROP TABLE IF EXISTS Hamburger CASCADE;
CREATE TABLE Hamburger (
    Hamburger_Id INT AUTO_INCREMENT PRIMARY KEY,
    Product_Id INT NOT NULL,
    FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);

DROP TABLE IF EXISTS Drink CASCADE;
CREATE TABLE Drink (
    Drink_Id INT AUTO_INCREMENT PRIMARY KEY,
    Product_Id INT NOT NULL,
    FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);

DROP TABLE IF EXISTS Store CASCADE;
CREATE TABLE Store (
    Store_Id INT AUTO_INCREMENT,
    Address VARCHAR(30) NOT NULL,
    Zip INT NOT NULL,
    Locality INT NOT NULL,
    PRIMARY KEY (Store_Id),
    FOREIGN KEY (Locality) REFERENCES Locality(Locality_Id)
);

DROP TABLE IF EXISTS Employee CASCADE;
CREATE TABLE Employee (
    Employee_Id INT AUTO_INCREMENT,
    Tax_Id VARCHAR(30) NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Surname VARCHAR(20) NOT NULL,
    Phone_number INT NOT NULL,
    Role ENUM('cook', 'delivery') NOT NULL,
    Store_Id INT NOT NULL,
    PRIMARY KEY (Employee_Id),
    FOREIGN KEY (Store_Id) REFERENCES Store(Store_Id)
);

DROP TABLE IF EXISTS Order_ CASCADE;
CREATE TABLE Order_ (
    Order_Id INT AUTO_INCREMENT,
    Date DATETIME NOT NULL,
    Order_type ENUM('delivery', 'pickup') NOT NULL,
    Customer INT NOT NULL,
    Total_price DECIMAL(6,2) NOT NULL
                CHECK (Total_price >= 0),
    Store_Id INT NOT NULL,
    PRIMARY KEY (Order_Id),
    FOREIGN KEY (Customer) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Store_Id) REFERENCES Store(Store_Id)
);

DROP TABLE IF EXISTS Order_line CASCADE;
CREATE TABLE Order_line (
    Line_Id INT,
    Order_Id INT,
    Product_Id INT NOT NULL ,
    Quantity INT NOT NULL
        CHECK (Quantity > 0),
    Unit_price DECIMAL(6,2) NOT NULL
        CHECK (Unit_price >= 0),
    Subtotal DECIMAL (7,2) AS (Quantity * Unit_price) STORED,
    PRIMARY KEY (Line_Id,Order_Id),
    FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id),
    FOREIGN KEY (Order_Id) REFERENCES Order_(Order_Id)
);

DROP TABLE IF EXISTS Delivery_order CASCADE;
CREATE TABLE Delivery_order (
    Delivery_order_Id INT AUTO_INCREMENT,
    Order_Id INT NOT NULL,
    Employee_Id INT NOT NULL,
    Date DATETIME NOT NULL,
    PRIMARY KEY (Delivery_order_Id),
    FOREIGN KEY (Order_Id) REFERENCES Order_(Order_Id),
    FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id)
);


