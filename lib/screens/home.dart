import 'package:flutter/material.dart';
import '../components/custom_slider1.dart';
import '../components/custom_slider2.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Inicio'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Primer Slider
            CustomSlider1(
              min: 0,
              max: 150,
              divisions: 15, // Incrementos de 10.
            ),
            const SizedBox(height: 40),

            // Segundo Slider
            CustomSlider2(
              min: 17,
              max: 33,
              divisions: 6, // Incrementos de 3 cm.
            ),
          ],
        ),
      ),
    );
  }
}
