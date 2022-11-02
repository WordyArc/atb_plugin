import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color indicatorColor;
  final VoidCallback onPressed;


  static const double cardWidth = double.infinity;
  static const double indicatorWidth = 4;
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const double shadowElevation = 3.0;
  static const double borderRadius = 4.0;
  static const Color titleTextColor = Color(0xFF090C17);
  static const double titleTextSize = 14.0;
  static const FontWeight titleFontWeight = FontWeight.w600;
  static const Color subtitleTextColor = Color(0xFF757575);
  static const double subtitleTextSize = 14.0;
  static const FontWeight subtitleFontWeight = FontWeight.w400;


  const BookingCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.indicatorColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: shadowElevation,
      child: GestureDetector (
        onTap: onPressed,
        child: Container(
          width: cardWidth,
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            children: [
              Container(
                width: indicatorWidth,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: indicatorColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(borderRadius), bottomLeft: Radius.circular(borderRadius),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: titleTextColor,
                        fontSize: titleTextSize,
                        fontWeight: titleFontWeight,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: subtitleTextColor,
                        fontSize: titleTextSize,
                        fontWeight: subtitleFontWeight,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
