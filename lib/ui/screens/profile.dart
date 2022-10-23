import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:atb_plugin/globals.dart';

import '../widgets/profile_card.dart';
import '../widgets/profile_clipper.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Stack(
                  children: [
                    Positioned(
                        child: ClipPath(
                          clipper: ProfileClipper(),
                          child: Container(
                            height: 270,
                            decoration:  BoxDecoration(
                              gradient: atbGradient,
                            ),
                          ),
                        )
                    ),
                    Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 110.0),
                          child: Center(
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(73)),
                                  image: DecorationImage(
                                      image: AssetImage(profileImage))
                              ),
                            ),
                          ),
                        )
                    ),

                  ],
                ),
              ),
              const Text(
                'Александр Кленин',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Администратор',
                  style: TextStyle(
                    fontSize: 15,
                    color: atbMainColor,
                  ),
                ),
              ),
              /*Row(
                children: [
                  Spacer(),
                  Text('Бронирований 0'),
                  Container(
                    padding: const EdgeInsets.only(right: 25, left: 25),
                    height: 15,
                    width: 5,
                    color: const Color(0xFFD9D9D9),
                  ),
                  Text('Уведомлений 0'),
                  Spacer(),
                ],
              ),*/
              Column(
                children: const [
                  ProfileCard(
                    title: 'Предстоящие брони',
                    subtitle: '27 декабря',
                    pathToIcon: 'assets/svg/date.svg',
                  ),
                  ProfileCard(
                    title: '???????????????????',
                    subtitle: '??????????',
                    pathToIcon: 'assets/svg/date.svg',
                  ),
                  ProfileCard(
                    title: 'Настройки',
                    subtitle: 'Основные настройки',
                    pathToIcon: 'assets/svg/setting.svg',
                  ),
                  ProfileCard(
                    title: 'Обо мне',
                    subtitle: 'Информация об аккаунте',
                    pathToIcon: 'assets/svg/profile.svg',
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
