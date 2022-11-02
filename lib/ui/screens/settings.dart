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
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 0,
                pinned: true,
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: atbGradient,
                  ),
                  child: const FlexibleSpaceBar(
                    background: Center(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Основные настройки',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [


                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Аккаунт',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 370,
                            child: Column(
                              children: const [
                                Card(
                                  child: ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    title: Text(
                                      'Редактировать профиль',
                                    ),
                                  ),
                                ),
                                Card(
                                  child: ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    title: Text(
                                      'Сменить пароль',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),


                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Приложение',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 370,
                            child: Column(
                              children: const [
                                Card(
                                  child: ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    title: Text(
                                      'Оформление',
                                    ),
                                  ),
                                ),
                                Card(
                                  child: ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    title: Text(
                                      'Выбрать язык',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),



                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
