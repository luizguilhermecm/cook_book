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

-- get next value of sequence
SELECT sequence_name.nextval FROM dual;

-- get current value of sequence
SELECT seq.currval FROM dual

SELECT *
  FROM dba_sequences 
  WHERE sequence_name like '%RSDBSELGL_ID%' 
  AND sequence_owner = 'SADA'


-- COMMIT transactions like update, insert
INSERT INTO regions VALUES (5, 'Antarctica');
COMMIT WORK;
 
