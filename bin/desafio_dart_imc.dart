import 'package:desafio_dart_imc/classes/pessoa.dart';
import 'package:desafio_dart_imc/utils/console_utils.dart';

/*
 < 16        | Magreza grave
 16 a < 17   | Magreza moderada
 17 a < 18,5 | Magreza leve
 18,5 a < 25 | Saldável
 25 a < 30   | Sobrepeso
 30 a < 35   | Obesidade Grau 1
 35 a < 40   | Obesidade Grau 2 (severa)
 >= 40       | Obesidade Grau 3 (mórbida)
agreza Grave
 IMC = peso(Kg) / altura²(m)
 
 */
void main(List<String> arguments) {
  String nome;
  double peso, altura;

  print("Calculadora de IMC");
  print("Digite o seu nome: ");
  nome = ConsoleUtils.lerString("O nome não pode ser vazio, tente novamente:");

  print("$nome, Digite sua altura(m):");
  altura = ConsoleUtils.lerDouble("Altura digitada inválida, tente novamente:");

  print("$nome, Digite seu peso(Kg):");
  peso = ConsoleUtils.lerDouble("Peso digitado inválido, tente novamente:");

  Pessoa pessoa = Pessoa(nome, peso, altura);

  var imc = pessoa.getIMC().toStringAsFixed(1);
  print(
      "Olá $nome! \nSeu IMC: $imc \nSeu status: ${statusIMC(pessoa.getIMC())}");
}

String statusIMC(double imc) {
  switch (imc) {
    case < 16:
      return "Magreza Grave";

    case < 17:
      return "Magreza Moderada";

    case < 18.5:
      return "Magreza Leve";

    case < 25:
      return "Saldável";

    case < 30:
      return "Sobrepeso";

    case < 35:
      return "Obesidade Grau 1";

    case < 40:
      return "Obesidade Grau 2 (severa)";

    default:
      return "Obesidade Grau 3 (mórbida)";
  }
}
