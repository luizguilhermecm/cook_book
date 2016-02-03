-- select the number inside of a string
SELECT qid, substring(qid FROM '[0-9]+') from questions limit 100

CREATE INDEX my_index ON my_table USING btree(a_column);


# restore a backup of one table
/Applications/pgAdmin3.app/Contents/SharedSupport/pg_restore --host localhost --port 5432 --username "postgres" --dbname "database" --no-password  --data-only --table fr_frase --schema public --verbose "/Users/snk/Desktop/2015_12_11_fr_frase.backup"
