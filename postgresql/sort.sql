-- select the number inside of a string
SELECT qid, substring(qid FROM '[0-9]+') from questions limit 100

CREATE INDEX my_index ON my_table USING btree(a_column);

