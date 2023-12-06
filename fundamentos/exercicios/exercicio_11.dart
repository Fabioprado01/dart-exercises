import 'dart:io';

  /**
   *  27 - Uma companhia telefônica opera com a seguinte tarifa: uma chamada telefônica com duração de 3 minutos custa R$1,15.
   *  Cada minuto adicional custa R$0,26. Escreva um programa que leia a duração total de uma chamada (em minutos) e calcule o
   *  total a ser pago.
   */

main() {
  print("Digite a duração total da chamada em minutos:");
  String? input = stdin.readLineSync();
  int chamada = int.parse(input!); //o valor "imput" deve ser diferente e nulo.
  
  const chamadaSimples = 1.15; // definindo a constante de chamada simples.
  const chamadaAdicional = 0.26; // definindo a constante do valor adicional 

  if (chamada >0 && chamada <= 3){ // se chamada for menor ou iguala 3
    double valor1 = chamadaSimples; // será o valor de chamada simples
    print ("O valor da sua chamada é de $valor1 reais.");
  } else if (chamada >= 4){ // se a chamada for maior ou igual a 4
    double valor2 = ((chamada - 3) * chamadaAdicional) + chamadaSimples; //calculo do valor simples mais o adicional
    print("O valor da sua chamada é de $valor2 reais."); 
    } else if (chamada <= 0) {
    print("Você não fez nenhuma chamada.");
    }
}
