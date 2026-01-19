-- Sample data for Pizzeria Database
USE Pizzeria_db;

-- Populate Province
INSERT INTO Province (Name) VALUES
('Barcelona'),
('Madrid'),
('Valencia'),
('Sevilla'),
('Zaragoza');

-- Populate Locality
INSERT INTO Locality (Name, Province) VALUES
('Barcelona', 1),
('L''Hospitalet', 1),
('Badalona', 1),
('Madrid', 2),
('Móstoles', 2),
('Valencia', 3),
('Torrent', 3),
('Sevilla', 4),
('Dos Hermanas', 4),
('Zaragoza', 5);

-- Populate Customer
INSERT INTO Customer (Name, Surname, Address, Zip, Locality, Phone_number) VALUES
('Carlos', 'García', 'Calle Mayor 15', 8001, 1, 612345678),
('María', 'Rodríguez', 'Av. Diagonal 234', 8002, 1, 623456789),
('Juan', 'Martínez', 'Calle Urgell 45', 8036, 2, 634567890),
('Ana', 'López', 'Plaza España 12', 8014, 1, 645678901),
('Pedro', 'Sánchez', 'Calle Gran Vía 89', 28013, 4, 656789012),
('Laura', 'Fernández', 'Av. América 56', 28002, 4, 667890123),
('José', 'González', 'Calle Colón 78', 46004, 6, 678901234),
('Isabel', 'Díaz', 'Av. Blasco Ibáñez 123', 46022, 6, 689012345),
('Miguel', 'Ruiz', 'Calle Sierpes 34', 41004, 8, 690123456),
('Carmen', 'Moreno', 'Av. Constitución 67', 41001, 8, 601234567);

-- Populate Pizza_Category
INSERT INTO Pizza_Category (Name) VALUES
('Classic'),
('Premium'),
('Vegetarian'),
('Meat Lovers'),
('Seafood');

-- Populate Product (Pizzas)
INSERT INTO Product (Name, Description, Price, Product_type) VALUES
('Margarita', 'Tomato sauce, mozzarella, basil', 8.50, 'Pizza'),
('Pepperoni', 'Tomato sauce, mozzarella, pepperoni', 9.50, 'Pizza'),
('Quattro Formaggi', 'Four cheese blend', 10.50, 'Pizza'),
('Hawaiian', 'Ham, pineapple, mozzarella', 9.99, 'Pizza'),
('Vegetariana', 'Mixed vegetables, mozzarella', 10.00, 'Pizza'),
('BBQ Chicken', 'BBQ sauce, chicken, onions', 11.50, 'Pizza'),
('Carbonara', 'Cream, bacon, egg, parmesan', 11.00, 'Pizza'),
('Marinera', 'Seafood mix, garlic', 12.50, 'Pizza'),
('Diavola', 'Spicy salami, hot peppers', 10.50, 'Pizza'),
('Capricciosa', 'Ham, mushrooms, artichokes, olives', 11.00, 'Pizza');

-- Populate Product (Hamburgers)
INSERT INTO Product (Name, Description, Price, Product_type) VALUES
('Classic Burger', 'Beef patty, lettuce, tomato, cheese', 7.50, 'Hamburger'),
('Bacon Burger', 'Beef patty, bacon, cheese, BBQ sauce', 8.50, 'Hamburger'),
('Chicken Burger', 'Grilled chicken, lettuce, mayo', 7.00, 'Hamburger'),
('Veggie Burger', 'Plant-based patty, vegetables', 7.50, 'Hamburger'),
('Double Cheese', 'Two patties, double cheese', 9.50, 'Hamburger');

-- Populate Product (Drinks)
INSERT INTO Product (Name, Description, Price, Product_type) VALUES
('Coca-Cola', '330ml can', 2.00, 'Drink'),
('Fanta Orange', '330ml can', 2.00, 'Drink'),
('Sprite', '330ml can', 2.00, 'Drink'),
('Water', '500ml bottle', 1.50, 'Drink'),
('Beer', '330ml bottle', 2.50, 'Drink'),
('Iced Tea', '330ml can', 2.20, 'Drink');

-- Populate Pizza table (linking pizzas to categories)
INSERT INTO Pizza (Category_Id, Product_Id) VALUES
(1, 1),  -- Margarita -> Classic
(1, 2),  -- Pepperoni -> Classic
(2, 3),  -- Quattro Formaggi -> Premium
(1, 4),  -- Hawaiian -> Classic
(3, 5),  -- Vegetariana -> Vegetarian
(4, 6),  -- BBQ Chicken -> Meat Lovers
(2, 7),  -- Carbonara -> Premium
(5, 8),  -- Marinera -> Seafood
(4, 9),  -- Diavola -> Meat Lovers
(2, 10); -- Capricciosa -> Premium

-- Populate Hamburger table
INSERT INTO Hamburger (Product_Id) VALUES
(11), (12), (13), (14), (15);

-- Populate Drink table
INSERT INTO Drink (Product_Id) VALUES
(16), (17), (18), (19), (20), (21);

-- Populate Store
INSERT INTO Store (Address, Zip, Locality) VALUES
('Calle Balmes 150', 8008, 1),
('Av. Meridiana 234', 8027, 1),
('Calle Alcalá 456', 28009, 4),
('Calle Blasco Ibáñez 89', 46010, 6),
('Calle Alfonso XII 23', 41002, 8);

-- Populate Employee
INSERT INTO Employee (Tax_Id, Name, Surname, Phone_number, Role, Store_Id) VALUES
('12345678A', 'Antonio', 'Pérez', 611111111, 'cook', 1),
('23456789B', 'Lucía', 'Jiménez', 622222222, 'delivery', 1),
('34567890C', 'Francisco', 'Romero', 633333333, 'cook', 1),
('45678901D', 'Elena', 'Torres', 644444444, 'delivery', 2),
('56789012E', 'David', 'Ramírez', 655555555, 'cook', 2),
('67890123F', 'Sofía', 'Vázquez', 666666666, 'delivery', 3),
('78901234G', 'Javier', 'Muñoz', 677777777, 'cook', 3),
('89012345H', 'Paula', 'Castro', 688888888, 'delivery', 4),
('90123456I', 'Alberto', 'Ortiz', 699999999, 'cook', 4),
('01234567J', 'Cristina', 'Rubio', 600000000, 'delivery', 5);

-- Populate Order_
INSERT INTO Order_ (Date, Order_type, Customer, Total_price, Store_Id) VALUES
('2025-01-15 19:30:00', 'delivery', 1, 20.50, 1),
('2025-01-15 20:15:00', 'pickup', 2, 15.00, 1),
('2025-01-16 18:45:00', 'delivery', 3, 28.00, 2),
('2025-01-16 19:00:00', 'delivery', 4, 22.50, 1),
('2025-01-17 20:30:00', 'pickup', 5, 18.00, 3),
('2025-01-17 21:00:00', 'delivery', 6, 35.00, 3),
('2025-01-18 19:15:00', 'delivery', 7, 24.50, 4),
('2025-01-18 20:00:00', 'pickup', 8, 16.00, 4),
('2025-01-19 18:30:00', 'delivery', 9, 31.00, 5),
('2025-01-19 19:45:00', 'delivery', 10, 27.50, 5);

-- Populate Order_line
INSERT INTO Order_line (Line_Id, Order_Id, Product_Id, Quantity, Unit_price) VALUES
-- Order 1
(1, 1, 2, 2, 9.50),
(2, 1, 16, 1, 2.00),
-- Order 2
(1, 2, 1, 1, 8.50),
(2, 2, 5, 1, 10.00),
-- Order 3
(1, 3, 6, 2, 11.50),
(2, 3, 11, 1, 7.50),
(3, 3, 18, 2, 2.00),
-- Order 4
(1, 4, 3, 2, 10.50),
(2, 4, 20, 1, 2.50),
-- Order 5
(1, 5, 12, 2, 8.50),
(2, 5, 17, 1, 2.00),
-- Order 6
(1, 6, 7, 1, 11.00),
(2, 6, 8, 1, 12.50),
(3, 6, 10, 1, 11.00),
(4, 6, 21, 2, 2.20),
-- Order 7
(1, 7, 4, 2, 9.99),
(2, 7, 19, 2, 1.50),
-- Order 8
(1, 8, 13, 2, 7.00),
(2, 8, 16, 2, 2.00),
-- Order 9
(1, 9, 9, 2, 10.50),
(2, 9, 14, 1, 7.50),
(3, 9, 18, 1, 2.00),
-- Order 10
(1, 10, 2, 2, 9.50),
(2, 10, 6, 1, 11.50),
(3, 10, 20, 2, 2.50);

-- Populate Delivery_order (only for delivery orders)
INSERT INTO Delivery_order (Order_Id, Employee_Id, Date) VALUES
(1, 2, '2025-01-15 19:50:00'),
(3, 4, '2025-01-16 19:10:00'),
(4, 2, '2025-01-16 19:25:00'),
(6, 6, '2025-01-17 21:30:00'),
(7, 8, '2025-01-18 19:45:00'),
(9, 10, '2025-01-19 19:00:00'),
(10, 10, '2025-01-19 20:15:00');