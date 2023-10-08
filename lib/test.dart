import 'package:flutter/material.dart';

class Testt extends StatelessWidget {
  const Testt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          color: Theme.of(context).colorScheme.primaryContainer,
          height: 100,
          width: 200,
          child: const Text(
            "kamal",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
