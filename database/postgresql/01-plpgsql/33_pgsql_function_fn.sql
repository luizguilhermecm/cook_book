-- -h localhost -U snk -d kit
--
-- CREATE FUNCTION array_to_char("array" integer[], "delimiter" character varying) RETURNS text
--     AS $_$DECLARE
--     out_arr_text    TEXT := '';
--     i           INTEGER;
-- BEGIN
--     FOR i IN array_lower($1, 1)..array_upper($1, 1)
--     LOOP
--         IF (i = array_lower($1, 1)) THEN
-- 		out_arr_text := out_arr_text || $1[i];
-- 	ELSE
-- 		out_arr_text := out_arr_text || $2 || $1[i];
-- 	END IF;
--     END LOOP;
--     RETURN out_arr_text;
--
-- END;$_$
--     LANGUAGE plpgsql;
--

DO $$
DECLARE 
    ret text;
BEGIN
    ret := array_to_char('{1,3}', ' + ');
    RAISE INFO 'ret: %', ret;
END $$;
