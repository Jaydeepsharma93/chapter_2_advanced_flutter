import 'package:chapter_2_advanced_flutter/screens/2.1%20Date%20Picker,%20Time%20Picker,%20Dialog%20Box%20using%20Material%20&%20Cupertino/view/ios2.dart';
import 'package:flutter/material.dart';

class IosView extends StatelessWidget {
  const IosView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          datePickerTheme: DatePickerThemeData(
              backgroundColor: Colors.teal
          ),
          colorScheme: ColorScheme.light(
              primary: Colors.teal,
              secondary: Color(0xff135D66).withOpacity(0.6)
          )
      ),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
              primary: Colors.teal,
              secondary:  Color(0xff135D66).withOpacity(0.6)
          )
      ),
      color: Theme.of(context).colorScheme.primary,
      home: IosScreen(),
    );
  }
}
