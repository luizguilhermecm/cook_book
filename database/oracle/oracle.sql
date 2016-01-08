-- fetch all tables based on name and owner
SELECT owner, table_name
  FROM dba_tables 
  WHERE table_name like 'DED%' 
  AND owner = 'SADA' 
  ORDER BY table_name


-- select all columns of tables with a name and owner
SELECT table_name || ' : ' || column_name
FROM   all_tab_cols
where table_name like 'DED172%'
and owner = 'SADA'
order by 1

-- limit of postgres in oracle
SELECT * FROM table_name WHERE rownum < 20;

