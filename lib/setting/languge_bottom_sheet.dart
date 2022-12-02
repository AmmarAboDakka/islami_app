import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme/My_Theme.dart';
import 'package:islami_application/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LangugeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      width: double.infinity,
      color: Mytheme.goldcolor,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                provider.ChangeLanguge("en");
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Icon(
                    Icons.done_all,
                    size: 30,
                    color: provider.LangugeCode == "ar"
                        ? Mytheme.goldcolor
                        : Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                provider.ChangeLanguge("ar");
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.arabic,
                      style: Theme.of(context).textTheme.headline2),
                  Icon(
                    Icons.done_all,
                    size: 30,
                    color: provider.LangugeCode == "en"
                        ? Mytheme.goldcolor
                        : Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
