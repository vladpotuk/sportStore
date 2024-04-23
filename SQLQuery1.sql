USE SportStore;
GO

-- Update the quantity and cost of a product
UPDATE Products
SET Quantity = 12,
    Cost = 55.00
WHERE ProductID = 1;
GO

-- Update the position and salary of an employee
UPDATE Employees
SET Position = 'Senior Sales Associate',
    Salary = 40000.00
WHERE EmployeeID = 1;
GO

-- Update the email and phone number of a customer
UPDATE Customers
SET Email = 'new_email@example.com',
    Phone = '1231231234'
WHERE CustomerID = 1;
GO

-- Update the sale price of a product
UPDATE Sales
SET SalePrice = 80.00
WHERE SaleID = 1;
GO
