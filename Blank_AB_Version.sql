-- ****************************************************************************
-- DATABASE SQL PROJECT FORKED - SUPERMARKET INVENTORY DATABASE A/B VERSION
-- THIS SQL IS WRITTEN BY JAMES GENGERKE 
-- ****************************************************************************
drop database if exists supermarketInventoryDB_AB; 
create database supermarketInventoryDB_AB; 
use supermarketInventoryDB_AB;
-- ****************************************************************************
-- START
-- DATABASE SQL PROJECT FORKED - SUPERMARKET INVENTORY DATABASE A/B VERSION
-- TABLES: totalSold
-- ****************************************************************************
create table totalSold (
department varchar(255),
totalSold int
);

insert into totalSold (department, totalSold)
values
('Grocery', 539),
('Non-Foods', 302),
('Frozen', 418),
('Dairy', 498); 
-- ****************************************************************************
-- END
-- TABLES: totalSold
-- ****************************************************************************
-- ****************************************************************************
-- START
-- DATABASE SQL PROJECT FORKED - SUPERMARKET INVENTORY DATABASE A/B VERSION
-- TABLES: grocery and vendorCode with data
-- ****************************************************************************
-- create table grocery with data:
create table grocery (
    productName varchar(512),
    productUPC varchar(15),
    itemNum varchar(7),
    itemDes varchar(512),
    size varchar(64),
    pack varchar(3),
    productCompany varchar(512),
    
    INV int,
    prevDayMvmt varchar(3),
    aloc varchar(3),
    cgoQty varchar(2),
    
    location varchar(64),
    retailPrice decimal(8,2),
    wholesalePrice decimal(8,2),
    vendorCode int
);

insert into grocery (productName, productUPC, itemNum, itemDes, size, pack, productCompany, INV, prevDayMvmt, aloc, cgoQty, location, retailPrice, wholesalePrice, vendorCode) 
values
('TestProduct1', 'UPCXXXXXXXXX', 'NUMXXXX', 'Test Product 1 Description', 'X.X OZ', 6, 'X Company', '4', '0', '18', '2', '97801', '20.99', '2.3', 1),
('TestProduct2', 'UPCXXXXXXXXX', 'NUMXXXX', 'Test Product 2 Description', 'XXX FL', 4, 'X Company', '10', '3', '11', '1', '9', '9.99', '1.5', 1);   

-- create table vendorInfo with data:
create table vendorInfo (
    vendorCode int,
    vendorName varchar(255),
    vendorType varchar(255)
);
insert into vendorInfo (vendorCode, vendorName, vendorType)
values
(1, 'Keasby', 'commissary'),
(2, 'Bayonne', 'commissary'),
(30, 'AriZona', 'company'),
(437, 'Coca-Cola', 'company'),
(3000, 'Conagra Brands', 'company');


-- RESET DATA IMPORT:
-- drop table grocery, vendorInfo; 

-- ****************************************************************************
-- END
-- TABLES: grocery and vendorCode with data
-- ****************************************************************************
-- ****************************************************************************
-- START
-- DATABASE SQL PROJECT FORKED - SUPERMARKET INVENTORY DATABASE A/B VERSION
-- TABLES: nonfoods
-- ****************************************************************************
-- create table nonFoods with data:
CREATE TABLE nonfoods (
    productName varchar(512),
    productUPC varchar(15),
    itemNum varchar(7),
    itemDes varchar(512),
    size varchar(64),
    pack varchar(3),
    productCompany varchar(512),
    
    INV int,
    prevDayMvmt varchar(3),
    aloc varchar(3),
    cgoQty varchar(2),
    
    location varchar(64),
    retailPrice decimal(8,2),
    wholesalePrice decimal(8,2),
    vendorCode int
);

INSERT INTO nonfoods (productName, productUPC, itemNum, itemDes, size, pack, productCompany, INV, prevDayMvmt, aloc, cgoQty, location, retailPrice, wholesalePrice, vendorCode) 
values
('TestProduct1', 'UPCXXXXXXXXX', 'NUMXXXX', 'Test Product 1 Description', 'X.X OZ', 6, 'X Company', '4', '0', '18', '2', '97801', '20.99', '2.3', 1),
('TestProduct2', 'UPCXXXXXXXXX', 'NUMXXXX', 'Test Product 2 Description', 'XXX FL', 4, 'X Company', '10', '3', '11', '1', '9', '9.99', '1.5', 1);   


-- ****************************************************************************
-- END
-- TABLES: nonFoods
-- ****************************************************************************
-- ****************************************************************************
-- START
-- DATABASE SQL PROJECT FORKED - SUPERMARKET INVENTORY DATABASE A/B VERSION
-- TABLES: frozen
-- ****************************************************************************
-- create table frozen with data:
create table frozen (
    productName varchar(512),
    productUPC varchar(15),
    itemNum varchar(7),
    itemDes varchar(512),
    size varchar(64),
    pack varchar(3),
    productCompany varchar(512),
    
    INV int,
    prevDayMvmt varchar(3),
    aloc varchar(3),
    cgoQty varchar(2),
    
    location varchar(64),
    retailPrice decimal(8,2),
    wholesalePrice decimal(8,2),
    vendorCode int
);
insert into frozen (productName, productUPC, itemNum, itemDes, size, pack, productCompany, INV, prevDayMvmt, aloc, cgoQty, location, retailPrice, wholesalePrice, vendorCode) 
values
('TestProduct1', 'UPCXXXXXXXXX', 'NUMXXXX', 'Test Product 1 Description', 'X.X OZ', 6, 'X Company', '4', '0', '18', '2', '97801', '20.99', '2.3', 1),
('TestProduct2', 'UPCXXXXXXXXX', 'NUMXXXX', 'Test Product 2 Description', 'XXX FL', 4, 'X Company', '10', '3', '11', '1', '9', '9.99', '1.5', 1);   


-- ****************************************************************************
-- END
-- TABLES: frozen
-- ****************************************************************************
-- ****************************************************************************
-- START
-- DATABASE SQL PROJECT FORKED - SUPERMARKET INVENTORY DATABASE A/B VERSION
-- TABLES: dairy
-- ****************************************************************************
-- create table dairy with data:

CREATE TABLE dairy (
    productName varchar(512),
    productUPC varchar(15),
    itemNum varchar(7),
    itemDes varchar(512),
    size varchar(64),
    pack varchar(3),
    productCompany varchar(512),
    
    INV int,
    prevDayMvmt varchar(3),
    aloc varchar(3),
    cgoQty varchar(2),
    
    location varchar(64),
    retailPrice decimal(8,2),
    wholesalePrice decimal(8,2),
    vendorCode int
);

INSERT INTO dairy (productName, productUPC, itemNum, itemDes, size, pack, productCompany, INV, prevDayMvmt, aloc, cgoQty, location, retailPrice, wholesalePrice, vendorCode) 
values
('TestProduct1', 'UPCXXXXXXXXX', 'NUMXXXX', 'Test Product 1 Description', 'X.X OZ', 6, 'X Company', '4', '0', '18', '2', '97801', '20.99', '2.3', 1),
('TestProduct2', 'UPCXXXXXXXXX', 'NUMXXXX', 'Test Product 2 Description', 'XXX FL', 4, 'X Company', '10', '3', '11', '1', '9', '9.99', '1.5', 1);   


-- ****************************************************************************
-- END
-- TABLES: dairy
-- ****************************************************************************
-- ****************************************************************************
-- START
-- DATABASE SQL PROJECT FORKED - SUPERMARKET INVENTORY DATABASE A/B VERSION
-- TABLES: totalStock
-- ****************************************************************************
create table totalStock (
Items int,
Departments varchar(255)
);

insert into totalStock (Items, Departments)
select SUM(INV), 'grocery'
from grocery;

insert into totalStock (Items, Departments)
select SUM(INV), 'nonFoods' 
from nonfoods;

insert into totalStock (Items, Departments)
select SUM(INV), 'frozen'
from frozen;

insert into totalStock (Items, Departments)
select SUM(INV), 'dairy'
from dairy;

-- ****************************************************************************
-- END
-- TABLES: totalStock
-- ****************************************************************************
-- ****************************************************************************
-- END
-- DATABASE SQL PROJECT FORKED - SUPERMARKET INVENTORY DATABASE A/B VERSION
-- ****************************************************************************
