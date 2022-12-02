import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ahades/hadeth_tab.dart';

class AhadethProvider extends ChangeNotifier {
  List<AhadesData> Ahadeth = [];

  readfile() async {
    String content = await rootBundle.loadString("assets/files2/ahadeth.txt");
    List<String> Allahadeth = content.trim().split("#\r\n");
    for (int i = 0; i < Allahadeth.length; i++) {
      String hadeth = Allahadeth[i];
      List<String> hadethlines = hadeth.split("\n");
      String title = hadethlines[0];
      hadethlines.removeAt(0);
      AhadesData ahadethData = AhadesData(name: title, content: hadethlines);
      Ahadeth.add(ahadethData);
    }
    notifyListeners();
  }
}
