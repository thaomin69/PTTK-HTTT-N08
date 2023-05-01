--Admin
--drop USER QLKS CASCADE;
--Tạo user QLKS như ADMIN để quản lý hệ thống khách sạn
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER QLKS IDENTIFIED BY a;
GRANT CREATE SESSION TO QLKS WITH ADMIN OPTION;
GRANT CONNECT TO QLKS WITH ADMIN OPTION;
GRANT CREATE ROLE TO QLKS WITH ADMIN OPTION;
GRANT ALTER USER TO QLKS WITH ADMIN OPTION;
GRANT CREATE USER TO QLKS WITH ADMIN OPTION;
GRANT ALTER ANY ROLE TO QLKS WITH ADMIN OPTION;
GRANT DROP USER TO QLKS WITH ADMIN OPTION;
GRANT DROP ANY ROLE TO QLKS WITH ADMIN OPTION;
GRANT SELECT ANY DICTIONARY TO QLKS;
GRANT CREATE TABLE TO QLKS;
ALTER SESSION SET "_ORACLE_SCRIPT"=FALSE;
GRANT INSERT ANY TABLE TO QLKS;
GRANT DELETE ANY TABLE TO QLKS;
GRANT UPDATE ANY TABLE TO QLKS;
GRANT CREATE TRIGGER TO QLKS;
GRANT UNLIMITED TABLESPACE TO QLKS;
CONNECT QLKS/a;
/