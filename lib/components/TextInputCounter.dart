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
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: (text) {
            onTextChanged?.call(text); // Notifica cambios
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Escribe algo aquí...',
          ),
        ),
      ],
    );
  }
}
