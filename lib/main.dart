import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme/My_Theme.dart';
import 'package:islami_application/ahades/hadeth_det.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/provider/my_provider.dart';
import 'package:islami_application/provider/sura_provider.dart';
import 'package:islami_application/quran/Sura_name_details.dart';
import 'package:provider/provider.dart';
import 'tabs/Home_Screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => MyProvider()),
      ChangeNotifierProvider(create: (context) => SuraProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('ar')],
      locale: Locale(provider.LangugeCode),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (c) => HomeScreen(),
        SuranNameDetails.RouteName: (c) => SuranNameDetails(),
        HadethDetails.routename: (context) => HadethDetails(),
      },
      theme: Mytheme.lihgttheme,
      // darkTheme: Mytheme.darktheme,
    );
  }
}

