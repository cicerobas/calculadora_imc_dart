import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerConsole() => stdin.readLineSync(encoding: utf8) ?? "";

  static String lerString(String textoEntradaInvalida) {
    var entrada = lerConsole();
    while (entrada == "") {
      print(textoEntradaInvalida);
      entrada = lerConsole();
    }
    return entrada;
  }

  static double lerDouble(String textoEntradaInvalida) {
    do {
      var entrada = lerConsole();
      try {
        return validaEntradaDouble(entrada);
      } catch (e) {
        print(textoEntradaInvalida);
      }
    } while (true);
  }

  static double validaEntradaDouble(String entrada) {
    double valor = double.parse(entrada.replaceAll(',', '.'));
    if (valor <= 0) {
      throw ArgumentError();
    }
    return valor;
  }
}
