-- -h localhost -U snk -d kit

/*
   CREATE OR REPLACE FUNCTION show_todo_list() RETURNS refcursor AS $$
    DECLARE
      ref refcursor;
    BEGIN
      OPEN ref FOR SELECT * FROM todo_list;
      RETURN ref;
    END;
    $$ LANGUAGE plpgsql;

*/


DO $$
DECLARE 
BEGIN
    show_todo_list;
END: