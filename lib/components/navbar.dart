import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Mi App',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home'); // Navega a '/home'
                },
                child: Text(
                  'Inicio',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about'); // Navega a '/about'
                },
                child: Text(
                  'Acerca de',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
