import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme/My_Theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  List<String>tasbehname=["الحمد لله","الله أكبر","سبحان الله","لا إله إلا الله"];
  String dropdownValue="الله أكبر";
  String name="سبحان الله";

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/sebha_img.png",
          ),
          Text(
            AppLocalizations.of(context)!.tsbehcounter,
            style: Theme.of(context).textTheme.headline1,
          ),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(200, 178, 149, 1.0),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "$counter",
                style: const TextStyle(fontSize: 25),
              )),
          Container(
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromRGBO(183, 147, 95, 1.0),
            ),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(
                Icons.arrow_circle_down_sharp,
                color: Colors.black,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>["الحمد لله","الله أكبر","سبحان الله","لا إله إلا الله"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(

                    value,style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.black,fontSize: 20),
                  ),
                );
              }).toList(),
            ),
          ),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Mytheme.goldcolor, //background color of button
                  side: const BorderSide(width:3, color:Colors.transparent), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: const EdgeInsets.all(15) //content padding inside button
              ),

            onPressed: () {
              counter++;
              // if(counter >=10){
              //   name=tasbehname[1];
              // }if(counter>=15){
              //   name=tasbehname[2];
              // }
              if(counter==31){
                counter=0;
                name=tasbehname[0];
              }
              setState(() {

              });

            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyText(dropdownValue), //
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }


}

class MyText extends StatelessWidget {


  String name;
  MyText(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25,fontStyle:FontStyle.italic));
  }
}


