import 'package:flutter/material.dart';
import '../components/navbar.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(),
          Expanded(
            child: Center(
              child: Text(
                'Esta es la pantalla Acerca de.',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
