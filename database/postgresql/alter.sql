
-- Add a new Foreign Key in a existing table
ALTER TABLE tb_name ADD CONSTRAINT fk_constraint_name FOREIGN KEY (attr_tb_name) REFERENCES tb_referenced(attr_pk);

-- Rename a Table
ALTER TABLE tb_old_name RENAME TO tb_new_name;

-- Rename an Attribute
ALTER TABLE tb_name RENAME COLUMN attr_old_name TO attr_new_name;

-- Drop a NOT NULL constraint
ALTER TABLE tb_name  ALTER COLUMN attr_name DROP NOT NULL;

-- Add a NOT NULL constraint
ALTER TABLE tb_name ALTER COLUMN attr_name SET NOT NULL;

-- Add a UNIQUE constraint 
ALTER TABLE tb_name ADD CONSTRAINT tb_name_unique_check UNIQUE (attr_one, attr_two);

-- Add a Primary Key
ALTER TABLE distributors ADD PRIMARY KEY (dist_id);

alter table questao_mental_anki alter flag set default true;


-- Reset/Restart a sequence of specified name on specific value
-- The value cannot be 0, the minimum value is 1
ALTER SEQUENCE sequence_name RESTART WITH 105;

-- drop trigger linked to a table
DROP TRIGGER kit_config_unique ON kit_config;
ALTER TABLE table_name DROP CONSTRAINT some_name;

alter table time alter value set data type decimal(6,2);
