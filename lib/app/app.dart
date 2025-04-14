import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sample_arch/core/navigation/route_generator.dart';
import 'package:sample_arch/core/resources/app_strings.dart';
import 'package:sample_arch/generated/l10n.dart';

import '../core/theme/app_theme.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: Size(constraints.maxWidth, constraints.maxHeight),
        builder: (context, child) => MaterialApp.router(
          routerConfig: RouterGenerator.router,
          title: AppStrings.appName,
          theme: appTheme,
          locale: Locale('en'),
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: scaffoldMessengerKey,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          builder: (context, child) {
            final mediaQueryData = MediaQuery.of(context);
            final scale = mediaQueryData.textScaler.clamp(
              minScaleFactor: 1.0,
              maxScaleFactor: 1.3,
            );
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: scale),
              child: child ?? const Center(child: Text("No child")),
            );
          },
        ),
      ),
    );
  }
}
