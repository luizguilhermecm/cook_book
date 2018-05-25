#!/bin/bash

# Enderecos de e-mails para avisos
emails="sabd.citic@trt15.jus.br estatistica.presidencia@trt15.jus.br bravo.cds@trt15.jus.br"

# Mes anterior ao atual
month_names=(Dezembro Janeiro Fevereiro Março Abril Maio Junho Julho Agosto Setembro Outubro Novembro)
# Mes atual
current_month=`date "+%m"`
# Ano atual
current_year=`date "+%Y"`

# Particionador dos arquivos xml em lotes
file_splitter=Separador/SeparadorDeArquivosPJE.jar

# Servidor remoto para onde vão os arquivos xml com os resultados
file_server=sancho

# Segundo grau
# Diretorio onde serao colocados os arquivos xml com os resultados para Estatistica acessar
dir2g="'/storage/dados/2grau/presidencia/TECNICO/Arquivos XML Físicos 2G/PJe/Mensal/${month_names[$(($current_month - 1))]} $current_year/'"
#dir2g="'/tmp/jen/2g/${month_names[$(($current_month - 1))]} $current_year/'"

# Nome da base de dados de onde as informacoes serao extraidas
database2g=pje_2grau
# Nome do arquivo sql que faz a extracao dos dados
sql2g_filename=SQL/Script_2G.sql

# Diretorio temporario para criar os arquivos
tmp_dir=`mktemp -d -p /u00`

# Processamento para o segundo grau
# Executa somente se o diretorio de resultado nao existir (evita sobrescrita)
ssh $file_server [ -d "$dir2g" ]
if [ $? -eq 1 ];then
   ssh $file_server "mkdir $dir2g"
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao criar o diretório do mês na pasta compartilhada. \\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Selo Jen PJe Mensal 2G" $emails
        rmdir $tmp_dir
		exit 1
   fi

   data_arquivo=`date -d "$current_month/1 - 1 day" "+%d%m%Y"`
   output_sql_filename="TRT15_G2_${data_arquivo}_PJE.xml"
   psql -d $database2g -f $sql2g_filename &> $tmp_dir/$output_sql_filename
   sed -r -i '/^psql/!d' $tmp_dir/$output_sql_filename
   sed -r -i 's/[^<]+(.+)/\1/g' $tmp_dir/$output_sql_filename
	
   tail $tmp_dir/$output_sql_filename | grep "</cnj:intercomunicacao>"
   
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao extrair as informações do banco de dados. \\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Selo Jen PJe Mensal 2G" $emails
        rm $tmp_dir/$output_sql_filename
		rmdir $tmp_dir
		exit 1
   fi

   scp $tmp_dir/$output_sql_filename $file_server:"$dir2g"

   if [ $? -ne 0 ]; then
	   echo -e "Ocorreu algum erro ao enviar o arquivo xml para a pasta compartilhada. \\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Selo Jen PJe Mensal 2G" $emails
	   rm $tmp_dir/$output_sql_filename
	   rmdir $tmp_dir
	   exit 1
   fi   

   rm $tmp_dir/$output_sql_filename

#Envia e-mail com mensagem de sucesso
echo -e "Carga do Selo Jen PJe Mensal 2G efetuada com sucesso." | mail -s "Carga do Selo Jen PJe Mensal 2G efetuada com sucesso" $emails

else

   echo -e "O diretório do mês já existe na pasta compartilhada para o segundo grau. \\nProvavelmente a carga do mês já tenha sido executada anteriormente. \\nVerifique o conteúdo do diretório e, caso necessário, apague o diretório e a solicite nova carga." | mail -s "Falha na carga do Selo Jen PJe Mensal 2G" $emails
   
fi

rmdir $tmp_dir

