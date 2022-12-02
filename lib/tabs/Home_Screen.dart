import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme/My_Theme.dart';
import 'package:islami_application/ahades/hadeth_tab.dart';
import 'package:islami_application/quran/quran_tab.dart';
import 'package:islami_application/radio/radio_tab.dart';
import 'package:islami_application/sebha/tasbeh_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../setting/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/bg.png"),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.apptitle,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: tabs[selectedindex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: Mytheme.goldcolor),
            child: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (index){

                setState(() {
                  selectedindex=index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.moshaf,
                    icon: ImageIcon(
                      AssetImage("assets/images/moshaf.png"),
                    )),
                BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.sebha,
                    icon: ImageIcon(
                      AssetImage("assets/images/sebha.png"),
                    )),
                BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.ahadeth,
                    icon: ImageIcon(
                      AssetImage("assets/images/hades.png"),
                    )),
                BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.radio,
                    icon: ImageIcon(
                      AssetImage("assets/images/radio.png"),
                    )),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.setting,
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    TasbehTab(),
    HadethTab(),
    RadioTab(),
    SettingTab()
  ];
}
