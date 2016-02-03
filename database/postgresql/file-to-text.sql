create table maps ( 
texto text,
nome varchar);


--SHOW data_directory

SELECT CAST(pg_read_file(E'atxt/acronimos.txt' ,0, 100000000) AS TEXT);

insert into maps(texto, nome) values ((SELECT CAST(pg_read_file(E'atxt/acronimos.txt' ,0, 100000000) AS TEXT)), 'acronimos');