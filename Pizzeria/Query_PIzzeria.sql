USE Pizzeria_db;

-- Lists how many products in the 'Beverages' category have been sold in a given location.
SELECT p.Product_Id ,p.Name, SUM(ol.Quantity)
FROM Store s JOIN Order_ o ON s.Store_Id = o.Store_Id
            JOIN Order_line ol ON o.Order_Id = ol.Order_Id
            LEFT JOIN Product p ON ol.Product_Id = p.Product_Id
WHERE p.Product_type = 'Drink'
-- AND s.locality =  <- put here the location you're looking for
GROUP BY p.Product_Id ,p.Name;

-- List how many orders a given employee has placed.
SELECT e.Employee_Id, e.Name, e.Surname, e.Role, COUNT(do.Delivery_order_Id) AS Total_Deliveries
FROM Employee e LEFT JOIN Delivery_order do ON e.Employee_Id = do.Employee_Id
WHERE e.Role = 'delivery'
GROUP BY e.Employee_Id, e.Name, e.Surname, e.Role;
