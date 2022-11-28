import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../My_Theme.dart';

class AhadesNameDetails extends StatefulWidget {
  static const String RouteName = "ahadesnamedetails";

  @override
  State<AhadesNameDetails> createState() => _AhadesNameDetailsState();
}

class _AhadesNameDetailsState extends State<AhadesNameDetails> {
  List<String>hades=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as AhadesNameDetailsarg;
    if(hades.isEmpty){
      readFiles2(args.index);
    }

    return Stack(
      children: [
        Image.asset("assets/images/bg.png"),
        Scaffold(
            appBar: AppBar(

              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                "${args.name}",
                style: Theme.of(context).textTheme.headline1,
              ),

            ),
            body: Container(
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.symmetric(vertical:65 ,horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all()

              ),
              child:hades.isEmpty?
              const Center(child: CircularProgressIndicator(color:Colors.amber),):
              ListView.separated(

                separatorBuilder: (_,index){
                  return Divider(
                    color: Mytheme.goldcolor,
                    thickness: 2,
                  );
                },
                itemCount: hades.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(hades[index],textAlign: TextAlign.center,);
                },),
            )

        ),
      ],
    );
  }

  Future<void> readFiles2(int index) async {
    String conste2 =await rootBundle.loadString("assets/files2/${index+1}.txt");
    var lines2=conste2.split("\n");
    setState(() {
      hades=lines2;
    });
  }
}

class AhadesNameDetailsarg{
  String name;
  int index;

  AhadesNameDetailsarg({required this.name, required this.index});
}
