import 'package:atb_plugin/ui/widgets/profile_clipper.dart';
import 'package:flutter/material.dart';

import '../../globals.dart';

class ProfileSliverAppbar extends StatelessWidget {
  final String pathToImage;
  final String userName;
  final String role;

  static const double _avatarSize = 160.0;
  static const double _gradientBackgroundHeight = 270.0;

  const ProfileSliverAppbar({
    Key? key,
    required this.pathToImage,
    required this.userName,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      pinned: true,
      expandedHeight: 350,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: ClipPath(
                      clipper: ProfileClipper(),
                      child: Container(
                        height: _gradientBackgroundHeight,
                        decoration: BoxDecoration(
                          gradient: atbGradient,
                        ),
                      ),
                    )),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: _avatarSize,
                      height: _avatarSize,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(pathToImage,),
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
                  Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      role,
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
    );
  }
}
