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
