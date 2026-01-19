USE Optics_cul_ampolla;

-- Populate Address table
INSERT INTO Address (Street, Number, Floor, Door, City, Zip, Country) VALUES
('Carrer Major', 15, 2, 3, 'Barcelona', 08001, 'Spain'),
('Avinguda Diagonal', 234, 5, 1, 'Barcelona', 08018, 'Spain'),
('Carrer de Balmes', 89, NULL, NULL, 'Barcelona', 08008, 'Spain'),
('Rambla Catalunya', 112, 3, 2, 'Barcelona', 08007, 'Spain'),
('Passeig de Gracia', 45, 1, 4, 'Barcelona', 08007, 'Spain'),
('Via Laietana', 67, 4, 1, 'Barcelona', 08003, 'Spain'),
('Carrer Pelai', 23, NULL, NULL, 'Barcelona', 08001, 'Spain'),
('Gran Via', 456, 2, 5, 'Barcelona', 08015, 'Spain'),
('Carrer Aragó', 178, 3, 3, 'Barcelona', 08011, 'Spain'),
('Plaza Catalunya', 9, 1, 1, 'Barcelona', 08002, 'Spain');

-- Populate Provider table
INSERT INTO Provider (Provider_ID, Name, Phone, Fax, Address) VALUES
('PROV001', 'Luxottica España', 934567890, '934567891', 1),
('PROV002', 'Safilo Iberia', 932345678, '932345679', 2),
('PROV003', 'Marcolin Spain', 931234567, '931234568', 3),
('PROV004', 'Kering Eyewear', 935678901, '935678902', 4),
('PROV005', 'Indo Optical', 936789012, '936789013', 5);

-- Populate Glasses table
INSERT INTO Glasses (Provider, Brand, Lens_prescription_L, Lens_prescription_R, Frame_type, Frame_color, Lens_color, Price) VALUES
('PROV001', 'Ray-Ban', -2.50, -2.25, 'metal', 'Black', 'Clear', 189.99),
('PROV001', 'Oakley', -1.75, -1.50, 'paste', 'Blue', 'Polarized', 249.99),
('PROV002', 'Carrera', -3.00, -3.25, 'metal', 'Silver', 'Clear', 159.99),
('PROV002', 'Boss', 0.00, 0.00, 'floating', 'Tortoise', 'Brown', 299.99),
('PROV003', 'Tom Ford', -1.25, -1.00, 'metal', 'Gold', 'Clear', 399.99),
('PROV003', 'Guess', -2.00, -2.00, 'paste', 'Red', 'Clear', 129.99),
('PROV004', 'Gucci', 0.00, 0.00, 'metal', 'Black', 'Green', 449.99),
('PROV004', 'Saint Laurent', -1.50, -1.75, 'floating', 'Transparent', 'Clear', 379.99),
('PROV005', 'Police', -2.75, -2.50, 'paste', 'Blue', 'Clear', 169.99),
('PROV005', 'Fila', -0.75, -1.00, 'metal', 'Silver', 'Clear', 99.99),
('PROV001', 'Ray-Ban', 0.00, 0.00, 'metal', 'Gold', 'Gradient', 219.99),
('PROV003', 'Diesel', -3.50, -3.25, 'paste', 'Black', 'Clear', 139.99);

-- Populate Customer table
INSERT INTO Customer (Name, Surname, Phone, Registration_date, Address, Recommended_by) VALUES
('Maria', 'Garcia', 611234567, '2023-01-15 10:30:00', 6, NULL),
('Joan', 'Martinez', 622345678, '2023-02-20 14:15:00', 7, 1),
('Laura', 'Lopez', 633456789, '2023-03-10 09:45:00', 8, 1),
('Pere', 'Rodriguez', 644567890, '2023-04-05 16:20:00', 9, NULL),
('Anna', 'Fernandez', 655678901, '2023-05-12 11:00:00', 10, 4),
('Jordi', 'Sanchez', 666789012, '2023-06-18 13:30:00', 6, 2),
('Marta', 'Perez', 677890123, '2023-07-22 15:45:00', 7, NULL),
('David', 'Gomez', 688901234, '2023-08-30 10:15:00', 8, 7),
('Carmen', 'Ruiz', 699012345, '2023-09-14 12:00:00', 9, 3),
('Miguel', 'Torres', 610123456, '2023-10-25 17:30:00', 10, 5);

INSERT INTO Employee (Name, Surname) VALUES
('Sofia', 'Moreno'),
('Carlos', 'Jimenez'),
('Elena', 'Navarro'),
('Pablo', 'Romero'),
('Isabel', 'Diaz');

-- Populate Sell table
INSERT INTO Sell (Customer_Id, Employee_Id, Date, Total) VALUES
(1, 1, '2023-01-20 11:00:00', 189.99),
(2, 2, '2023-02-25 15:30:00', 409.98),
(3, 1, '2023-03-15 10:15:00', 299.99),
(4, 3, '2023-04-10 14:45:00', 549.98),
(5, 2, '2023-05-18 12:30:00', 399.99),
(6, 4, '2023-06-22 16:00:00', 169.99),
(7, 1, '2023-07-28 11:45:00', 829.97),
(8, 5, '2023-09-05 13:20:00', 219.99),
(9, 3, '2023-09-20 15:00:00', 279.98),
(10, 2, '2023-11-01 10:30:00', 449.99);

-- Populate Sell_line table
INSERT INTO Sell_line (Line_Id, Sell_Id, Glass_Id, Quantity, Subtotal) VALUES
(1, 1, 1, 1, 189.99),
(1, 2, 2, 1, 249.99),
(2, 2, 3, 1, 159.99),
(1, 3, 4, 1, 299.99),
(1, 4, 5, 1, 399.99),
(2, 4, 6, 1, 149.99),
(1, 5, 5, 1, 399.99),
(1, 6, 9, 1, 169.99),
(1, 7, 7, 1, 449.99),
(2, 7, 5, 1, 399.99),
(1, 8, 11, 1, 219.99),
(1, 9, 6, 2, 279.98),
(1, 10, 7, 1, 449.99);