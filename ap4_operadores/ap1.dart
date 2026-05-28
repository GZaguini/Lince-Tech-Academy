void main(){
// Lista de anos para verificar
final anos = [2016,1988,2000,2100,2300,1993];


// Verificar cada ano e imprimir o resultado
for ( var ano in anos ){
        print(ehAnoBissexto(ano) ? 'O Ano $ano é bissexto' : 'O Ano $ano não é bissexto');
}

}
// Função para verificar se um ano é bissexto
bool ehAnoBissexto (int ano){
    // Verifica se o ano terma em 00
    if( ano % 100 == 0 ){
        // Se terminar em 00, deve ser divisível por 400 para ser bissexto
        return ano % 400 == 0;
    } else {
        // Se não terminar em 00, deve ser divisível por 4 para ser bissexto
        return ano % 4 == 0;
    }
}
