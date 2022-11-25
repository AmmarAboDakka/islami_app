import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme.dart';
import 'package:islami_application/quran/Sura_name_details.dart';

import 'tabs/Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (c) => HomeScreen(),
        SuranNameDetails.RouteName:(c)=>SuranNameDetails(),

      },
      theme: Mytheme.lihgttheme,
      // darkTheme: Mytheme.darktheme,
       );
  }
}

