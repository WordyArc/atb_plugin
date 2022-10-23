library my_prj.globals;

import 'dart:ui';

import 'package:flutter/material.dart'; //Объявляем его как либу.
//Список глобальных переменных с значениями по умолчанию.
// asset path

const String profileImage = 'assets/images/theKlenin.jpeg';
const String atbLogo = 'assets/svg/atb_logo-orange_black.svg';
Color atbMainColor = const Color(0xFFFE5000);
Gradient atbGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFFE5000),
    Color(0xFFFCA92A),
  ],
);

bool AllOK = false;
int USERID = 0;
String somewonetext = "LOL";

