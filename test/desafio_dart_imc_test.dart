import 'package:desafio_dart_imc/classes/pessoa.dart';
import 'package:desafio_dart_imc/utils/console_utils.dart';
import 'package:test/test.dart';

import '../bin/desafio_dart_imc.dart' as app;

void main() {
  group('Testa para variados status de IMC', () {
    var valuesToTest = {
      {'imc': 15}: 'Magreza Grave',
      {'imc': 22}: 'Saldável',
      {'imc': 42}: 'Obesidade Grau 3 (mórbida)',
    };

    valuesToTest.forEach((value, status) {
      test('$value, expect: $status', () {
        expect(app.statusIMC(double.parse(value['imc'].toString())),
            equals(status));
      });
    });
  });

  test('Teste de imc para 1.8m e 81Kg, imc = 25', () {
    Pessoa pessoa = Pessoa("", 81, 1.8);
    expect(pessoa.getIMC(), 25);
  });

  test('Testa validação de double para 0 ou negativo', () {
    expect(() => ConsoleUtils.validaEntradaDouble('0'),
        throwsA(TypeMatcher<ArgumentError>()));
  });
}
