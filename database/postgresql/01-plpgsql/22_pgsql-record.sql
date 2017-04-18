-- -h localhost -U snk -d kit

DO $$
<<example_using_record_variable>> -- optional in single blocks
DECLARE
    r record;
BEGIN
    select 'luiz' as nome, 27 as idade, now() as data into r;

    RAISE NOTICE 'RECORD data inserted with select into r';
    RAISE NOTICE 'nome: %', r.nome;
    RAISE NOTICE 'idade: %', r.idade;
    RAISE NOTICE 'data: %', r.data;
   
    RAISE INFO 'Record data:\n\tnome: %\n\tidade: %\n\tdata: %', r.nome, r.idade, r.data;

    RAISE NOTICE 'r: %', r;

    RAISE NOTICE 'r: %', example_using_record_variable.r.nome;

END example_using_record_variable $$;

