import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme.dart';

import 'ahades_name.dart';

class HadethTab extends StatelessWidget {
  List<String> ahades = [
    "الحديث الأول",
    "الحديث الثاني",
    "الحديث الثالث",
    "الحديث الرابع",
    "الحديث الخامس",
    "الحديث السادس",
    "الحديث السابع",
    "الحديث الثامن",
    "الحديث التاسع",
    "الحديث العاشر",
    "الحديث الحادي عشر",
    "الحديث الثاني عشر",
    "الحديث الثالث عشر",
    "الحديث الرابع عشر"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/ahades_bg.png"),
          Divider(
            color: Mytheme.goldcolor,
            thickness: 4,
          ),
          Text(
            "الأحاديث",
            style: Theme.of(context).textTheme.headline1,
          ),
          Divider(
            color: Mytheme.goldcolor,
            thickness: 4,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return AhadesName(
                      name: ahades[index],
                      index: index,
                    );
                  },
                  separatorBuilder: (_,index) {
                    return Divider(
                      color: Mytheme.goldcolor,
                      thickness: 4,
                    );
                  },
                  itemCount: ahades.length))
        ],
      ),
    );
  }
}
