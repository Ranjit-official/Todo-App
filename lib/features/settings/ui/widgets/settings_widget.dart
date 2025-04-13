import 'package:flutter/material.dart';
import 'package:to_dos/common/tiles/custom_tiles.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key});

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Settings"),
      ),
      body: SafeArea(
          minimum: EdgeInsets.all(24),
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Settings",
                textAlign: TextAlign.start,
              ),
              CustomTiles(
                leading: Icons.format_paint,
                trailing: Icons.arrow_forward_ios,
                title: "Change app color",
              ),
              CustomTiles(
                leading: Icons.format_paint,
                trailing: Icons.arrow_forward_ios,
                title: "Change app typography",
              ),
              CustomTiles(
                leading: Icons.text_format_sharp,
                trailing: Icons.arrow_forward_ios,
                title: "Change app language",
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Imports",
                textAlign: TextAlign.start,
              ),
              CustomTiles(
                leading: Icons.import_contacts_rounded,
                trailing: Icons.arrow_forward_ios,
                title: "Import from Google calendar",
              ),
            ]),
          )),
    );
  }
}
