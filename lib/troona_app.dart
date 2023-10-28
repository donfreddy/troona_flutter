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

import 'package:flutter/services.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:troona/config/routes/route.dart';
import 'package:troona/config/routes/route_path.dart';
import 'package:troona/config/themes/theme.dart';
import 'package:troona/constants/constants.dart';

class TroonaApp extends StatelessWidget {
  const TroonaApp({super.key});

  @override
  Widget build(BuildContext context) {
    // init screenUtil library
    ScreenUtil.init(context);

    //Todo: Get it from user preferencesÏ
    const accentColor = 0xffdd3f5d;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          // statusBarColor: Colors.transparent,
          // systemNavigationBarColor: Colors.transparent,
          // statusBarIconBrightness: AppTheme.themeMode == ThemeMode.system,
          systemNavigationBarColor: NeumorphicTheme.baseColor(context),
          systemNavigationBarIconBrightness: Brightness.dark),
      child: NeumorphicApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        debugShowCheckedModeBanner: false,
        locale: context.locale,
        title: kAppName,
        theme: lightTheme(accentColor),
        darkTheme: darkTheme(accentColor),
        initialRoute: RoutePath.loading,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
