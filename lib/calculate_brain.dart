
import 'dart:math';

class CalculateBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculateBrain({this.height, this.weight});

  String calculateBmi() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'SOBREPESO';
    }
    else if (_bmi > 18) {
      return 'NORMAL';
    }
    else {
      return 'MAGREZA';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você está acima do peso, indicamos que você faça uma dieta para imagrecer!';
    }
    else if (_bmi > 18) {
      return 'Parabéns, você está dentro da normalidade para a sua altura, mantenha-se assim.';
    }
    else {
      return 'Você está abaixo do peso, tome cuidado, você pode ficar doente. Indicamos uma dieta para equilibrar seu peso.';
    }

  }
}