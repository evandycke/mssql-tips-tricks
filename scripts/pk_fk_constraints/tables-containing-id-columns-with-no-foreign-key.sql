-- D�tails de toutes les FK de la base de donn�es
WITH ForeignKeyTable(CONSTRAINT_NAME, FK_TABLE_CATALOG, FK_TABLE_SCHEMA, FK_TABLE_NAME, FK_COLUMN_NAME, PK_TABLE_CATALOG, PK_TABLE_SCHEMA, PK_TABLE_NAME, PK_COLUMN_NAME) AS
(SELECT
	REF_CONST.CONSTRAINT_NAME,
	FK.TABLE_CATALOG,
	FK.TABLE_SCHEMA,
	FK.TABLE_NAME,
	FK_COLS.COLUMN_NAME,
	PK.TABLE_CATALOG,
	PK.TABLE_SCHEMA,
	PK.TABLE_NAME,
	PK_COLS.COLUMN_NAME
FROM
	INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS REF_CONST
INNER JOIN 
	INFORMATION_SCHEMA.TABLE_CONSTRAINTS FK
	ON REF_CONST.CONSTRAINT_CATALOG = FK.CONSTRAINT_CATALOG
	AND REF_CONST.CONSTRAINT_SCHEMA = FK.CONSTRAINT_SCHEMA
	AND REF_CONST.CONSTRAINT_NAME = FK.CONSTRAINT_NAME
	AND FK.CONSTRAINT_TYPE = 'FOREIGN KEY'
INNER JOIN 
	INFORMATION_SCHEMA.TABLE_CONSTRAINTS PK 
	ON REF_CONST.UNIQUE_CONSTRAINT_CATALOG = PK.CONSTRAINT_CATALOG
	AND REF_CONST.UNIQUE_CONSTRAINT_SCHEMA = PK.CONSTRAINT_SCHEMA
	AND REF_CONST.UNIQUE_CONSTRAINT_NAME = PK.CONSTRAINT_NAME
	AND PK.CONSTRAINT_TYPE = 'PRIMARY KEY'
INNER JOIN 
	INFORMATION_SCHEMA.KEY_COLUMN_USAGE FK_COLS 
	ON REF_CONST.CONSTRAINT_NAME = FK_COLS.CONSTRAINT_NAME
INNER JOIN 
	INFORMATION_SCHEMA.KEY_COLUMN_USAGE PK_COLS 
	ON PK.CONSTRAINT_NAME = PK_COLS.CONSTRAINT_NAME 
	AND FK_COLS.ORDINAL_POSITION = PK_COLS.ORDINAL_POSITION)

-- D�tails des tables
SELECT
	C.TABLE_CATALOG,
	C.TABLE_SCHEMA,
	C.TABLE_NAME,
	C.COLUMN_NAME,
	FK.CONSTRAINT_NAME,
	FK.PK_TABLE_CATALOG,
	FK.PK_TABLE_SCHEMA,
	FK.PK_TABLE_NAME,
	FK.PK_COLUMN_NAME
FROM
	INFORMATION_SCHEMA.COLUMNS C
INNER JOIN
	INFORMATION_SCHEMA.TABLES T
	ON T.TABLE_CATALOG = C.TABLE_CATALOG
	AND T.TABLE_NAME = C.TABLE_NAME
	AND T.TABLE_SCHEMA = C.TABLE_SCHEMA
	AND T.TABLE_TYPE NOT IN ('VIEW') -- On ne traite que les tables
LEFT OUTER JOIN
	ForeignKeyTable FK
	ON FK.FK_TABLE_CATALOG = C.TABLE_CATALOG
	AND FK.FK_TABLE_SCHEMA = C.TABLE_SCHEMA
	AND FK.FK_TABLE_NAME = C.TABLE_NAME
	AND FK.FK_COLUMN_NAME = C.COLUMN_NAME
WHERE
	C.COLUMN_NAME LIKE 'ID[_]%' -- Toutes les colonnes commencant par ID
	AND FK.CONSTRAINT_NAME IS NULL -- Toutes les colonnes qui ne sont pas retrouv�es dans une contrainte FK
	AND C.TABLE_SCHEMA IN ('SCHEMA1','SCHEMA2');