-- Insert using SELEC
INSERT INTO tb_name (attr1, attr2) 
    SELECT attr1a, attr2a FROM tb_name_b;


-- Insert if do not exists
INSERT INTO tb_name (attr1, attr2)
    SELECT vlr_attr1, vlr_attr2
        WHERE
        NOT EXISTS (
            SELECT 1 FROM tb_name WHERE attr_condition = condition
        );


-- Insert if don't exists OR Update if exists
UPDATE tb_name SET field='something' WHERE id=1;
INSERT INTO tb_name (id, field)
    SELECT 1, 'something' -- the number os column on select has to match the number os attr on insert into 
        WHERE 
        NOT EXISTS (SELECT 1 FROM tb_name WHERE id=2);
