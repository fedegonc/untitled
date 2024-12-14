import 'package:flutter/material.dart';

class CustomSlider1 extends StatefulWidget {
  final ValueChanged<double>? onValueChanged;

  const CustomSlider1({Key? key, this.onValueChanged}) : super(key: key);

  @override
  _CustomSlider1State createState() => _CustomSlider1State();
}

class _CustomSlider1State extends State<CustomSlider1> {
  double _sliderValue = 100; // Valor inicial del slider.

  // Definir directamente los valores en el componente
  final double _min = 30; // Mínimo del slider
  final double _max = 150; // Máximo del slider
  final int _divisions = 12; // Incrementos del slider (de 10 en 10).

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Largo: ${_sliderValue.toInt()} cm',
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
              widget.onValueChanged?.call(_sliderValue); // Notifica cambios
            });
          },
        ),
      ],
    );
  }
}
