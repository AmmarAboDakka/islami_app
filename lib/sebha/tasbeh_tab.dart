import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme.dart';

class TasbehTab extends StatefulWidget {

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  List<String>tasbehname=["الحمد لله","الله أكبر","سبحان الله"];
  String name="سبحان الله";

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/sebha_img.png"),
          Text("عدد التسبيحات",style: Theme.of(context).textTheme.headline1,),
          Container(
            padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(200, 178, 149, 1.0),
                border: Border.all(),
                borderRadius: BorderRadius.circular(20)
                
              ),
              child: Text("$counter",style: TextStyle(fontSize: 25),)),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Mytheme.goldcolor, //background color of button
                  side: BorderSide(width:3, color:Colors.transparent), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(15) //content padding inside button
              ),

            onPressed: () {
              counter++;
              if(counter >=10){
                name=tasbehname[1];
              }if(counter>=15){
                name=tasbehname[2];
              }if(counter==20){
                counter=0;
                name=tasbehname[0];
              }
              setState(() {

              });

            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyText(name), // <-- Text
                SizedBox(
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
  MyText(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25,fontStyle:FontStyle.italic));
  }
}


