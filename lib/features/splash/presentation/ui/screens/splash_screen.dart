import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_arch/core/navigation/named_routes.dart';
import 'package:sample_arch/core/resources/app_colors.dart';
import 'package:sample_arch/core/resources/font_manager.dart';
import 'package:sample_arch/core/resources/styles_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go(NamedRoutes.sample.routeName);
          },
          child: Text(
            "Get sample",
            style: AppTextStyle.getBoldStyle(
              fontSize: FontSize.s20,
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
