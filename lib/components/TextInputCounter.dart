import 'package:flutter/material.dart';

class TextInputCounter extends StatefulWidget {
  const TextInputCounter({Key? key}) : super(key: key);

  @override
  _TextInputCounterState createState() => _TextInputCounterState();
}

class _TextInputCounterState extends State<TextInputCounter> {
  String _inputText = ""; // Texto ingresado por el usuario.
  int _letterCount = 0; // Cantidad de letras en el texto.

  void _updateText(String newText) {
    setState(() {
      _inputText = newText;
      // Recuento de letras, ignorando espacios.
      _letterCount = newText.replaceAll(" ", "").length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Ingrese el texto:",
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: _updateText,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Escribe algo aquí...",
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Cantidad de letras: $_letterCount",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
