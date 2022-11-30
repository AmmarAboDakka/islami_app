import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/My_Theme.dart';
import 'package:islami_application/ahades/hadeth_det.dart';


class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
List<AhadesData>Ahadeth=[];

  @override
  Widget build(BuildContext context) {
    if(Ahadeth.isEmpty){readfile();}

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
              child:Ahadeth.isEmpty? Center(child: CircularProgressIndicator(color:Colors.amber)):ListView.separated(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(HadethDetails.routename,
                        arguments: Ahadeth[index]);
                      },
                      child: Text(
                        Ahadeth[index].name,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,

                      ),
                    );
                  },
                  separatorBuilder: (_,index) {
                    return Divider(
                      color: Mytheme.goldcolor,
                      endIndent: 4,
                      indent: 2,
                      thickness: 1,
                    );
                  },
                  itemCount: Ahadeth.length))
        ],
      ),
    );
  }

readfile()async{
  String content=await rootBundle.loadString("assets/files2/ahadeth.txt");
  List<String>Allahadeth=content.trim().split("#\r\n");
for(int i=0;i<Allahadeth.length;i++){
  String hadeth=Allahadeth[i];
  List<String>hadethlines=hadeth.split("\n");
  String title=hadethlines[0];
  hadethlines.removeAt(0);
  AhadesData ahadethData=AhadesData(name: title, content: hadethlines);
  Ahadeth.add(ahadethData);
}
setState(() {

});

}
}



class AhadesData{
  String name;
  List<String> content;

  AhadesData({required this.name, required this.content});
}
