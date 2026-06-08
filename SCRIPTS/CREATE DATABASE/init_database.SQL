/*
=======================================
Create Database and Schemas
=======================================
Script Purpose:
This script initializes the 'Datawarehouse' database. If a database with this name already exists, it will be dropped and rebuilt from scratch. The script also establishes the foundational 'bronze', 'silver', and 'gold' schemas.
Warning:
Executing this script will permanently erase the existing 'Datawarehouse' database and all of its data. Please proceed with extreme caution and ensure you have proper backups before running this process.
*/

USE master;

GO

-- Drop and recreate the 'DataWarehouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')

BEGIN

    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    DROP DATABASE DataWarehouse;

END;

GO

-- Create the 'DataWarehouse' database

CREATE DATABASE DataWarehouse;

GO

USE DataWarehouse;

GO

-- Create Schemas

CREATE SCHEMA bronze;

GO

CREATE SCHEMA silver;

GO

CREATE SCHEMA gold;

GO
