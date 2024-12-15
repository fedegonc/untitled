import 'package:flutter/material.dart';

class ValueCalculator extends StatelessWidget {
  final double slider1Value;
  final double slider2Value;
  final int textLength;

  const ValueCalculator({
    Key? key,
    required this.slider1Value,
    required this.slider2Value,
    required this.textLength,
  }) : super(key: key);

  int _calculateValue(double largo, double alto, int textoLength) {
    if (textoLength == 0) return 0;

    const double factorLargo = 20;
    const double factorAlto = 50;
    const double factorTexto = 200;

    double rawValue = (largo * factorLargo) + (alto * factorAlto) + (textoLength * factorTexto);
    return (rawValue / 100).round() * 100;
  }

  @override
  Widget build(BuildContext context) {
    int calculatedValue = _calculateValue(slider1Value, slider2Value, textLength);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Texto explicativo
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'El valor calculado tiene en cuenta:\n'
                '- Largo en centímetros ajustado por el primer deslizador.\n'
                '- Alto en centímetros ajustado por el segundo deslizador.\n'
                '- La longitud del texto ingresado.\n\n'
                'Usa los controles para modificar estas variables y observar los cambios.',
            style: TextStyle(fontSize: 14, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 16),
        // Resultado calculado
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            textLength == 0
                ? 'Ingrese un texto para calcular el valor'
                : 'Valor calculado: \$${calculatedValue}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
