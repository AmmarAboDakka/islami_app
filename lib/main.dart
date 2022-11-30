import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme.dart';
import 'package:islami_application/ahades/hadeth_det.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar')

      ],
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (c) => HomeScreen(),
        SuranNameDetails.RouteName:(c)=>SuranNameDetails(),
        HadethDetails.routename:(context)=>HadethDetails(),


      },
      theme: Mytheme.lihgttheme,
      // darkTheme: Mytheme.darktheme,
       );
  }
}

