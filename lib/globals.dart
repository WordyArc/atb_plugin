library my_prj.globals;

import 'dart:ui';

import 'package:flutter/material.dart'; //Объявляем его как либу.
//Список глобальных переменных с значениями по умолчанию.
// asset path

const String profileImage = 'assets/images/theKlenin.png';
const String atbLogo = 'assets/svg/atb_logo-orange_black.svg';
Color atbMainColor = const Color(0xFFFE5000);
Gradient atbGradient = const LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: [
    Color(0xFFFF5E3A),
    Color(0xFFFF9500),
  ],
);

Color indicatorRed = const Color(0xFFFF5630);
Color indicatorGreen = const Color(0xFF36B37E);
Color indicatorYellow = const Color(0xFFFF9800);

bool AllOK = false;
int USERID = 0;
String somewonetext = "LOL";

