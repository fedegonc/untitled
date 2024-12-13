import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int counter;

  const CounterDisplay({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('El botón de abajo sirve para incrementar lago:'),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
