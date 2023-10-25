import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:troona/core/config/routes/route.dart';
import 'package:troona/core/config/routes/route_path.dart';
import 'package:troona/core/config/themes/theme.dart';
import 'package:troona/core/constants/constants.dart';

class TroonaApp extends StatelessWidget {
  const TroonaApp({super.key});

  @override
  Widget build(BuildContext context) {
    // init screenUtil library
    ScreenUtil.init(context);

    //Todo: Get it from user preferencesÏ
    const accentColor = 0xffdd3f5d;

    return NeumorphicApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      title: kAppName,
      theme: lightTheme(accentColor),
      darkTheme: darkTheme(accentColor),
      initialRoute: RoutePath.loading,
      onGenerateRoute: generateRoute,
    );
  }
}
