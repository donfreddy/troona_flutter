import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:troona/core/constants/constants.dart';

import 'style.dart';

//--------------------------- Troona Theme -------------------------------

NeumorphicThemeData lightTheme(int accentColor) {
  return NeumorphicThemeData(
    defaultTextColor: lightTextColor,
    baseColor: lightBgColor,
    accentColor: Color(accentColor),
    variantColor: Color(accentColor),
    intensity: 0.8,
    lightSource: LightSource.topLeft,
    depth: 2,
    textTheme: textTheme(ThemeData.light().textTheme, lightTextColor),
    iconTheme: _customIconTheme(ThemeData.light().iconTheme, lightTextColor),
    shadowDarkColor: const Color(0xFFA3B1C6),
    shadowLightColor: Colors.white,
  );
}

NeumorphicThemeData darkTheme(int accentColor) {
  final darkTextColor = Colors.white.withOpacity(0.8);
  return NeumorphicThemeData(
    defaultTextColor: darkTextColor,
    baseColor: darkBgColor,
    accentColor: Color(accentColor),
    variantColor: Color(accentColor),
    intensity: 0.8,
    lightSource: LightSource.topLeft,
    shadowDarkColor: Colors.black87,
    shadowLightColor: whiteColor.withOpacity(0.5),
    depth: 2,
    iconTheme: _customIconTheme(ThemeData.dark().iconTheme, darkTextColor),
    textTheme: textTheme(ThemeData.dark().textTheme, darkTextColor),
  );
}

IconThemeData _customIconTheme(IconThemeData original, Color color) {
  return original.copyWith(color: color);
}

//--------------------------- screen height & width ----------------------------

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

//----------------------------- Text theme -------------------------------------

TextTheme textTheme(TextTheme mode, Color color) {
  return mode
      .copyWith(
        displayLarge: mode.displayLarge?.copyWith(
          fontWeight: FontWeight.w300,
          fontSize: 96.0,
        ),
        displayMedium: mode.displayMedium?.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 60.0,
        ),
        displaySmall: mode.displaySmall?.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 48.0,
        ),
        headlineLarge: mode.headlineLarge?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 34.0,
        ),
        headlineMedium: mode.headlineMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 24.0,
        ),
        headlineSmall: mode.headlineSmall?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
        ),
        titleLarge: mode.titleLarge?.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
        titleMedium: mode.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 15.0,
        ),
        bodyLarge: mode.bodyLarge?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 14.0,
        ),
        bodyMedium: mode.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 12.0,
        ),
        labelLarge: mode.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 14.0,
        ),
        bodySmall: mode.bodySmall?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 10.0,
        ),
        labelSmall: mode.labelSmall?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 10.0,
        ),
      )
      .apply(
        fontFamily: kFontFamily,
        displayColor: color,
        bodyColor: color,
        fontSizeFactor: 1.0,
      );
}
