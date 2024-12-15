import 'package:flutter/material.dart';

class CustomSlider1 extends StatefulWidget {
  final ValueChanged<double>? onValueChanged;

  const CustomSlider1({Key? key, this.onValueChanged}) : super(key: key);

  @override
  _CustomSlider1State createState() => _CustomSlider1State();
}

class _CustomSlider1State extends State<CustomSlider1> {
  double _sliderValue = 100;

  final double _min = 30;
  final double _max = 150;
  final int _divisions = 12;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Largo: ${_sliderValue.toInt()} cm',
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        const SizedBox(height: 20),
        Slider(
          value: _sliderValue,
          min: _min,
          max: _max,
          divisions: _divisions,
          activeColor: Colors.white,
          inactiveColor: Colors.white.withOpacity(0.5),
          label: _sliderValue.toInt().toString(),
          onChanged: (double newValue) {
            setState(() {
              _sliderValue = newValue;
              widget.onValueChanged?.call(_sliderValue);
            });
          },
        ),
      ],
    );
  }
}
