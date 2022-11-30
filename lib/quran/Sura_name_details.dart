import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuranNameDetails extends StatefulWidget {
  static const String RouteName = "details";

  @override
  State<SuranNameDetails> createState() => _SuranNameDetailsState();
}

class _SuranNameDetailsState extends State<SuranNameDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as SuraNameDetailsarg;
    if (verses.isEmpty) {
      readFiles(arg.index);
    }

    return Stack(
      children: [
        Image.asset("assets/images/bg.png"),
        Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                "${arg.name}",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: Container(
              padding: const EdgeInsets.all(40),
              margin: const EdgeInsets.symmetric(vertical: 65, horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all()),
              child: verses.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(color: Colors.amber),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.all(5),
                      itemCount: verses.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(
                          verses[index],
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline1,
                        );
                      },
                    ),
            )),
      ],
    );
  }

  readFiles(int index) async {
    String conste =
        await rootBundle.loadString("assets/files/${index + 1}.txt");

    var lines = conste.split(
      "\n",
    );

    setState(() {
      verses = lines;
    });
  }
}

class SuraNameDetailsarg {
  String name;
  int index;

  SuraNameDetailsarg({required this.name, required this.index});
}
