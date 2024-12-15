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
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: 'Escribe algo aquí...',
            hintStyle: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}
