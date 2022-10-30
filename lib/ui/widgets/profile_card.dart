import 'package:atb_plugin/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final String pathToIcon;
  final VoidCallback onPressed;

  static const Color _cardBackgroundColor = Color(0xFFE8E8E8);
  static const double _leadingSize = 30.0;
  static const String _trailingPath = 'assets/svg/chevron_down.svg';
  static const double _trailingSize = 24.0;
  static const Color _trailingColor = Color(0xFFA9A9A9);

  const ProfileCard({
    Key? key,
    required this.title,
    required this.pathToIcon,
    required this.onPressed,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      child: Container(
        decoration: BoxDecoration(
          color: _cardBackgroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          onTap: onPressed,
          leading: SvgPicture.asset(
              pathToIcon,
              color: Colors.black,
              width: _leadingSize,
            height: _leadingSize,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: SvgPicture.asset(
            _trailingPath,
            color: _trailingColor,
            width: _trailingSize,
            height: _trailingSize,
          ),
          visualDensity: const VisualDensity(vertical: 1),
        ),
      ),
    );
  }
}
