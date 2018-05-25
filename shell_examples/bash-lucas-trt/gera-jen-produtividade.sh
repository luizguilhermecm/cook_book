#!/bin/bash

# Enderecos de e-mails para avisos
emails="sabd.citic@trt15.jus.br estatistica.presidencia@trt15.jus.br bravo.cds@trt15.jus.br"

# Mes anterior ao atual
month_names=(Dezembro Janeiro Fevereiro Março Abril Maio Junho Julho Agosto Setembro Outubro Novembro)
# Mes atual
current_month=`date "+%m"`
# Ano que vai no nome do diretorio com os resultados
dir_year=`date -d "$current_month/1 - 1 day" "+%Y"`

# Gerador e conversor de planilhas xls
xls_generator=GeradorXLS.jar
csv_xls_converter=csvtoxls.jar

# Servidor remoto para onde vão os arquivos xls com os resultados
file_server=sancho

# Diretorio onde serao colocados os arquivos xls com os resultados para Estatistica acessar
dir_result="/storage/dados/2grau/presidencia/TECNICO/Arquivos XML Físicos 1G/PJe/Mensal/${month_names[$(($current_month - 1))]} $dir_year/"
# Nome da base de dados de onde as informacoes serao extraidas
database_name=una
# Usuario da base de dados de onde as informacoes serao extraidas
database_user=ap
# Senha da base de dados de onde as informacoes serao extraidas
database_password=tokio

# Nome do arquivo sql que faz a contagem
sql_contagem=SQL/gera-contagem.sql

# Nomes dos arquivos sql que fazem a geracao das planilhas xls
sql_planilha_passo1=SQL/gera-planilha-passo1.sql
sql_planilha_passo2=SQL/gera-planilha-passo2.sql
sql_planilha_passo3=SQL/gera-planilha-passo3.sql

# Diretorio temporario para criar os arquivos
tmp_dir=`mktemp -d` #####################################

# Executa somente se o diretorio de resultado nao existir (evita sobrescrita)
if [ ! ssh $file_server "[ -d \"$dir_result\" ]" ]; then

   ssh $file_server "mkdir \"$dir_result\""
   
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao criar o diretório do mês na pasta compartilhada.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rmdir $tmp_dir
		exit 1
   fi
   
   output=`sqlplus $database_user/$database_password@$database_name @$sql_contagem`
   
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao efetuar a contagem.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rmdir $tmp_dir
		exit 1
   fi
   
   echo -e "$output" | grep "Contagem efetuada com sucesso!"

   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao efetuar a contagem.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rmdir $tmp_dir
		exit 1
   fi

   sqlplus $database_user/$database_password@$database_name @$sql_planilha_passo1 > $tmp_dir/Passo1.csv

   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
		rmdir $tmp_dir
		exit 1
   fi
   
   if [ ! -s $tmp_dir/Passo1.csv ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
        rmdir $tmp_dir
		exit 1
   fi

   sqlplus $database_user/$database_password@$database_name @$sql_planilha_passo2 > $tmp_dir/Passo2.csv

   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
		rmdir $tmp_dir
		exit 1
   fi

   if [ ! -s $tmp_dir/Passo2.csv ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
        rmdir $tmp_dir
		exit 1
   fi

   sqlplus $database_user/$database_password@$database_name @$sql_planilha_passo3 > $tmp_dir/Passo3.csv

   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
		rmdir $tmp_dir
		exit 1
   fi

   if [ ! -s $tmp_dir/Passo3.csv ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rmdir $tmp_dir
		exit 1
   fi

   java -jar $csv_xls_converter $tmp_dir/Passo1.csv $tmp_dir/Passo1.xls
   
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
		rm $tmp_dir/*.xls
		rmdir $tmp_dir
		exit 1
   fi
   
   if [ ! -s $tmp_dir/Passo1.xls ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
		rm $tmp_dir/*.xls
        rmdir $tmp_dir
		exit 1
   fi

   java -jar $csv_xls_converter $tmp_dir/Passo2.csv $tmp_dir/Passo2.xls
   
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
		rm $tmp_dir/*.xls
		rmdir $tmp_dir
		exit 1
   fi
   
   if [ ! -s $tmp_dir/Passo2.xls ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
		rm $tmp_dir/*.xls
        rmdir $tmp_dir
		exit 1
   fi

   java -jar $csv_xls_converter $tmp_dir/Passo3.csv $tmp_dir/Passo3.xls
   
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
		rm $tmp_dir/*.xls
		rmdir $tmp_dir
		exit 1
   fi
   
   if [ ! -s $tmp_dir/Passo3.xls ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
        rm $tmp_dir/*.csv
		rm $tmp_dir/*.xls
        rmdir $tmp_dir
		exit 1
   fi
   
   rm $tmp_dir/*.csv

   last_month=`date -d "$current_month/1 - 1 day" "+%m"`
   first_day_last_month=`date -d "$last_month/1" "+%d/%m/%Y"`
   last_day_last_month=`date -d "$current_month/1 - 1 day" "+%d/%m/%Y"`
   java -jar $xls_generator $first_day_last_month $last_day_last_month $tmp_dir/

   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
		rm $tmp_dir/*.xls
		rmdir $tmp_dir
		exit 1
   fi

   mv $tmp_dir/arquivoMagistrado_*.xls $tmp_dir/Passo4.xls
   
   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
		rm $tmp_dir/*.xls
		rmdir $tmp_dir
		exit 1
   fi
   
   if [ ! -s Passo4.xls ]; then
        echo -e "Ocorreu algum erro ao gerar as planilhas xls.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
		rm $tmp_dir/*.xls
        rmdir $tmp_dir
		exit 1
   fi
   
   scp $tmp_dir/Passo1.xls $tmp_dir/Passo2.xls $tmp_dir/Passo3.xls $tmp_dir/Passo4.xls $file_server:"'$dir_result'"

   if [ $? -ne 0 ]; then
        echo -e "Ocorreu algum erro ao enviar os arquivos xls para a pasta compartilhada.\\nContate o responsável pela carga automática para verificar o problema." | mail -s "Falha na carga do Jen Produtividade" $emails
	    rm $tmp_dir/*.xls
	    rmdir $tmp_dir
	    exit 1
   fi
   
   echo -e "Carga do Jen Produtividade efetuada com sucesso." | mail -s "Carga do Selo Jen PJe Mensal 1G efetuada com sucesso" $emails

else
   
   echo -e "O diretório do mês já existe na pasta compartilhada.\\nProvavelmente a carga do mês já tenha sido executada anteriormente.\\nVerifique o conteúdo do diretório e, caso necessário, apague o diretório e solicite nova carga." | mail -s "Falha na carga do Jen Produtividade" $emails
   
fi

rmdir $tmp_dir

