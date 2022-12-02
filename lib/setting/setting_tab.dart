import 'package:flutter/material.dart';
import 'package:islami_application/My_Theme/My_Theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../provider/my_provider.dart';
import 'languge_bottom_sheet.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.language,
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              ShowLangugeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Mytheme.goldcolor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.LangugeCode == "en"
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Icon(
                    Icons.done_all,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.theme,
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Mytheme.goldcolor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all()),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Light",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Icon(
                    Icons.done_all,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLangugeBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LangugeBottomSheet();
        });
  }
}
