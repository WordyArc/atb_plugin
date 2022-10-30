import 'package:atb_plugin/ui/widgets/about_card.dart';
import 'package:atb_plugin/ui/widgets/gradient_elevated_button.dart';
import 'package:atb_plugin/ui/widgets/profile_sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:atb_plugin/globals.dart';

import '../widgets/profile_card.dart';
import '../widgets/profile_clipper.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                  AboutCard(title: 'Email', subtitle: 'Klenin@Gmail.com', pathToIcon: 'assets/svg/email.svg', onPressed: onPressed,),
                  AboutCard(title: 'Телефон', subtitle: '88003555500', pathToIcon: 'assets/svg/phone.svg', onPressed: onPressed,),
                  AboutCard(title: 'Должность', subtitle: 'Разработчик над разработчиками', pathToIcon: 'assets/svg/profile.svg', onPressed: onPressed,),
                  AboutCard(title: 'Адресс', subtitle: 'г. Владивосток, ДВФУ', pathToIcon: 'assets/svg/home.svg', onPressed: onPressed,),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }

}
