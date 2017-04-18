-- -h localhost -U snk -d kit
https://www.postgresql.org/docs/9.3/static/plpgsql-control-structures.html#PLPGSQL-ERROR-TRAPPING

/*
CREATE OR REPLACE FUNCTION fn_template(p1 varchar, p2 integer, p3 boolean) RETURNS varchar
    AS $$
DECLARE
BEGIN
    ret := $1;
    if $2 < 0 then 
        return 'this is a if using the second parameter';

    elsif $3 then 
        return 'if using the boolean (third parameter)';

    else 
        ret := 'the else statement as usual';

    end if;

    RETURN ret;

END;$$
    LANGUAGE plpgsql;

*/


DO $$
DECLARE 
    v1 varchar := 'snk';
    p1 varchar := 'snk';
    i integer;
BEGIN
    -- RAISE [ level ] SQLSTATE 'sqlstate' [ USING option = expression [, ... ] ];

    RAISE SQLSTATE '99001';
        -- USING MESSAGE = 'a text';

    i := 2/0;

EXCEPTION
    WHEN SQLSTATE '99001' THEN
        RAISE  '-- xxx99001';

    WHEN division_by_zero THEN 
        raise 'zero';
END $$;
