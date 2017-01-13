if [ $# -eq 0 ]; then
    echo "usage:\n\t./copy [month]\t\tCreate a template folder with files using the given param, example:";
    echo "\t\t\t\t$./copy 11";
    echo "\t\t\t\tWould be created the november template files:";
    echo "\t\t\t\t\t2016-11";
    echo "\t\t\t\t\t2016-11/2016-11_aluguel.pdf";
    echo "\t\t\t\t\t2016-11/2016-11_balancete-condominio.pdf";
    echo "\t\t\t\t\t2016-11/2016-11_condominio.pdf";
    echo "\t\t\t\t\t2016-11/2016-11_cpfl.pdf";
    echo "\t\t\t\t\t2016-11/2016-11_vivo-internet.pdf"; 
    echo "\n";
else              
    mkdir 2016-$1;
    touch 2016-$1/2016-$1_aluguel.pdf;
    touch 2016-$1/2016-$1_balancete-condominio.pdf;
    touch 2016-$1/2016-$1_condominio.pdf;
    touch 2016-$1/2016-$1_cpfl.pdf;
    touch 2016-$1/2016-$1_vivo-internet.pdf;
fi;

