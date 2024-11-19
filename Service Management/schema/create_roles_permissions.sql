-- creating our admin 
create role avens_admin;

-- add privileges to admin 

alter role avens_admin with  SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'amshs@1747#1';


-- chaning the role 
SET ROLE avens_admin;

-- now the admin creates the business analyst role, as admin has the privileges to create roles;

CREATE ROLE avens_ba with LOGIN PASSWORD 'KFJF@13453#1';

-- this user shall have access to only price table, as business analyst would be changing the pricing and offers.

GRANT INSERT, UPDATE, DELETE on avens_ba;

REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM avens_ba;

