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
  void onPressed() {

  }

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
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            expandedHeight: 350,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                            child: ClipPath(
                              clipper: ProfileClipper(),
                              child: Container(
                                height: 270,
                                decoration: BoxDecoration(
                                  gradient: atbGradient,
                                ),
                              ),
                            )),
                        const Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                width: 160,
                                height: 160,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(profileImage,),
                                ),
                              ),
                            ),
                        ),
                      ],
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Александр Кленин',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13.0),
                            child: Text(
                              'Администратор',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: atbMainColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                ProfileCard(
                  title: 'Предстоящие брони',
                  pathToIcon: 'assets/svg/date.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: 'Аккаунт',
                  pathToIcon: 'assets/svg/user.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: 'Настройки',
                  pathToIcon: 'assets/svg/setting.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: 'Поддержка',
                  pathToIcon: 'assets/svg/support.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: 'Выйти',
                  pathToIcon: 'assets/svg/exit.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: '???????????????????',
                  pathToIcon: 'assets/svg/date.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: '???????????????????',
                  pathToIcon: 'assets/svg/setting.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: '???????????????????',
                  pathToIcon: 'assets/svg/profile.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: '???????????????????',
                  pathToIcon: 'assets/svg/date.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: '???????????????????',
                  pathToIcon: 'assets/svg/date.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: '???????????????????',
                  pathToIcon: 'assets/svg/setting.svg',
                  onPressed: onPressed,
                ),
                ProfileCard(
                  title: '???????????????????',
                  pathToIcon: 'assets/svg/profile.svg',
                  onPressed: onPressed,
                ),

              ],
            ),
          )
        ],
      )),
    );
  }
}
