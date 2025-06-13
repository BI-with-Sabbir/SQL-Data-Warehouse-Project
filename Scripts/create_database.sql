/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse'. 
    Optionally, it drops and recreates the database if it already exists. 
    Within the database, it sets up three schemas: 'bronze', 'silver', and 'gold'.

WARNING:
    If @RecreateDB is set to 1, the existing 'DataWarehouse' database will be DROPPED,
    and ALL data will be permanently deleted.
    Ensure backups are in place before running this script with @RecreateDB = 1.
=============================================================
*/
