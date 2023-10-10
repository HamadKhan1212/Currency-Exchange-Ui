import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../themes/color.dart';

class ReusableButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isLoading;
  final Color buttonColor;
  final double? radius;
  final Color? titleColor;
  const ReusableButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.isLoading = false,
      this.buttonColor = AppColor.primaryColor,
      this.radius,
      this.titleColor = AppColor.whiteColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius!), color: buttonColor),
        child: isLoading
            ? const CircularProgressIndicator(
                color: AppColor.redColor,
              )
            : ReusableText(
                title: title,
                size: 16,
                weight: FontWeight.w700,
                color: titleColor,
              ),
      ),
    );
  }
}
