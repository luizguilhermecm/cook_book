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

-- SELECT ALL FOREING KEYS  
select
c.CONSTRAINT_NAME, c.TABLE_NAME, a.COLUMN_NAME
FROM all_cons_columns a
join all_constraints c on c.CONSTRAINT_NAME = a.CONSTRAINT_NAME 
where a.table_name like 'RQSDE_%'
and c.constraint_type = 'R'


-- command window
execute DBMS_MVIEW.REFRESH( LIST => 'SADA.MV_RQSDE_ACESSO', METHOD => 'C' );

-- last update time of materialized view
SELECT owner, mview_name, last_refresh_date
  FROM all_mviews
 WHERE mview_name like 'MV_RQ%'

-- the next refresh of materialized view or something else.
SELECT rowner, rname, next_date
  FROM all_refresh
 WHERE rname like 'MV_RQ%'


-- get source code of procedures and functions
-- WHERE TYPE IN:
--    FUNCTION
--    JAVA SOURCE
--    PACKAGE
--    PACKAGE BODY
--    PROCEDURE
--    TRIGGER
--    TYPE
--    TYPE BODY
SELECT *
  FROM all_source
 WHERE type = 'PROCEDURE'
  AND owner = 'FOO'
ORDER  BY line;

-- get triggers and sequence of table
select tabs.table_name,
  trigs.trigger_name,
  seqs.sequence_name
from dba_tables tabs
join dba_triggers trigs
  on trigs.table_owner = tabs.owner
  and trigs.table_name = tabs.table_name
join dba_dependencies deps
  on deps.owner = trigs.owner
  and deps.name = trigs.trigger_name
join dba_sequences seqs
  on seqs.sequence_owner = deps.referenced_owner
  and seqs.sequence_name = deps.referenced_name
where tabs.owner = 'SADA'
and tabs.table_name like 'FRQ_TIPO%';

-- cast date
data_inicial = to_date('30/12/2015','dd/mm/yyyy')

-- tornar nullable
alter table sada.ejud_andamento_requerimento modify (MOTIVO null);

ALTER USER luizmartins IDENTIFIED BY novasenha;
