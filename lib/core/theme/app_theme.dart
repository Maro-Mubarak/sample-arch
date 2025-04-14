// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sample_arch/core/resources/app_colors.dart';
import 'package:sample_arch/core/resources/font_manager.dart';

ThemeData get appTheme => ThemeData(
      primaryColor: AppColors.primary,
      fontFamily: FontConstants.mainFont,
      useMaterial3: true,
    );
