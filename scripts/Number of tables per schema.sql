SELECT 
	T.TABLE_SCHEMA AS NOM_SCHEMA, 
	COUNT(*) AS NOMBRE_TABLES 
FROM 
	DHB_PRD.INFORMATION_SCHEMA.TABLES T
WHERE 
	T.TABLE_TYPE = 'BASE TABLE'
	AND T.TABLE_SCHEMA NOT IN ('schema1','schema2')
GROUP BY 
	T.TABLE_SCHEMA

UNION ALL

SELECT 
	T.TABLE_SCHEMA AS NOM_SCHEMA, 
	COUNT(*) AS NOMBRE_TABLES 
FROM 
	REF_PRD.INFORMATION_SCHEMA.TABLES T
WHERE 
	T.TABLE_TYPE = 'BASE TABLE'
	AND T.TABLE_SCHEMA = 'schema3'
GROUP BY 
	T.TABLE_SCHEMA