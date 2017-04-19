insert into tb_tabela (id, attr1, attr2, attr3)
  select  sequence_name.nextval -- valor do id
          , 'valor_fixo' -- valor do attr1
          , alias_do_from.* 
  FROM (
          select 'valor do attr2', 'valor do attr3' from dual union all
          select 'valor do attr2', 'valor do attr3' from dual union all
          select 'valor do attr2', 'valor do attr3' from dual 
      ) alias_do_from;
commit work;
