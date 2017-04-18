-- -h localhost -U snk -d kit

/*
CREATE OR REPLACE FUNCTION fn_template(p1 varchar, p2 integer, p3 boolean) RETURNS varchar
    AS $$
DECLARE
    ret varchar := '-1';
    i INTEGER;
    b boolean;
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
    fn_ret varchar := 'snk';
    p1 varchar := 'snk';
BEGIN
    RAISE INFO '-----------';
    p1 := 'first_call';

    fn_ret := fn_template(p1, -1, true); 

    RAISE INFO 'fn_ret for %: %', p1, fn_ret;
    RAISE INFO '-----------';
    p1 := '2nd';

    fn_ret := fn_template(p1, 1, true); 

    RAISE INFO 'fn_ret for %: %', p1, fn_ret;
    RAISE INFO '-----------';
    p1 := '3rd';

    fn_ret := fn_template(p1, 1, false); 

    RAISE INFO 'fn_ret for %: %', p1, fn_ret;
    RAISE INFO '-----------';
END $$;
