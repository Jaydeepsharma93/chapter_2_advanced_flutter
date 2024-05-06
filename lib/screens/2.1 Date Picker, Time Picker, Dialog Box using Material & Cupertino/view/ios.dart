import 'package:flutter/material.dart';

class IosView extends StatelessWidget {
  const IosView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
          actionsIconTheme: const IconThemeData(color: Colors.white),
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: const Text(
            'Date Picker',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}

