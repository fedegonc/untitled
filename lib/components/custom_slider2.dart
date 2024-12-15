import 'package:flutter/material.dart';

class CustomSlider2 extends StatefulWidget {
  final ValueChanged<double>? onValueChanged;

  const CustomSlider2({Key? key, this.onValueChanged}) : super(key: key);

  @override
  _CustomSlider2State createState() => _CustomSlider2State();
}

class _CustomSlider2State extends State<CustomSlider2> {
  double _sliderValue = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Texto explicativo
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Ajusta la altura del tallado entre 17 cm y 33 cm. '
                'El valor seleccionado representa la altura total de la pieza.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        // Valor del slider
        Text(
          'Alto: ${_sliderValue.toInt()} cm',
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        // Slider
        Slider(
          value: _sliderValue,
          min: 17,
          max: 33,
          divisions: 6,
          activeColor: Colors.white,
          inactiveColor: Colors.white.withOpacity(0.5),
          label: _sliderValue.toInt().toString(),
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
              widget.onValueChanged?.call(value);
            });
          },
        ),
      ],
    );
  }
}
