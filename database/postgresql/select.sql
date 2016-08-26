-- Return one row with '1' content if the select inside match something. 
-- If nothing is found, will return no-row result.
SELECT 1
WHERE EXISTS
    (SELECT 1
     FROM target_table
     WHERE attr1 = TRUE
       AND attr2 = 'XXX'
       AND attr3 = 'cookbook');

-- Return one row with '1' content if the select inside do not match nothring. 
-- If some row is found, will return a no-row result.
SELECT 1
WHERE NOT EXISTS
    (SELECT 1
     FROM target_table
     WHERE attr1 = TRUE
       AND attr2 = 'XXX'
       AND attr3 = 'cookbook');

-- Select using WITH
-- FROM postgres doc:
-- 7.8. WITH Queries (Common Table Expressions)
-- WITH provides a way to write subqueries for use in a larger SELECT query.
-- The subqueries, which are often referred to as Common Table Expressions or
-- CTEs, can be thought of as defining temporary tables that exist just for
-- this query. One use of this feature is to break down complicated queries
-- into simpler parts. An example is:


with param AS ( 
    select  'first of all'::text as word
)
select 'en_words | ' || (select word from param)::text || ' | count | ', count(*) 
from en_words where word like '%' || (select word from param)::text || '%' ;
