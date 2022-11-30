import 'package:flutter/material.dart';

import 'Sura_name_details.dart';

class SuraName extends StatelessWidget {
  String name;
  int index;
  SuraName({required this.name,required this.index});



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuranNameDetails.RouteName
        ,arguments:SuraNameDetailsarg(name: name, index: index)
        );

      },
      child: Text("$name",
       style: Theme.of(context).textTheme.headline2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
