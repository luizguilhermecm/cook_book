
    -- Procedure to insert a new city
    CREATE OR REPLACE FUNCTION add_city(city VARCHAR(70), state CHAR(2)) 
    RETURNS void AS $$
    BEGIN
      INSERT INTO cities VALUES (city, state);
    END;
    $$ LANGUAGE plpgsql;
You can use SELECT statement to invoke the add_city procedure:

   -- Add a new city
   SELECT add_city('St.Louis', 'MO');
