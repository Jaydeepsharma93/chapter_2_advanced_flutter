import 'package:flutter/cupertino.dart';

class CustomScroll extends StatelessWidget {
  const CustomScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
          child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('My People'),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return CupertinoListTile(
                title: Text(
                  "Person  ${index + 1}",
                  style: const TextStyle(fontSize: 20, height: 3),
                ),
                subtitle: Text(
                  '${index + 1}',
                  style: const TextStyle(fontSize: 15),
                ));
          }, childCount: 20))
        ],
      )),
    );
  }
}
