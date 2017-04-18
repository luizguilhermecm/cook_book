-- -h localhost -U snk -d kit


DO $$
<<snk>> 
DECLARE
    a integer;
    b varchar;
    c text;

BEGIN
    select into now now();

    RAISE NOTICE 'now %', now;

    RAISE NOTICE 'snk.now %', snk.now;

    RAISE INFO
        USING MESSAGE = 'raised info message text',
        HINT = 'a hint message',
        DETAIL = 'some detail';

    RAISE 'Duplicate user ID: %', 33 USING ERRCODE = '23505';
    
END snk $$;

/*

DO $$ 
<<outer_block>>
DECLARE
  counter integer := 0;
BEGIN 
   counter := counter + 1;
   RAISE NOTICE 'The current value of counter is %', counter;
 
   DECLARE 
       counter integer := 0;
   BEGIN 
       counter := counter + 10;
       RAISE NOTICE 'The current value of counter in the subblock is %', counter;
       RAISE NOTICE 'The current value of counter in the outer block is %', outer_block.counter;
   END;
 
   RAISE NOTICE 'The current value of counter in the outer block is %', counter;
   
END outer_block $$;

*/
