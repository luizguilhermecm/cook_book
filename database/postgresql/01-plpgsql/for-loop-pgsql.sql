-- -h localhost -U snk -d kit

/*

[ <<label>> ]
FOR name IN [ REVERSE ] expression .. expression [ BY expression ] LOOP
    statements
END LOOP [ label ];
This form of FOR creates a loop that iterates over a range of integer values. The variable name is automatically defined as type integer and exists only inside the loop (any existing definition of the variable name is ignored within the loop). The two expressions giving the lower and upper bound of the range are evaluated once when entering the loop. If the BY clause isn't specified the iteration step is 1, otherwise it's the value specified in the BY clause, which again is evaluated once on loop entry. If REVERSE is specified then the step value is subtracted, rather than added, after each iteration.

Some examples of integer FOR loops:
*/

DO $$
DECLARE 
BEGIN

    FOR i IN 1..10 LOOP
        -- i will take on the values 1,2,3,4,5,6,7,8,9,10 within the loop
        -- raise notice '%', i;
    END LOOP;
    
    FOR i IN REVERSE 10..1 LOOP
        -- i will take on the values 10,9,8,7,6,5,4,3,2,1 within the loop
        -- raise notice '%', i;
    END LOOP;

    <<f1>>
    FOR i IN REVERSE 10..1 BY 2 LOOP
        -- i will take on the values 10,8,6,4,2 within the loop
        -- raise notice '%', f1.i;
    END LOOP f1;



    <<f1>>
    FOR i IN REVERSE 10..6 BY 2 LOOP
        -- i will take on the values 10,8,6,4,2 within the loop
        raise notice '%', f1.i;

        <<f2>>
        FOR i IN 1..2 LOOP
            -- i will take on the values 1,2,3,4,5,6,7,8,9,10 within the loop
            raise INFO '% - %', f1.i, f2.i;

            <<f3>>
            FOR i IN REVERSE 2..1 LOOP
                raise WARNING '% - % - %', f1.i, f2.i, f3.i;
            END LOOP f3;


        END LOOP f2;
 
    END LOOP f1;

END $$;
