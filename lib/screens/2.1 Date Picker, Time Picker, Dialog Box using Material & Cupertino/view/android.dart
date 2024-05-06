import 'package:chapter_2_advanced_flutter/screens/2.1%20Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/view/android2.dart';
import 'package:flutter/material.dart';

class AndroidViewScreen extends StatelessWidget {
  const AndroidViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
          datePickerTheme: DatePickerThemeData(backgroundColor: Colors.green.shade50),
          colorScheme: ColorScheme.light(
              primary: Colors.teal,
              secondary: const Color(0xff135D66).withOpacity(0.6))),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
              primary: Colors.teal,
              secondary: const Color(0xff135D66).withOpacity(0.6))),
      color: Theme.of(context).colorScheme.primary,
      debugShowCheckedModeBanner: false,
      home: const Screen_Android()
    );
  }
}
