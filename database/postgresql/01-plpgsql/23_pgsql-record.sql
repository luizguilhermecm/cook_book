-- -h localhost -U snk -d kit

DO $$
<<example_using_record_variable>> -- optional in single blocks
DECLARE
    r_table_like record;
    r_for record;
    r_into record;
    v_nome varchar;
BEGIN


    select 'luiz guilherme' as nome, 27 as idade, now() as data into r_table_like;

    FOR r_for IN
        select 'luiz'::varchar as nome, 27 as idade, now() as data
    LOOP
        -- for each record in r_for found by select above.
        RAISE NOTICE 'r_for: %', r_for;

        -- find a name like the one on r_for.name
        -- the from of select below is a 'pseudo table'
        -- with one row and matches 
        select t.nome::varchar 
            into v_nome 
            from (select    'luiz guilherme'::varchar as nome 
                                , 27 as idade
                                , now() as data 
                 ) t 
            where t.nome like '%'|| r_for.nome ||'%'
            limit 1;

        RAISE NOTICE 'v_nome: %', v_nome;

        if v_nome = r_for.nome then 
            RAISE NOTICE 'names are equals';
        else 
            RAISE WARNING 'names NOT equals';
        end if;


    END LOOP;

END example_using_record_variable $$;

