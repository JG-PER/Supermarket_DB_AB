# Supermarket Inventory Database A/B Version

## Written by James Gengerke

## Overview

Similar to the main version, this version includes new variables to hold different information than the main version, allowing for a more specific approach to be used in practice compared to a broad, more sampled/exampled approach. These new variables are meant to store values input/updated from remote software and can ideally be used with CGO software to effectivly order and manage inventory. 

This project provides SQL scripts to create and populate a supermarket inventory database named `supermarketInventoryDB_AB`. It includes tables for various departments (grocery, nonfoods, frozen, dairy), vendor information, and summary tables for total stock and total items sold. Sample data is inserted into each table for demonstration purposes. A separate script is provided to view all data within the database.

## Scripts Included

1.  **`Blank_AB_Version.sql`**:
    * This script handles the initial database setup.
    * It drops the database `supermarketInventoryDB_AB` if it already exists, then creates it and sets it as the active database.
    * It defines the schema for all tables and populates them with initial sample data.
2.  **`View_Data_AB.sql`**:
    * This script is used to query and display all data from the tables within the `supermarketInventoryDB_AB` database.

## Database Name

* `supermarketInventoryDB_AB`

## Tables Created

The `Blank_AB_Version.sql` script creates the following tables:

### `totalSold`
* Stores information about the total number of items sold per department.
* **Columns**:
    * `department VARCHAR(255)`
    * `totalSold INT`
* Sample data is inserted for 'Grocery', 'Non-Foods', 'Frozen', and 'Dairy' departments.

### Department Product Tables (`grocery`, `nonfoods`, `frozen`, `dairy`)
* These tables store detailed information for products within specific departments. They share a common structure.
* **Common Columns**:
    * `productName VARCHAR(512)`
    * `productUPC VARCHAR(15)`
    * `itemNum VARCHAR(7)`
    * `itemDes VARCHAR(512)`
    * `size VARCHAR(64)`
    * `pack VARCHAR(3)`
    * `productCompany VARCHAR(512)`
    * `INV INT` (Inventory count)
    * `prevDayMvmt VARCHAR(3)` (Previous day movement)
    * `aloc VARCHAR(3)` (Allocation)
    * `cgoQty VARCHAR(2)` (Cargo quantity)
    * `location VARCHAR(64)`
    * `retailPrice DECIMAL(8,2)`
    * `wholesalePrice DECIMAL(8,2)`
    * `vendorCode INT`
* Each department table (`grocery`, `nonfoods`, `frozen`, `dairy`) is populated with sample test products.

### `vendorInfo`
* Stores details about product vendors.
* **Columns**:
    * `vendorCode INT`
    * `vendorName VARCHAR(255)`
    * `vendorType VARCHAR(255)` (e.g., 'commissary', 'company')
* Sample vendor data is inserted.

### `totalStock`
* Summarizes the total inventory (sum of `INV`) for each major department.
* **Columns**:
    * `Items INT`
    * `Departments VARCHAR(255)`
* Data is populated by summing the `INV` column from the `grocery`, `nonfoods`, `frozen`, and `dairy` tables respectively, and associating it with the department name.

## How to Use

1.  **Database Setup**: Execute the `Blank_AB_Version.sql` script in your SQL environment. This will create the `supermarketInventoryDB_AB` database, define all table structures, and load the initial sample data.
2.  **View Data**: After the database setup, execute the `View_Data_AB.sql` script. This script will run `SELECT *` queries on all tables, allowing you to inspect their contents.

## Sample Data

The `Blank_AB_Version.sql` script includes `INSERT` statements that populate all created tables with sample data. This is useful for understanding the table structures and for testing purposes. For example, the department-specific product tables (`grocery`, `nonfoods`, `frozen`, `dairy`) are each populated with 'TestProduct1' and 'TestProduct2' entries.