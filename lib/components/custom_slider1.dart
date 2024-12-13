import 'package:flutter/material.dart';

class CustomSlider1 extends StatefulWidget {
  final double min;
  final double max;
  final int divisions;

  const CustomSlider1({
    Key? key,
    required this.min,
    required this.max,
    required this.divisions,
  }) : super(key: key);

  @override
  _CustomSlider1State createState() => _CustomSlider1State();
}

class _CustomSlider1State extends State<CustomSlider1> {
  double _sliderValue = 100; // Valor inicial del slider.

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
          min: widget.min,
          max: widget.max,
          divisions: widget.divisions,
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
