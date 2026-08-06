/*
================================================================================
Create Database and Schemas
================================================================================
    This script creates a new database named 'Data_Warehouse'.
    Additionally, it sets up three schemas: bronze, silver, and gold.
    Warning: Running this script will drop the 'Data_Warehouse' database.
*/

USE master;
GO

-- Drop and recreate the 'Data_Warehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Data_Warehouse')
BEGIN
    ALTER DATABASE Data_Warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Data_Warehouse;
END;
GO
    
CREATE DATABASE Data_Warehouse;
GO

USE Data_Warehouse;
GO

-- Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO