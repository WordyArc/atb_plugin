import 'package:atb_plugin/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutCard extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final String subtitle;
  final String pathToIcon;
  static const double _iconSize = 30.0;
  static const double titleFontSize = 16.0;
  static const double subtitleFontSize = 16.0;
  static Color titleColor = const Color(0xFFBEBEBE);

  const AboutCard({
    Key? key,
    this.width = 350,
    this.height = 70,
    required this.title,
    required this.subtitle,
    required this.pathToIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0,bottom: 15.0, right: 15.0, left: 15.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: _iconSize,
                  minHeight: _iconSize,
                  maxWidth: _iconSize,
                  maxHeight: _iconSize,
                ),
                child: SvgPicture.asset(
                  pathToIcon,
                  color: titleColor,
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: titleColor,
                      fontSize: titleFontSize,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: subtitleFontSize,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
