import 'package:atb_plugin/ui/widgets/about_card.dart';
import 'package:atb_plugin/ui/widgets/gradient_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:atb_plugin/globals.dart';

import '../widgets/profile_card.dart';
import '../widgets/profile_clipper.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  get onPressed => null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('ATB Plug-in Project'),
      ),*/
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Основные настройки',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('MainTitle'),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      // color: Theme.of(context).colorScheme.background,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: Text('Setting 1'),
                        ),
                      ),
                      SizedBox(
                        child: ListTile(
                          title: Text('Setting 2'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
