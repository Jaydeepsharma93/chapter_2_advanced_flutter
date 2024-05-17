import 'package:chapter_2_advanced_flutter/screens/2.4%20CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/bottomtab.dart';
import 'package:chapter_2_advanced_flutter/screens/2.6%20Page%20View%20&%20BottomNavigationBar/provider/bottombarprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(screen[Provider.of<BottomProvider>(context).Index]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:Provider.of<BottomProvider>(context).Index,
        onTap: (value) {
          Provider.of<BottomProvider>(context,listen: false).ChangeIndex(value);
        },
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
