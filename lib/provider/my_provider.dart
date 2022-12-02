import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String LangugeCode = "en";

  void ChangeLanguge(String lang) {
    if (LangugeCode == lang) {
      ///This Function Just For Restrict Any Unuseful click
      return;
    }
    LangugeCode = lang;
    notifyListeners();
  }
}
