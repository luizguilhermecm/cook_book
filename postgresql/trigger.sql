-- To drop a trigger it is necessary to specify from which table it
-- will be droped
--drop trigger trigger_name on table_name;

-- To drop a function
-- drop function kit_config_unique();

CREATE FUNCTION kit_config_unique() RETURNS trigger AS $kit_config_unique$
DECLARE property RECORD;
	BEGIN
        FOR property IN 
            SELECT kc.property, kc.is_valid, kc.value, kc.is_unique
            FROM kit_config kc 
            WHERE upper(kc.property) = upper(NEW.property)
            AND kc.is_valid = TRUE
            LOOP
                IF NEW.is_unique = TRUE AND property.is_unique = true THEN
                    RAISE EXCEPTION 'debug message %', NEW.property;
                END IF;
            END LOOP;
        RETURN NEW;
    END;
$kit_config_unique$ LANGUAGE plpgsql;


-- Creating a new trigger to be triggered before insert or update on the table
CREATE TRIGGER kit_config_unique BEFORE INSERT OR UPDATE ON kit_config
    FOR EACH ROW EXECUTE PROCEDURE kit_config_unique();


