import 'package:flutter/material.dart';

class BaseLayout extends StatefulWidget {
  const BaseLayout({super.key});

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  bool _showAlert = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(
          slivers: <Widget>[
            _showAlert
                ? SliverToBoxAdapter(
                    child: SizedBox(
                      height: 80.0,
                      child: ListTile(
                        leading: const Icon(Icons.error_outline),
                        title: const Text("Please correct form data."),
                        trailing: IconButton(
                          onPressed: () {
                            _showAlert = false;
                            setState(() {});
                          },
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                    ),
                  )
                : const SliverToBoxAdapter(
                    child: SizedBox(),
                  ),

            /// The rest of the screen where the form and text fields are
            SliverFillRemaining(
              child: ListView(
                children: <Widget>[
                  Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(),
                        TextFormField(),
                        TextFormField()
                      ],
                    ),
                  ),

                  /// alert button
                  Center(
                    child: ElevatedButton(
                      child: const Text('ALERT!'),
                      onPressed: () {
                        _showAlert = true;

                        /// make it go away after a few seconds
                        Future.delayed(const Duration(seconds: 3), () {
                          _showAlert = false;
                          setState(() {});
                        });

                        setState(() {});
                      },
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
