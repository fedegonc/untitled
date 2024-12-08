import 'package:flutter/material.dart';
import '../components/navbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(),
          Expanded(
            child: Center(
              child: Text(
                'Bienvenido a la pantalla de Inicio',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
