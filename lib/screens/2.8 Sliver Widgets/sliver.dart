import 'dart:math';

import 'package:flutter/material.dart';

class SliverWidget extends StatelessWidget {
  const SliverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor:Colors.black,
              expandedHeight: 150,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("SliverAppBar"),
                background: Image(image: AssetImage('assets/img/bg.jpg'),fit: BoxFit.cover,),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount:20,
                (context, index) => Container(
                  height: 200,
                  width: double.infinity,
                  color: generateRandomColor(),
                ),
              ),
            )
          ],
        ),
    );
  }
  Color generateRandomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256), // Red value
      random.nextInt(256), // Green value
      random.nextInt(256), // Blue value
    );
  }
}
