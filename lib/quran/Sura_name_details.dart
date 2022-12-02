import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme/My_Theme.dart';
import 'package:islami_application/provider/sura_provider.dart';
import 'package:islami_application/quran/sura_name_details_num.dart';
import 'package:provider/provider.dart';

class SuranNameDetails extends StatelessWidget {
  static const String RouteName = "details";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SuraProvider>(context);
    var arg = ModalRoute.of(context)?.settings.arguments as SuraNameDetailsarg;
    if (provider.verses.isEmpty) {
      provider.readFiles(arg.index);
    }

    return Stack(
      children: [
        Image.asset("assets/images/bg.png"),
        Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              title: Text(
                arg.name,
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
              child: provider.verses.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(color: Colors.amber),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.all(5),
                      itemCount: provider.verses.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SuraNameDetailsnumber(
                            provider.verses[index], index + 1);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          color: Mytheme.goldcolor,
                        );
                      },
                    ),
            )),
      ],
    );
  }
}

class SuraNameDetailsarg {
  String name;
  int index;

  SuraNameDetailsarg({required this.name, required this.index});
}
