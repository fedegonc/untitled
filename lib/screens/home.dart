import 'package:flutter/material.dart';
import '../components/custom_slider1.dart';
import '../components/custom_slider2.dart';
import '../components/TextInputCounter.dart';

// Widget reutilizable para los contenedores
class ResponsiveContainer extends StatelessWidget {
  final Widget child;

  const ResponsiveContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8, // 80% del ancho de la pantalla
      child: child,
    );
  }
}

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
              const ResponsiveContainer(child: TextInputCounter()),
              const SizedBox(height: 40),
              const ResponsiveContainer(child: CustomSlider1()),
              const SizedBox(height: 40),
              const ResponsiveContainer(child: CustomSlider2()),
            ],
          ),
        ),
      ),
    );
  }
}
