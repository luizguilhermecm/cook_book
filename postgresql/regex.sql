-- busca todas as palavras e depois lista as com duas letras maiusculas seguidas
with words as (
    select distinct regexp_split_to_table(enunciado , E'\\W+') as word
    from questoes where banca = 'FCC' and disciplina like 'Redes%' 
--limit 500
) select word from words where word ~ '[A-Z]{2}' order by 1
