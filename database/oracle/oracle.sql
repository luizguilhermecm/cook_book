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


-- identificar qual o valor ASCII de um caracter para dpeois usar o CHR(asc_nb) em strings.
select ASCII('…') from dual;
select CHR(133) from dual;

-- lista conexões abertas
select pid,
       sid,
       b.serial#,
       b.machine,
       b.username,
       b.server,
       b.osuser,
       b.program
  from v$session b, v$process a
 where b.paddr = a.addr
   and type = 'USER'
 order by spid;
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

-- tabelas que fazem referencia a uma chave
SELECT a.table_name, a.column_name, a.constraint_name, c.owner, 
       -- referenced pk
       c.r_owner, c_pk.table_name r_table_name, c_pk.constraint_name r_pk
  FROM all_cons_columns a
  JOIN all_constraints c ON a.owner = c.owner
                        AND a.constraint_name = c.constraint_name
  JOIN all_constraints c_pk ON c.r_owner = c_pk.owner
                           AND c.r_constraint_name = c_pk.constraint_name
 WHERE c.constraint_type = 'R'
   AND a.COLUMN_NAME = 'MAT_SERVIDOR'
   and c_pk.TABLE_NAME = 'SERVIDOR'

-- System privileges for a user:
SELECT *
  FROM sys.dba_sys_privs
 WHERE grantee =  'USERNAME';
SELECT * 
  FROM dba_role_privs rp JOIN role_sys_privs rsp ON (rp.granted_role = rsp.role)
 WHERE rp.grantee = 'USERNAME'
 ORDER BY 1;
 
-- Direct grants to tables/views: 
 SELECT owner, table_name, select_priv, insert_priv, delete_priv, update_priv, references_priv, alter_priv, index_priv 
  FROM table_privileges
 WHERE grantee = 'USERNAME'
 ORDER BY owner, table_name;

-- Indirect grants to tables/views:

 SELECT DISTINCT * 
  FROM dba_role_privs rp JOIN role_tab_privs rtp ON (rp.granted_role = rtp.role)
 WHERE rp.grantee = 'USERNAME'
 ORDER BY owner, table_name;

SELECT * FROM V$VERSION
