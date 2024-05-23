-- This script lists all privileges of the MySQL users user_0d_1 and user_0d_2 on the localhost server.
-- List privileges for user_0d_1
SELECT
    GRANTEE,
    TABLE_CATALOG,
    PRIVILEGE_TYPE,
    IS_GRANTABLE
FROM
    INFORMATION_SCHEMA.USER_PRIVILEGES
WHERE
    GRANTEE = "'user_0d_1'@'localhost'";
-- List privileges for user_0d_2
SELECT
    GRANTEE,
    TABLE_CATALOG,
    PRIVILEGE_TYPE,
    IS_GRANTABLE
FROM
    INFORMATION_SCHEMA.USER_PRIVILEGES
WHERE
    GRANTEE = "'user_0d_2'@'localhost'";
