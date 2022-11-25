import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme.dart';
import 'package:islami_application/tabs/hadeth_tab.dart';
import 'package:islami_application/quran/quran_tab.dart';
import 'package:islami_application/tabs/radio_tab.dart';
import 'package:islami_application/sebha/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/bg.png"),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "إسلامي",
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
                    label: "المصحف",
                    icon: ImageIcon(
                      AssetImage("assets/images/moshaf.png"),
                    )),
                BottomNavigationBarItem(
                    label: "تسبيح",
                    icon: ImageIcon(
                      AssetImage("assets/images/sebha.png"),
                    )),
                BottomNavigationBarItem(
                    label: "حديث",
                    icon: ImageIcon(
                      AssetImage("assets/images/hades.png"),
                    )),
                BottomNavigationBarItem(
                    label: "الراديو",
                    icon: ImageIcon(
                      AssetImage("assets/images/radio.png"),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<Widget>tabs=[QuranTab(),TasbehTab(),HadethTab(),RadioTab()];
}
