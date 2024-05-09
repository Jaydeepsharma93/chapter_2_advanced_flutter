import 'package:chapter_2_advanced_flutter/screens/2.1%20Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Provider/provider.dart';
import 'package:chapter_2_advanced_flutter/screens/2.1%20Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/view/android.dart';
import 'package:chapter_2_advanced_flutter/screens/2.1%20Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/view/ios.dart';
import 'package:chapter_2_advanced_flutter/screens/2.2%20Cupertino%20Widgets/cupertino.dart';
import 'package:chapter_2_advanced_flutter/screens/2.3%20CupertinoSliverNavigationBar%20%20&%20CupertinoListTile/cupertino_list_selection.dart';
import 'package:chapter_2_advanced_flutter/screens/2.3%20CupertinoSliverNavigationBar%20%20&%20CupertinoListTile/cupertinolistsection.dart';
import 'package:chapter_2_advanced_flutter/screens/2.3%20CupertinoSliverNavigationBar%20%20&%20CupertinoListTile/custom_scroll.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => DialogBoxProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/section',
      routes: {
        '/': (context) => const AndroidViewScreen(),
        '/ios': (context) => const IosView(),
        '/ios_cup': (context) => const CupertinoIos(),
        '/custom_scroll': (context) => const CustomScroll(),
        '/list_selection': (context) => const ListSelection(),
        '/section': (context) => const CupertinoListSection2()
      },
    );
  }
}
