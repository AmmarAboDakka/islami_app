import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/My_Theme/My_Theme.dart';
import 'package:islami_application/ahades/hadeth_det.dart';
import 'package:islami_application/provider/ahadeth_provider.dart';
import 'package:provider/provider.dart';

class HadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///StateManagement In One Screen
    return ChangeNotifierProvider(
      create: (context) => AhadethProvider()..readfile(),
      builder: (context, child) {
        var provider = Provider.of<AhadethProvider>(context);
        if (provider.Ahadeth.isEmpty) {
          provider.readfile();
        }
        return Center(
          child: Column(
            children: [
              Image.asset("assets/images/ahades_bg.png"),
              Divider(
                color: Mytheme.goldcolor,
                thickness: 4,
              ),
              Text(
                "الأحاديث",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                color: Mytheme.goldcolor,
                thickness: 4,
              ),
              Expanded(
                  child: provider.Ahadeth.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(color: Colors.amber))
                      : ListView.separated(
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    HadethDetails.routename,
                                    arguments: provider.Ahadeth[index]);
                              },
                              child: Text(
                                provider.Ahadeth[index].name,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            );
                          },
                          separatorBuilder: (_, index) {
                            return Divider(
                              color: Mytheme.goldcolor,
                              endIndent: 4,
                              indent: 2,
                              thickness: 1,
                            );
                          },
                          itemCount: provider.Ahadeth.length))
            ],
          ),
        );
      },
    );
  }
}

class AhadesData{
  String name;
  List<String> content;

  AhadesData({required this.name, required this.content});
}
