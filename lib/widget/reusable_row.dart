import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  final String? title;
  final String? detail;
  const ReusableRow({
    super.key,
    this.title,
    this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableText(
                title: title,
                weight: FontWeight.w600,
                size: 15,
              ),
              ReusableText(
                title: detail,
                weight: FontWeight.w600,
                size: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
