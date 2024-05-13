import 'package:chapter_2_advanced_flutter/screens/2.4%20CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/bottomtab.dart';
import 'package:chapter_2_advanced_flutter/screens/2.4%20CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/provider/tabbarprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class SlidingTab extends StatelessWidget {
  const SlidingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
                middle: const Text('Title'),
                largeTitle: Center(
                  child: CupertinoSlidingSegmentedControl(
                      backgroundColor: CupertinoColors.systemGrey2,
                      groupValue:
                          Provider.of<TabBarProvider>(context, listen: true)
                              .index
                              .toString(),
                      children: {
                        '0': Text(
                          'Home',
                          style: TextStyle(fontSize: 15),
                        ),
                        '1': Text(
                          'Add',
                          style: TextStyle(fontSize: 15),
                        ),
                        '2': Text(
                          'Setting',
                          style: TextStyle(fontSize: 15),
                        ),
                      },
                      onValueChanged: (value) {
                        Provider.of<TabBarProvider>(context,listen: false).onChange(value!);
                      }),
                )),
            SliverFillRemaining(
              child: Center(
                child: Text(screen[Provider.of<TabBarProvider>(context).index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

