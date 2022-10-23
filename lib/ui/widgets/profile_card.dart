import 'package:atb_plugin/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String pathToIcon;
  static const double _iconSize = 50.0;

  const ProfileCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.pathToIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: _iconSize,
                minHeight: _iconSize,
                maxWidth: _iconSize,
                maxHeight: _iconSize,
              ),
              child: SvgPicture.asset(
                  pathToIcon,
                  color: const Color(atbMainColor),
              ),
            ),
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Container(
              width: 5,
              color: Colors.grey,
            ),
            subtitle: Text(subtitle),
          ),
        ],
      ),
    );
  }
}
