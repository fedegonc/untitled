import 'package:flutter/material.dart';

class CustomSlider2 extends StatefulWidget {
  const CustomSlider2({Key? key}) : super(key: key);

  @override
  _CustomSlider2State createState() => _CustomSlider2State();
}

class _CustomSlider2State extends State<CustomSlider2> {
  double _sliderValue = 30; // Valor inicial del slider.

  // Valores directamente definidos en el componente
  final double _min = 17; // Mínimo del slider
  final double _max = 33; // Máximo del slider
  final int _divisions = 6; // Incrementos de 3 cm

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Alto: ${_sliderValue.toInt()} cm',
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        Slider(
          value: _sliderValue,
          min: _min,
          max: _max,
          divisions: _divisions,
          label: _sliderValue.toInt().toString(),
          onChanged: (double newValue) {
            setState(() {
              _sliderValue = newValue; // Actualiza el valor del slider.
            });
          },
        ),
      ],
    );
  }
}
