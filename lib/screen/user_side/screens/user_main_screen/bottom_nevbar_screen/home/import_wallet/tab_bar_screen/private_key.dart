import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class PrivateKey extends StatelessWidget {
  const PrivateKey({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ReusableText(
          title: 'PrivateKey',
          size: 20,
          color: AppColor.primaryColor,
          weight: FontWeight.w600,
        )
      ],
    );
  }
}
