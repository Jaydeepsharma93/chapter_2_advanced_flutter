import 'package:chapter_2_advanced_flutter/screens/2.1%20Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/Provider/provider.dart';
import 'package:chapter_2_advanced_flutter/screens/2.1%20Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/view/android.dart';
import 'package:chapter_2_advanced_flutter/screens/2.1%20Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/view/ios.dart';
import 'package:chapter_2_advanced_flutter/screens/2.2%20Cupertino%20Widgets/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => DialogBoxProvider(),
    )
  ], child: MyApp() ));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ios_cup',
      routes: {
        '/' : (context) => const AndroidViewScreen(),
        '/ios' : (context) => const IosView(),
        '/ios_cup' : (context) => const CupertinoIos()
      },
    );
  }
}
