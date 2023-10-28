/*
=============
Author: Don Freddy
Github: https://github.com/donfreddy
Website: https://donfreddy.com
=============
Application: Troona Music
Homepage: https://github.com/donfreddy/troona
License: https://github.com/donfreddy/troona/blob/main/LICENSE
Copyright: © 2023, Don Freddy. All rights reserved.
=============
*/

import 'package:flutter/material.dart';
import 'package:troona/constants/constants.dart';

//--------------------------- Colors ----------------------------------

// Primary and Material color
const Color primaryColor = Color(0xffdd3f5d);
const MaterialColor primaryColorMaterial = MaterialColor(
  0xffdd3f5d,
  <int, Color>{
    50: Color.fromRGBO(221, 63, 93, .1),
    100: Color.fromRGBO(221, 63, 93, .2),
    200: Color.fromRGBO(221, 63, 93, .3),
    300: Color.fromRGBO(221, 63, 93, .4),
    400: Color.fromRGBO(221, 63, 93, .5),
    500: Color.fromRGBO(221, 63, 93, .6),
    600: Color.fromRGBO(221, 63, 93, .7),
    700: Color.fromRGBO(221, 63, 93, .8),
    800: Color.fromRGBO(221, 63, 93, .9),
    900: Color.fromRGBO(221, 63, 93, 1),
  },
);

// must use
Color whiteColor = const Color(0xFFF4F6FD);
Color darkColor = const Color(0xFF35363A);

// LightTheme color
const Color lightTextColor = Color(0xFF35363A);
const Color lightBgColor = Color(0xFFDBDEE2);
//const Color lightBgColor = Color(0xFFC8CED4);

// DarkTheme color
//const Color darkBgColor = Color(0xFF11263C);
// const Color darkBgColor = Color(0xFF152843);
const Color darkBgColor = Color(0xFF21272C);

// text color
const Color textWhiteColor = Color(0xFFF5F5F5);
const Color textGrayColor = Color(0xFF697075);

const Color dark = Color(0xFF21272C);
const Color dark2 = Color(0xFF24292D);

// accent color
const Color accentColor = Color(0xffdd3f5d);
const Color accentColor2 = Color(0xFF1DB854);
const Color accentColor3 = Color(0xFF38a3a5);
const Color accentColor4 = Color(0xFFe76f51);
const Color accentColor5 = Color(0xFFfee440);
const Color accentColor6 = Color(0xFF9b5de5);
const Color accentColor7 = Color(0xFF4361ee);
const Color accentColor8 = Color(0xFFff70a6);

// // Theme color
// const Color textColor = Color(0xff444444);
// const Color subTextColor = Color(0xff9e9e9e);
// const Color bgColor = Color(0xffdedede);
//
// // DarkTheme color
// const Color textColorDark = Color(0xffcccccc);
// const Color subTextColorDark = Color(0xff858585);
// const Color bgColordark = Color(0xff1e1e1e);

//--------------------------- Text style -------------------------------------

TextStyle appBarTextStyle = const TextStyle(
  fontFamily: kFontFamily,
  fontSize: 24.0,
  fontWeight: FontWeight.w700,
);
