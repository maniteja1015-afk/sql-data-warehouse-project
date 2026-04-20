/* 

=====================================================
CREATE DATABASE AND SCHEMAS
=====================================================

SCRIPT PURPOSE:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. If the database exists, it is dropped 
and recreated. Additionally, the script sets up 3 schemas within the database: 'bronze', 'silver' and 'gold'.

WARNINGS:
a. Running this script will drop the entire 'DataWarehouse' db if it exists.
b. All data in the db will be permanently deleted. Proceed with caution and ensure you have proper backup before running this script.
*/


USE master;
GO

  -- drop and recreate the 'DataWarehouse' database

  IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
  BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
  DROP DATABASE DataWarehouse
  END;
  GO

-- Create the database 'DataWarehouse'
    
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Create Schemas
  
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
