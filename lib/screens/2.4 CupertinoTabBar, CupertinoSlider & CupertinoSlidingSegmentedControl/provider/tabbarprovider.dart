import 'package:flutter/cupertino.dart';

class TabBarProvider extends ChangeNotifier {
  int index =0;
  void onChange(String index)
  {
    this.index = int.parse(index);
    notifyListeners();
  }
}