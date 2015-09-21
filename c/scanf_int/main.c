/* A função scanf retorna um número inteiro quando chamada, esse número 
 * representa a quantidade de itens capturados/lidos compatíveis com o tipo 
 * esperado.
 * Então, se você quer ler um inteiro, se o usuário entrar com "asdf", o scanf
 * irá retornar 0, pois a entrada não era compatível. Se o usuário entrar com 
 * qualquer número (ex: 845784), o scanf irá retornar 1.
 *
 * Caso você use o scanf para ler mais de uma variável/entrada do usuário, o 
 * scanf vai retornar o número de entradas compatíveis que foi feita.
 */
#include <stdio.h>


/* Uma forma de fazer é usar o scanf como condição em um if e verificando se o 
 * retorno é igual ao número de itens que você pretendia ler.
 */
void versao1() {
    int numero;
    printf("Digite um numero: ");
    if (scanf("%d", &numero) == 1) {
        printf("O numero digitado foi: %d \n", numero);
    } else {
        printf("Entrada inválida\n");
    }
}

/* Outra forma de fazer é criar um int para receber o retorno da chamada do 
 * scanf, e então comparar esse retorno usando if.
 */
void versao2() {
    int numero;
    printf("Digite um numero: ");
    int retorno = scanf("%d", &numero) == 1;

    if (retorno == 1) {
        printf("O numero digitado foi: %d \n", numero);
    } else {
        printf("Entrada inválida\n");
    }
}

int main()
{
    versao1();
    versao2();
}

