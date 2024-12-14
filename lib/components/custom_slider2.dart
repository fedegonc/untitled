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
      children: [
        Text('Alto: ${_sliderValue.toInt()} cm', style: const TextStyle(fontSize: 18)),
        Slider(
          value: _sliderValue,
          min: 17,
          max: 33,
          divisions: 6,
          label: _sliderValue.toInt().toString(),
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
              widget.onValueChanged?.call(value); // Notifica cambios
            });
          },
        ),
      ],
    );
  }
}
