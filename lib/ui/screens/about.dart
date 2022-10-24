import 'package:atb_plugin/ui/widgets/about_card.dart';
import 'package:atb_plugin/ui/widgets/gradient_elevated_button.dart';
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
                            decoration: BoxDecoration(
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


              Column(
                children: const [
                  AboutCard(title: 'Email', subtitle: 'Klenin@Gmail.com', pathToIcon: 'assets/svg/email.svg'),
                  AboutCard(title: 'Телефон', subtitle: '88003555500', pathToIcon: 'assets/svg/phone.svg'),
                  AboutCard(title: 'Должность', subtitle: 'Разработчик над разработчиками', pathToIcon: 'assets/svg/profile.svg'),
                  AboutCard(title: 'Адресс', subtitle: 'г. Владивосток, ДВФУ', pathToIcon: 'assets/svg/home.svg'),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextButton(onPressed: onPressed,
                    child: const Text(
                      'Выйти из аккаунта',
                      style: TextStyle(
                        color: Color(0xFFDA000A),
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
