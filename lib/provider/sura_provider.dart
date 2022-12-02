import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SuraProvider extends ChangeNotifier {
  List<String> verses = [];

  readFiles(int index) async {
    String conste =
        await rootBundle.loadString("assets/files/${index + 1}.txt");

    var lines = conste.split(
      "\n",
    );
    verses = lines;
    notifyListeners();
  }
}
