import 'package:flutter/material.dart';

import 'ahades_name_detailes.dart';

class AhadesName extends StatelessWidget {
 String name;
  int index;
 AhadesName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: (){

       Navigator.of(context).pushNamed(AhadesNameDetails.RouteName,
          arguments: AhadesNameDetailsarg(name:name, index: index));


     },

        child: Text(name,textAlign:TextAlign.center ,style: Theme.of(context).textTheme.headline2,));
  }
}
