import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ocupar todo el ancho disponible
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      color: Colors.black, // Fondo negro
      alignment: Alignment.centerLeft, // Alineación del texto a la izquierda
      child: const Text(
        'Tallados en Madera - 2025\nDesarrollado por F.G.',
        style: TextStyle(
          color: Colors.white, // Color del texto
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
