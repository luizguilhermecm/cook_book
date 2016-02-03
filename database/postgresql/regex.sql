-- busca todas as palavras e depois lista as com duas letras maiusculas seguidas
with words as (
    select distinct regexp_split_to_table(enunciado , E'\\W+') as word
    from questoes where banca = 'FCC' and disciplina like 'Redes%' 
--limit 500
) select word from words where word ~ '[A-Z]{2}' order by 1


-- return the number of words of a string
select array_length(regexp_split_to_array('j''ai vu', E'\\s+'), 1)

-- split the words of a string into a text array
select regexp_split_to_array('j''ai vu', E'\\s+')

-- return the last word of a string
select regexp_replace('string para teste', '^.* ', '')

-- split words even when has '
select regexp_split_to_table(conj , E'\\s+') as word
    from fr_verbos_conj

select regexp_split_to_table(lower(frase) , E'[\\s,\\.\\?\\-\\:\\d\\[\\]\\"\\!\\<\\>\\=\\%\\$\\@\\{\\}\\+\\*\\(\\)]+') as word
