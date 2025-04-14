import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_arch/app/app.dart';
import 'package:sample_arch/core/config/config_prod.dart';
import 'package:sample_arch/core/dependency_injection/services_locator.dart';
import 'package:sample_arch/core/helpers/sentry_helper.dart';
import 'package:sample_arch/core/networking/bloc_observer.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ProductionAppConfig.setup();
  await ScreenUtil.ensureScreenSize();
  await ServicesLocator.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  Bloc.observer = AppObserver();
  await SentryHelper.init();
  runApp(SentryWidget(child: const MyApp()));
}
