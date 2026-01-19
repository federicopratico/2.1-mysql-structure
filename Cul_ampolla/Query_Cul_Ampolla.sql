USE Optics_cul_ampolla;

-- Lists the total invoices from a customer in a given period
SELECT c.Customer_id ,c.Name, c.Surname, s.Date, s.Total
FROM Customer c JOIN Sell s ON c.Customer_id = s.Customer_Id
WHERE c.Customer_id = 2 AND YEAR(Date) >= 2023;

-- List the different models of glasses that an employee has sold during a year.
SELECT e.Employee_Id, CONCAT(e.Name, ' ', e.Surname) AS Employee, COUNT(DISTINCT g.Brand) as 'Models sold'
FROM Employee e JOIN Sell s ON e.Employee_Id = s.Employee_Id
                JOIN Sell_line sl ON s.Sell_Id = sl.Sell_Id
                JOIN Glasses g ON sl.Glass_Id = g.Glass_Id
WHERE YEAR(s.Date) = 2023
-- AND e.Employee_Id =  <- add here the Employee_id of the employee you are looking for
GROUP BY e.Employee_Id, Employee;

-- List the different suppliers who have supplied glasses successfully sold by the optician.
SELECT DISTINCT p.Provider_ID, p.Name
FROM Sell s JOIN Sell_line sl ON s.Sell_Id = sl.Sell_Id
            LEFT JOIN Glasses g ON sl.Glass_Id = g.Glass_Id
            JOIN Provider p ON g.Provider = p.Provider_ID;
