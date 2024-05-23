-- This script creates the database hbtn_0d_2 and the user user_0d_2.
-- The user_0d_2 password is set to user_0d_2_pwd.
-- If the database hbtn_0d_2 or the user user_0d_2 already exists, the script will not fail.
-- Create the database hbtn_0d_2 if it does not exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;
-- Create the user user_0d_2 with password user_0d_2_pwd if it does not existCREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';
-- Grant SELECT privilege on the database hbtn_0d_2 to user_0d_2
GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';
-- Apply the changes
FLUSH PRIVILEGES;
