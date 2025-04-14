import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_arch/core/resources/app_colors.dart';

class SysOverlayStyle {
  static appSystemStyle({Color statusBarColor = AppColors.transparent}) {
    return SystemUiOverlayStyle(
      statusBarColor: statusBarColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    );
  }

  static softSystemStyle() {
    return const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    );
  }

  static Future<void> hideStatusBar() {
    return SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
  }
}
