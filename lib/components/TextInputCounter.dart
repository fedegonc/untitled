import 'package:flutter/material.dart';

class TextInputCounter extends StatelessWidget {
  final ValueChanged<String>? onTextChanged;

  const TextInputCounter({Key? key, this.onTextChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Texto explicativo
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Escribe el texto que deseas tallar. El largo del texto influirá en el tamaño final y en el costo de la pieza.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ),
        // Etiqueta principal
        const Text(
          'Ingrese el texto:',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        const SizedBox(height: 8),
        // Campo de entrada de texto
        TextField(
          onChanged: (text) {
            onTextChanged?.call(text);
          },
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            hintText: 'Escribe la frase aquí...',
            hintStyle: const TextStyle(color: Colors.white70),
          ),
          cursorColor: Colors.white,
        ),
      ],
    );
  }
}
