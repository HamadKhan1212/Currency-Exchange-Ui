import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../themes/color.dart';

class UserTableRow extends StatelessWidget {
  final String number;
  final String image;
  final String name;
  final String role;
  final String dateCreated;
  final String status;
  final Color statusColor;
  const UserTableRow({
    super.key,
    required this.number,
    required this.image,
    required this.name,
    required this.role,
    required this.dateCreated,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2, bottom: 2, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: ReusableText(
                  title: number,
                  size: 16,
                  weight: FontWeight.w500,
                  color: const Color(0xff898989),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Image.asset(
                      image,
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ReusableText(
                      title: name,
                      size: 16,
                      weight: FontWeight.w500,
                      color: const Color(0xff898989),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: ReusableText(
                  title: dateCreated,
                  size: 16,
                  weight: FontWeight.w500,
                  color: const Color(0xff898989),
                ),
              ),
              Expanded(
                flex: 2,
                child: ReusableText(
                  title: role,
                  size: 16,
                  weight: FontWeight.w500,
                  color: const Color(0xff898989),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: statusColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ReusableText(
                      title: status,
                      size: 16,
                      weight: FontWeight.w500,
                      color: const Color(0xff898989),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: AppColor.primaryColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.cancel,
                      color: AppColor.redColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.5,
        ),
      ],
    );
  }
}
