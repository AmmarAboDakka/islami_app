import 'package:flutter/material.dart';
import 'hadeth_tab.dart';

class HadethDetails extends StatelessWidget {
  static const String routename = "hadethdet";

  @override
  Widget build(BuildContext context) {
    var data=ModalRoute.of(context)?.settings.arguments as AhadesData;
    return Stack(
      children: [
        Image.asset("assets/images/bg.png"),
        Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              title: Text(data.name,style: TextStyle(color: Colors.black,fontSize: 30),),
            ),
            body: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  )),
              child: ListView.builder(
                  itemCount: data.content.length,
                  itemBuilder: (_, index) {
                    return Text(
                      data.content[index],
                      style: Theme.of(context).textTheme.headline2,
                    );
                  }),
            )),
      ],
    );
  }
}
