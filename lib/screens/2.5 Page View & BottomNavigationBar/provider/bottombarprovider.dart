import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier{
  int Index =0;
  void ChangeIndex(int valu){
    Index = valu;
    notifyListeners();
  }
}