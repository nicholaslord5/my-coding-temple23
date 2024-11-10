CREATE TABLE `Authors` (
  `AuthorID` INT AUTO_INCREMENT,
  `FirstName` VARCHAR,
  `LastName` VARCHAR,
  KEY `Primary Key` (`AuthorID`)
);

CREATE TABLE `Books` (
  `BookID`  INT AUTO_INCREMENT,
  `Title` VARCHAR,
  `Genre` VARCHAR,
  `Published_Year` YEAR,
  `Price` DECIMAL,
  `AuthorID` INT,
  KEY `Primary Key` (`BookID`),
  KEY `Foreign Key` (`AuthorID`)
);

CREATE TABLE `Customers` (
  `CustomerID` INT AUTO_INCREMENT,
  `FirstName` VARCHAR,
  `LastName` VARCHAR,
  `Email` VARCHAR,
  `PhoneNumber` VARCHAR,
  `Address` VARCHAR,
  `CreationDate` DATE,
  KEY `Primary Key` (`CustomerID`)
);

CREATE TABLE `Transactions` (
  `TransactionID` INT,
  `Date` DATE,
  `CustomerID` INT,
  `Amount` DECIMAL,
  `BookID` INT,
  `Quantity` INT,
  `Price` DECIMAL,
  KEY `Primary Key` (`TransactionID`),
  KEY `Foreign Key` (`CustomerID`)
);
