CREATE TABLE Muutumatu (
ID int PRIMARY KEY NOT NULL IDENTITY(1,1),
FirstName varchar(255) NOT NULL,
LastName varchar(255) NOT NULL,
DOB date NOT NULL,
Email varchar(255) NOT NULL,
PSW varchar(255) NOT NULL,
Citizenship varchar(255) NOT NULL,
Gender varchar(6) NOT NULL
);