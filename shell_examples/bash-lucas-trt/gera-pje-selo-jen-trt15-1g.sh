#!/bin/bash

# Enderecos de e-mails para avisos
emails="sabd.citic@trt15.jus.br estatistica.presidencia@trt15.jus.br bravo.cds@trt15.jus.br"

# Mes anterior ao atual
month_names=(Dezembro Janeiro Fevereiro Março Abril Maio Junho Julho Agosto Setembro Outubro Novembro)
# Mes atual
current_month=`date "+%m"`
# Ano que vai no nome do diretorio com os resultados
dir_year=`date -d "$current_month/1 - 1 day" "+%Y"`

# Particionador dos arquivos xml em lotes
file_splitter=Separador/SeparadorDeArquivosPJE.jar

# Servidor remoto para onde vão os arquivos xml com os resultados
file_server=sancho

# Primeiro grau
# Diretorio onde serao colocados os arquivos xml com os resultados para Estatistica acessar
dir1g="/storage/dados/2grau/presidencia/TECNICO/Arquivos XML Físicos 1G/PJe/Mensal/${month_names[$(($current_month - 1))]}-$dir_year/"
# Nome da base de dados de onde as informacoes serao extraidas
database1g=pje_1grau
# Nome do arquivo sql que faz a extracao dos dados
sql1g_filename=SQL/Script_1G.sql

# Diretorio temporario para criar os arquivos
tmp_dir=`mktemp -d`

# Processamento para o primeiro grau
# Executa somente se o diretorio de resultado nao existir (evita sobrescrita)
ssh $file_server [ -d \"$dir1g\" ]
if [ $? -eq 1 ];then
   
   ssh $file_server "mkdir \"$dir1g\""
   
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao criar o diretório do mês na pasta compartilhada.\\r\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Selo Jen PJe Mensal 1G" $emails
        rmdir $tmp_dir
		exit 1
   fi
   
   data_arquivo=`date -d "$current_month/1 - 1 day" "+%d%m%Y"`
   output_sql_filename="TRT15_G1_${data_arquivo}_PJE.xml"
   
   psql -d $database1g -f $sql1g_filename &> $tmp_dir/$output_sql_filename
   sed -r -i '/^psql/!d' $tmp_dir/$output_sql_filename
   sed -r -i 's/[^<]+(.+)/\1/g' $tmp_dir/$output_sql_filename
   
   tail $tmp_dir/$output_sql_filename | grep "</cnj:intercomunicacao>"
   
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao extrair as informações do banco de dados.\\r\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Selo Jen PJe Mensal 1G" $emails
        rm $tmp_dir/$output_sql_filename
		rmdir $tmp_dir
		exit 1
   fi
   
   java -jar $file_splitter $tmp_dir/$output_sql_filename

   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao dividir o arquivo gerado em arquivos xml menores.\\r\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Selo Jen PJe Mensal 1G" $emails
        rm $tmp_dir/*.xml
		rmdir $tmp_dir
		exit 1
   fi

   rm $tmp_dir/$output_sql_filename
   for f in $tmp_dir/*.xml
   do
      scp $f $file_server:$dir1g

      if [ $? -ne 0 ]; then
          echo -e "Ocorreu algum erro ao enviar os arquivos xml para a pasta compartilhada.\\r\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Selo Jen PJe Mensal 1G" $emails
          rm $tmp_dir/*.xml
		  rmdir $tmp_dir
		  exit 1
      fi

	  rm $f
   done

   echo -e "Carga do Selo Jen PJe Mensal 1G efetuada com sucesso." | mail -s "Carga do Selo Jen PJe Mensal 1G efetuada com sucesso" $emails
   
else
   
   echo -e "O diretório do mês já existe na pasta compartilhada para o primeiro grau.\\r\\nProvavelmente a carga do mês já tenha sido executada anteriormente.\\r\\nVerifique o conteúdo do diretório e, caso necessário, apague o diretório e solicite nova carga." | mail -s "Falha na carga do Selo Jen PJe Mensal 1G" $emails
   
fi

rmdir $tmp_dir

