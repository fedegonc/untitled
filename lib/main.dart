import 'package:flutter/material.dart';
import 'screens/home.dart'; // Asegúrate de que este archivo exista y esté correctamente importado.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home', // Ruta inicial.
      routes: {
        '/home': (context) => HomeScreen(), // Asegúrate de que HomeScreen existe.
      },
    );
  }
}
