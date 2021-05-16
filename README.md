# Microsoft SQL Server Tips & Tricks

Some Tips and Tricks about MS SQL Server.

[![forthebadge](https://forthebadge.com/images/badges/you-didnt-ask-for-this.svg)](http://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/contains-technical-debt.svg)](http://forthebadge.com)  [![forthebadge](https://forthebadge.com/images/badges/check-it-out.svg)](http://forthebadge.com)  [![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

![Microsoft SQL Server](./images/mssql-logo-256.png)

## Useful scripts

### Security

* Find TCP port
* List of SQL Server users who can connect
* List of Active Directory users who can connect
* Changing the current password
* Restore password
* Generating permissions
* Permissions on objects and object owners

### Indexes

* Deletion of hypothetical indexes
* Find duplicate indexes
* Rebuild indexes
* Useless indexes
* Missing indexes

### Primary Key / Foreign Key / Constraints

* Drop & Create of all existing constraints
* Drop all FK from DB
* Find tables that do not have foreign keys
* List all the dependencies of the database
* Orphan tables (without referential integrity constraints)
* Tables containing ID columns with no foreign key
* Tables with constraints, default values, rules, triggers, ... and how many
* Tables without a primary key
* Tables without clustered index (and without any index at all)
* Top 10 most indexed tables

### Triggers

* Find the triggers positioned on the tables

### Data lifecycle

* Delete historical data from a table according to its dependencies
* A summary of the structure of the tables
* Gets the content of each column in a specified table
* Max data length
* Number of tables per schema
* Tables that have no documentation in the extended properties
* Using a column in a database
* Impact analysis

### Stored Procedures

* Execute instructions stored in database
* Retrieve all stored procedures

### BCP

* Generate the bcp instruction for a table
* Generate the bcp instruction from all the tables in the database

### View

* Retrieve the composition of a view

### Run

* Returns the available space of the server
* Returns the date of the last backup performed
* Memory usage check
* Number of rows and spaces (allocated, used, unused) of tables
* Retrieve system information from the RDBMS
* SQL Server 2012 Diagnostic Information Queries
* Compute statistics
* Detailed or limited index fragmentation
* Volumetry
* The latest modifications made to the database
* Top 20 longest queries

## Useful links

* [Cycles Adventure Works](https://docs.microsoft.com/fr-fr/previous-versions/sql/sql-server-2008/ms124825(v=sql.100)?redirectedfrom=MSDN) - MS SQL Server DB sample
* [Adventure Works](https://docs.microsoft.com/fr-fr/previous-versions/sql/sql-server-2008/ms124501(v=sql.100)?redirectedfrom=MSDN) - MS SQL Server DB sample
* [SQL Authority](https://blog.sqlauthority.com/) - One of my references in SQL
* [SQL Server Maintenance Solution](https://ola.hallengren.com/) - SQL Server Backup, Integrity Check, and Index and Statistics Maintenance made by [Ola Hallengren](https://github.com/olahallengren)

## Tomorrow I will learn

* [Convert to MS Access](https://www.sqlserverlogexplorer.com/convert-database-to-ms-access-mdb/)
* [tSQLt](https://tsqlt.org/) - An open source database unit testing framework for SQL Server
* [MSSQL Exporter](https://github.com/DanielOliver/mssql_exporter)
* http://www.sqlnuggets.com/blog/sql-scripts-how-to-find-missing-indexes/
* https://www.sqlskills.com/blogs/glenn/category/dmv-queries/
* https://docs.microsoft.com/en-us/sql/relational-databases/system-stored-procedures/sp-special-columns-transact-sql?view=sql-server-ver15
* https://blog.sqlauthority.com/2006/11/01/sql-server-query-to-display-foreign-key-relationships-and-name-of-the-constraint-for-each-table-in-database/
* https://www.red-gate.com/simple-talk/sql/database-administration/5-monitoring-queries-for-sql-server/
* https://www.red-gate.com/simple-talk/sql/database-administration/creating-csv-files-using-bcp-and-stored-procedures/
* https://www.red-gate.com/simple-talk/sql/t-sql-programming/exploring-your-database-schema-with-sql/

## Build with

* [Git](https://git-scm.com) - Open source distributed version control system

## Contributing

If you would like to contribute, read the CONTRIBUTING.md file to learn how to do so.
