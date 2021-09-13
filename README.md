# Microsoft SQL Server Tips & Tricks

Some Tips and Tricks about MS SQL Server.

[![forthebadge](https://forthebadge.com/images/badges/you-didnt-ask-for-this.svg)](http://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/contains-technical-debt.svg)](http://forthebadge.com)  [![forthebadge](https://forthebadge.com/images/badges/check-it-out.svg)](http://forthebadge.com)  [![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

![Microsoft SQL Server](./images/mssql-logo-256.png)

## Useful scripts

### Security

* [Find TCP port](./scripts/security/find-tcp-port.sql)
* [List of SQL Server users who can connect](./scripts/security/list-of-sqlserver-users-who-can-connect.sql)
* [List of Active Directory users who can connect](./scripts/security/list-of-ad-users-who-can-connect.sql)
* [Changing the current password](./scripts/security/changing-the-current-password.sql)
* [Restore password](./scripts/security/restore-password.sql)
* [Generate permissions](./scripts/security/generate-permissions.sql)
* [Permissions on objects and object owners](./scripts/security/permissions-on-objects-and-object-owners.sql)

### Indexes

* [Deletion of hypothetical indexes](./scripts/indexes/deletion-of-hypothetical-indexes.sql)
* [Find duplicate indexes](./scripts/indexes/find-duplicate-indexes.sql)
* [Rebuild indexes](./scripts/indexes/rebuild-indexes.sql)
* [Useless indexes](./scripts/indexes/useless-indexes.sql)
* [Missing indexes #1](./scripts/indexes/missing-indexes-1.sql)
* [Missing indexes #2](./scripts/indexes/missing-indexes-2.sql)

### Primary Key / Foreign Key / Constraints

* [Drop & Create of all existing constraints](./scripts/pk_fk_constraints/drop-create-of-all-existing-constraints.sql)
* [Drop all FK from DB](./scripts/pk_fk_constraints/drop-all-fk-from-db.sql)
* [Find tables that do not have foreign keys](./scripts/pk_fk_constraints/find-tables-that-do-not-have-foreign-keys.sql)
* [List all the dependencies of the database](./scripts/pk_fk_constraints/list-all-the-dependencies-of-the-database.sql)
* [Orphan tables (without referential integrity constraints)](./scripts/pk_fk_constraints/orphan-tables.sql)
* [Tables containing ID columns with no foreign key](./scripts/pk_fk_constraints/tables-containing-id-columns-with-no-foreign-key.sql)
* [Tables with constraints, default values, rules, triggers, ... and how many](./scripts/pk_fk_constraints/tables-with-constraints-default-values-rules-triggers-and-how-many.sql)
* [Tables without a primary key](./scripts/pk_fk_constraints/tables-without-primary-key.sql)
* [Tables without clustered index (and without any index at all)](./scripts/pk_fk_constraints/tables-without-clustered-index.sql)
* [Top 10 most indexed tables](./scripts/pk_fk_constraints/top-10-most-indexed-tables.sql)

### Triggers

* [Find the triggers positioned on the tables](./scripts/triggers/find-all-triggers.sql)

### Data lifecycle

* [Delete historical data from a table according to its dependencies](./scripts/data_lifecycle/delete-historical-data-from-a-table-according-to-its-dependencies.sql)
* [A summary of the structure of the tables](./scripts/data_lifecycle/summary-of-tables-structures.sql)
* [Gets the content of each column in a specified table](./scripts/data_lifecycle/get-content-of-each-column-in-a-specified-table.sql)
* [Max data length](./scripts/data_lifecycle/max-data-length.sql)
* [Number of tables per schema](./scripts/data_lifecycle/number-of-tables-per-schema.sql)
* [Tables that have no documentation in the extended properties](./scripts/data_lifecycle/tables-without-documentation-in-extended-properties.sql)
* [Using a column in a database](./scripts/data_lifecycle/using-a-column-in-a-database.sql)
* [Impact analysis](./scripts/data_lifecycle/impact-analysis.sql)

### Stored Procedures

* [Execute instructions stored in database](./scripts/stored_procedures/execute-instructions-stored-in-database.sql)
* [Retrieve all stored procedures](./scripts/stored_procedures/retrieve-all-stored-procedures.sql)

### BCP

* [Generate the bcp instruction for a table](./scripts/bcp/generate-bcp-instruction-for-a-table.sql)
* [Generate the bcp instruction from all the tables in the database](./scripts/bcp/generate-bcp-instruction-for-all-the-tables-in-db.sql)

### View

* [Retrieve the composition of a view](./scripts/view/view-composition.sql)

### Audit

* [Returns the available space of the server](./scripts/audit/available-space.sql)
* [Returns the date of the last backup performed](./scripts/audit/last-backup-date.sql)
* [Memory usage check](./scripts/audit/memory-usage-check.sql)
* [Number of rows and spaces (allocated, used, unused) of tables](./scripts/audit/number-rows-and-table-space.sql)
* [Retrieve system information from the RDBMS](./scripts/audit/rdbms-system-informations.sql)
* [SQL Server 2012 Diagnostic Information Queries](./scripts/audit/sqlserver-2012-diagnostic-information.sql)
* [Compute statistics](./scripts/audit/compute-statistics.sql)
* [Detailed index fragmentation](./scripts/audit/detailed-index-fragmentation.sql)
* [Limited index fragmentation](./scripts/audit/limited-index-fragmentation.sql)
* [Volumetry](./scripts/audit/volumetry.sql)
* [The latest modifications made to the database](./scripts/audit/latest-modification-made.sql)
* [Top 20 longest queries](./scripts/audit/top-20-longest-queries.sql)
* [Get the optimal set of columns that compose PK](./scripts/audit/optimal-set-of-columns.sql)

## Useful links

* [Cycles Adventure Works](https://docs.microsoft.com/fr-fr/previous-versions/sql/sql-server-2008/ms124825(v=sql.100)?redirectedfrom=MSDN) - MS SQL Server DB sample
* [Adventure Works](https://docs.microsoft.com/fr-fr/previous-versions/sql/sql-server-2008/ms124501(v=sql.100)?redirectedfrom=MSDN) - MS SQL Server DB sample
* [SQL Authority](https://blog.sqlauthority.com/) - One of my references in SQL
* [SQL Server Maintenance Solution](https://ola.hallengren.com/) - SQL Server Backup, Integrity Check, and Index and Statistics Maintenance made by [Ola Hallengren](https://github.com/olahallengren)

## Useful repositories

* [Ola Hallengren](https://github.com/olahallengren)

## Tomorrow I will learn

* [Convert to MS Access](https://www.sqlserverlogexplorer.com/convert-database-to-ms-access-mdb/)
* [tSQLt](https://tsqlt.org/) - An open source database unit testing framework for SQL Server
* [MSSQL Exporter](https://github.com/DanielOliver/mssql_exporter)
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
