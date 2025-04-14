import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_arch/core/resources/app_colors.dart';
import 'package:sample_arch/core/resources/styles_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
    this.height,
    this.loading = false,
    this.textStyle,
    this.backgroundColor,
    this.indicatorBackgroundColor,
    this.widget,
    this.width,
  });

  final void Function()? onPressed;
  final String text;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final bool loading;
  final Color? indicatorBackgroundColor;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56,
      width: width ?? double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: onPressed == null
                ? AppColors.grey
                : backgroundColor ?? AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: loading ? null : onPressed,
          child: loading
              ? CupertinoActivityIndicator(
                  color: indicatorBackgroundColor ?? AppColors.white,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget ?? const SizedBox.shrink(),
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: textStyle ??
                          AppTextStyle.getBoldStyle(
                            fontSize: 16,
                            color: onPressed == null
                                ? AppColors.grey
                                : AppColors.white,
                          ),
                    ),
                  ],
                )),
    );
  }
}
