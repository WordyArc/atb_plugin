import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:atb_plugin/globals.dart';

import '../widgets/profile_card.dart';
import '../widgets/profile_clipper.dart';
import '../widgets/profile_sliver_appbar.dart';

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
          const ProfileSliverAppbar(pathToImage: profileImage, userName: 'Александр Кленин', role: 'Администратор'),

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
