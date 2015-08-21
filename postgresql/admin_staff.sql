


-- All tables in a specifica database and schema.
SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

-- Select the name of all database
SELECT datname FROM pg_database;

-- Columns of a specfic table
SELECT column_name FROM information_schema.columns WHERE table_name = 'tb_name';
