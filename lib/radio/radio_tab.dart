import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme/My_Theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/radio_bg.png"),
           Text("إذاعة القرآن الكريم",style:Theme.of(context).textTheme.headline1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              InkWell(
                child: ImageIcon(
                  color: Color.fromRGBO(183, 147, 95, 1.0),
                  AssetImage('assets/images/Icon-back.png'),
                ),
              ),
              InkWell(
                child: ImageIcon(
                  color: Color.fromRGBO(183, 147, 95, 1.0),
                  AssetImage('assets/images/Icon-play.png',),
                ),
              ),
              InkWell(
                child: ImageIcon(
                  color: Color.fromRGBO(183, 147, 95, 1.0),
                  AssetImage('assets/images/Icon-next.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
