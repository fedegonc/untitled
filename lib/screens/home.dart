import 'package:flutter/material.dart';
import '../components/custom_slider1.dart';
import '../components/custom_slider2.dart';
import '../components/TextInputCounter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Inicio'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8, // 80% del ancho de la pantalla
                child: const TextInputCounter(),
              ),
              const SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width * 0.8, // 80% del ancho de la pantalla
                child: const CustomSlider1(),
              ),
              const SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width * 0.8, // 80% del ancho de la pantalla
                child: const CustomSlider2(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
