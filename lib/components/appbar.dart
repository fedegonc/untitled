import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, // Fondo blanco
      elevation: 0, // Sin sombra
      systemOverlayStyle: SystemUiOverlayStyle.dark, // Texto negro en la barra de estado
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black, // Texto negro
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black), // Iconos negros
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
