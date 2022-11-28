
import 'package:flutter/material.dart';
import 'package:islami_application/quran/Sura_name.dart';

import '../My_Theme.dart';

class QuranTab extends StatelessWidget {
  List<String>names=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.center,
            child: Image.asset("assets/images/quran_image.png")),

        Divider(
          color: Mytheme.goldcolor,
          thickness: 5,
        ),
        Text(
          "♡قائمة سور القرآن الكريم♡",
          style: Theme.of(context).textTheme.headline2,
        ),

        Divider(
          color: Mytheme.goldcolor,
          thickness: 5,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context,index){
               return SuraName(name: names[index], index: index,);
              },
              separatorBuilder: (context,index){
               return Divider(
                  color: Mytheme.goldcolor,
                  thickness: 2,
                  endIndent: 20,
                 indent: 20,
                );
              },
              itemCount: names.length),
        )
      ],
    );
  }

}





