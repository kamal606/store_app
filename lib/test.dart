import 'package:flutter/material.dart';
import 'package:store_app/core/classes/image_assets.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable AppBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true, // Pin the AppBar to a certain extent
              expandedHeight: 200, // Set the desired expanded height
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('Scrollable AppBar'),
                background: Image.asset(
                  AppAssets.laptops, // Replace with your image URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // Your content here (e.g., TextFormFields, icons, and text)
                  // Example:
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  const Icon(Icons.add),
                  const Text('Icon 1'),
                  const Icon(Icons.remove),
                  const Text('Icon 2'),
                  const Icon(Icons.edit),
                  const Text('Icon 3'),
                  const Icon(Icons.search),
                  const Text('Icon 4'),
                  const Icon(Icons.add),
                  const Text('Icon 1'),
                  const Icon(Icons.remove),
                  const Text('Icon 2'),
                  const Icon(Icons.edit),
                  const Text('Icon 3'),
                  const Icon(Icons.search),
                  const Text('Icon 4'),
                  const Icon(Icons.add),
                  const Text('Icon 1'),
                  const Icon(Icons.remove),
                  const Text('Icon 2'),
                  const Icon(Icons.edit),
                  const Text('Icon 3'),
                  const Icon(Icons.search),
                  const Text('Icon 4'),
                  const Icon(Icons.add),
                  const Text('Icon 1'),
                  const Icon(Icons.remove),
                  const Text('Icon 2'),
                  const Icon(Icons.edit),
                  const Text('Icon 3'),
                  const Icon(Icons.search),
                  const Text('Icon 4'),
                  const Icon(Icons.add),
                  const Text('Icon 1'),
                  const Icon(Icons.remove),
                  const Text('Icon 2'),
                  const Icon(Icons.edit),
                  const Text('Icon 3'),
                  const Icon(Icons.search),
                  const Text('Icon 4'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
