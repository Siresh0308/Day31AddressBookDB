Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 8.0.28 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| addressbook        |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
4 rows in set (0.01 sec)

mysql> use addressbook;
Database changed
mysql> /*****UC1 Create database addressbook*******/
mysql> create database Address_Book;
Query OK, 1 row affected (0.02 sec)

mysql> /*******UC2 Adding Details to AddressBook*******/
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| address_book       |
| addressbook        |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
5 rows in set (0.00 sec)

mysql> use address_book;
Database changed
mysql> create table AddressBookDetails( FirstName varchar(255) , LastName varchar(255) , City varchar(255) , PhoneNumber int, PinCode int ,State varchar(255) , email varchar(255));
Query OK, 0 rows affected (0.06 sec)

/**************UC3 inserting new Contacts to AddressBook table************/

mysql>mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| address_book       |
| addressbook        |
| addressbookservice |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
6 rows in set (0.00 sec)

mysql> use ^C
mysql> use address_book;
Database changed
mysql> show address_book;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'address_book' at line 1
mysql> desc AddressBookDetails;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| FirstName   | varchar(255) | YES  |     | NULL    |       |
| LastName    | varchar(255) | YES  |     | NULL    |       |
| City        | varchar(255) | YES  |     | NULL    |       |
| PhoneNumber | int          | YES  |     | NULL    |       |
| PinCode     | int          | YES  |     | NULL    |       |
| State       | varchar(255) | YES  |     | NULL    |       |
| email       | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> insert into AddressBookDetails(FirstName, LastName,City,PhoneNumber,PinCode, State,email) values('Resh','Singh','Bhopal',919691674007,462023,'M.P.','abc@gmail.com');
ERROR 1264 (22003): Out of range value for column 'PhoneNumber' at row 1
mysql> insert into AddressBookDetails(FirstName, LastName,City,PhoneNumber,PinCode, State,email) values('Resh','Singh','Bhopal',9691674007,462023,'M.P.','abc@gmail.com');
ERROR 1264 (22003): Out of range value for column 'PhoneNumber' at row 1
mysql> insert into AddressBookDetails(FirstName, LastName,City,PhoneNumber,PinCode, State,email) values('Resh','Singh','Bhopal',96917,462023,'M.P.','abc@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql>  insert into AddressBookDetails(FirstName, LastName,City,PhoneNumber,PinCode, State,email) values('Reshma','Singh','Bhopal',9456917,462123,'M.P.','abec@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into AddressBookDetails(FirstName, LastName,City,PhoneNumber,PinCode, State,email) values('Rashmi','Singh','Bhopal',94356917,462423,'M.P.','abef@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into AddressBookDetails(FirstName, LastName,City,PhoneNumber,PinCode, State,email) values('SuResh','Singh','Bhopal',94536917,462113,'M.P.','aefgh@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> /****************UC4 editing the existing contact by their firstname***********/
mysql> update AddressBookDetails set LastName='singh' where FirstName='Resh';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from AddressbookDetails;
+-----------+----------+--------+-------------+---------+-------+-----------------+
| FirstName | LastName | City   | PhoneNumber | PinCode | State | email           |
+-----------+----------+--------+-------------+---------+-------+-----------------+
| Resh      | singh    | Bhopal |       96917 |  462023 | M.P.  | abc@gmail.com   |
| Reshma    | Singh    | Bhopal |     9456917 |  462123 | M.P.  | abec@gmail.com  |
| Rashmi    | Singh    | Bhopal |    94356917 |  462423 | M.P.  | abef@gmail.com  |
| SuResh    | Singh    | Bhopal |    94536917 |  462113 | M.P.  | aefgh@gmail.com |
+-----------+----------+--------+-------------+---------+-------+-----------------+
4 rows in set (0.01 sec)

mysql>  update AddressBookDetails set LastName='singhaniya' where FirstName='Rashmi';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> desc AddressBookDetails;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| FirstName   | varchar(255) | YES  |     | NULL    |       |
| LastName    | varchar(255) | YES  |     | NULL    |       |
| City        | varchar(255) | YES  |     | NULL    |       |
| PhoneNumber | int          | YES  |     | NULL    |       |
| PinCode     | int          | YES  |     | NULL    |       |
| State       | varchar(255) | YES  |     | NULL    |       |
| email       | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.02 sec)

mysql>
mysql>
mysql> select * from AddressbookDetails;
+-----------+------------+--------+-------------+---------+-------+-----------------+
| FirstName | LastName   | City   | PhoneNumber | PinCode | State | email           |
+-----------+------------+--------+-------------+---------+-------+-----------------+
| Resh      | singh      | Bhopal |       96917 |  462023 | M.P.  | abc@gmail.com   |
| Reshma    | Singh      | Bhopal |     9456917 |  462123 | M.P.  | abec@gmail.com  |
| Rashmi    | singhaniya | Bhopal |    94356917 |  462423 | M.P.  | abef@gmail.com  |
| SuResh    | Singh      | Bhopal |    94536917 |  462113 | M.P.  | aefgh@gmail.com |
+-----------+------------+--------+-------------+---------+-------+-----------------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------------------------------------
UC5 -deleting the contact by their lastname


mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| address_book       |
| addressbook        |
| addressbookservice |
| employeepayroll    |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
7 rows in set (0.07 sec)

mysql> use addressbookservice;
Database changed
mysql> select * from Addressbook;
mysql> select * from AddressbookDetails;
Database changed
mysql> desc AddressBookDetails;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| FirstName   | varchar(255) | YES  |     | NULL    |       |
| LastName    | varchar(255) | YES  |     | NULL    |       |
| City        | varchar(255) | YES  |     | NULL    |       |
| PhoneNumber | int          | YES  |     | NULL    |       |
| PinCode     | int          | YES  |     | NULL    |       |
| State       | varchar(255) | YES  |     | NULL    |       |
| email       | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.03 sec)

mysql> delete from Addressbookdetails where lastname='singh';
Query OK, 3 rows affected (0.05 sec)
UC5 -deleting the contact by their lastname


mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| address_book       |
| addressbook        |
| addressbookservice |
| employeepayroll    |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
7 rows in set (0.07 sec)

mysql> use addressbookservice;
Database changed
mysql> select * from Addressbook;
mysql> select * from AddressbookDetails;
Database changed
mysql> desc AddressBookDetails;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| FirstName   | varchar(255) | YES  |     | NULL    |       |
| LastName    | varchar(255) | YES  |     | NULL    |       |
| City        | varchar(255) | YES  |     | NULL    |       |
| PhoneNumber | int          | YES  |     | NULL    |       |
| PinCode     | int          | YES  |     | NULL    |       |
| State       | varchar(255) | YES  |     | NULL    |       |
| email       | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.03 sec)

mysql> delete from Addressbookdetails where lastname='singh';
Query OK, 3 rows affected (0.05 sec)
