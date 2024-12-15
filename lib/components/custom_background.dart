import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget? child;

  const CustomBackground({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF001F3F), // Azul petróleo
      child: child, // Widget que se renderiza dentro del fondo
    );
  }
}
