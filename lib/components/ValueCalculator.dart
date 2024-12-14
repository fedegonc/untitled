import 'package:flutter/material.dart';

class ValueCalculator extends StatelessWidget {
  final double slider1Value; // Largo
  final double slider2Value; // Alto
  final int textLength; // Longitud del texto

  const ValueCalculator({
    Key? key,
    required this.slider1Value,
    required this.slider2Value,
    required this.textLength,
  }) : super(key: key);

  // Método para calcular el valor basado en la fórmula ajustada
  double _calculateValue(double largo, double alto, int textoLength) {
    if (textoLength == 0) {
      return 0.0; // Si no hay texto, el valor es 0
    }

    // Factores ajustados:
    const double factorLargo = 20;
    const double factorAlto = 30;
    const double factorTexto = 200;

    // Cálculo del costo
    return (largo * factorLargo) + (alto * factorAlto) + (textoLength * factorTexto);
  }

  @override
  Widget build(BuildContext context) {
    // Calcular el valor final usando los valores actuales
    double calculatedValue = _calculateValue(slider1Value, slider2Value, textLength);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        textLength == 0
            ? 'Ingrese un texto para calcular el valor'
            : 'Valor calculado: \$${calculatedValue.toStringAsFixed(2)}',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
