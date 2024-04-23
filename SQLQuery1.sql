USE SportStore;
GO

-- Retrieve all products
EXEC GetAllProductsInfo;
GO

-- Retrieve top 3 oldest customers
EXEC GetTop3OldestCustomers;
GO

-- Retrieve information about the top selling employee
EXEC GetTopSellingEmployee;
GO

-- Check availability of products from a specific manufacturer
DECLARE @Manufacturer NVARCHAR(100) = 'SomeManufacturer';
DECLARE @Available BIT;

EXEC CheckManufacturerAvailability @Manufacturer, @Available OUTPUT;

IF @Available = 1
    PRINT 'Yes, products from manufacturer ' + @Manufacturer + ' are available.';
ELSE
    PRINT 'No, products from manufacturer ' + @Manufacturer + ' are not available.';

-- Retrieve information about the top selling manufacturer
EXEC GetTopSellingManufacturer;
GO

-- Delete all customers registered after a specific date
DECLARE @Date DATE = '2023-01-01';
DECLARE @DeletedCount INT;

EXEC DeleteCustomersRegisteredAfterDate @Date, @DeletedCount OUTPUT;

PRINT 'Deleted ' + CAST(@DeletedCount AS NVARCHAR(10)) + ' customers registered after ' + CAST(@Date AS NVARCHAR(10)) + '.';
