import 'package:flutter/cupertino.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Tab Bar'),
        ),
        child: CupertinoTabScaffold(
          tabBar : CupertinoTabBar(
            items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings))
            ],
          ), tabBuilder: (BuildContext context, int index) {
            return Center(child: Text(screen[index]),);
        },
        ),
      ),
    );
  }
}

List screen = [
  "Home Screen",
  "Add Screen",
  "Setting Screen",
];
