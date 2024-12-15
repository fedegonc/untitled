import 'package:flutter/material.dart';

class TextInputCounter extends StatelessWidget {
  final ValueChanged<String>? onTextChanged;

  const TextInputCounter({Key? key, this.onTextChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Ingrese el texto:',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        const SizedBox(height: 8),
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
              borderSide: BorderSide(color: Colors.white, width: 2.0), // Borde blanco al enfocar
            ),
            hintText: 'Escribe algo aquí...',
            hintStyle: const TextStyle(color: Colors.white70),
          ),
          cursorColor: Colors.white, // Color del cursor
        ),
      ],
    );
  }
}
