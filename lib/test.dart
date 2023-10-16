import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.blue, // Replace with your container color
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 50,
                    color: Colors
                        .blueAccent, // Replace with your circle avatar color
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          Colors.red, // Replace with your circle avatar color
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
