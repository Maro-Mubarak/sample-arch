import 'package:flutter/widgets.dart';
import 'package:sample_arch/core/resources/app_colors.dart';
import 'package:sample_arch/core/resources/font_manager.dart';
import 'package:sample_arch/core/resources/styles_manager.dart';

class SampleWidget extends StatelessWidget {
  const SampleWidget({super.key, required this.fact});
  final String fact;

  @override
  Widget build(BuildContext context) {
    return Text(
      fact,
      style: AppTextStyle.getBoldStyle(
        fontSize: FontSize.s20,
        color: AppColors.primary,
      ),
    );
  }
}
