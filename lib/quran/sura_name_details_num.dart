import 'package:flutter/material.dart';

class SuraNameDetailsnumber extends StatelessWidget {
 String content;
 int index;
SuraNameDetailsnumber(this.content,this.index);
  @override
  Widget build(BuildContext context) {
    return Text(
      "$content {$index}",
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
