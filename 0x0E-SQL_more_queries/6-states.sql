-- This script creates the database hbtn_0d_usa and the table states (in the
database hbtn_0d_usa) on the MySQL server.
-- The table states has columns:
--   - id: INT unique, auto generated, can’t be null, and is a primary key
--   - name: VARCHAR(256) can’t be null
-- If the database hbtn_0d_usa already exists, the script will not fail.
-- If the table states already exists, the script will not fail.
-- Create the database hbtn_0d_usa if it does not exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
-- Use the database hbtn_0d_usa
USE hbtn_0d_usa;
-- Create the table states if it does not exist
CREATE TABLE IF NOT EXISTS states (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);
