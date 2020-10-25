# How to import data into mysql
## Create the database
   - sqlplus -u root -p 
      - create database mvmweb;
      - quit;
## Import the data
   - sqlplus -u root  -p mvmweb < votingdata.sql
## Create user and give permission to database
   - sqlplus -u root -p
      - create user 'votingapp'@'localhost' identified by 'password'
      - grant all privileges on mvmweb.* to 'votingapp'@'localhost'
