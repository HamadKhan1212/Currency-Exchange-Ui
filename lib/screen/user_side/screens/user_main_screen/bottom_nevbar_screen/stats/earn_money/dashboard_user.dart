import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../../../../../../../widget/charts_admin.dart';

class DashBoardUser extends StatefulWidget {
  const DashBoardUser({super.key});

  @override
  State<DashBoardUser> createState() => _DashBoardUserState();
}

class _DashBoardUserState extends State<DashBoardUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const ReusableText(
            title: 'Total Earning',
            weight: FontWeight.w600,
            color: AppColor.whiteColor,
            size: 20,
          ),
          const ReusableText(
            title: '\$432.00',
            weight: FontWeight.w600,
            size: 30,
            color: AppColor.whiteColor,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            height: AppUtils.getHeight(context, 0.75),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: AppColor.whiteColor),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ReusableText(
                      title: 'Today’s Activity',
                      weight: FontWeight.w600,
                      size: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffD9D9D9),
                      ),
                      child: const Row(
                        children: [
                          ReusableText(
                            title: 'Earning',
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 250, child: LineChartSample()),
                const Row(
                  children: [
                    ReusableText(
                      title: 'Last 7 days',
                      size: 24,
                      weight: FontWeight.w600,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(height: 250, child: BarChartSampleByWeek())
              ],
            ),
          )
        ],
      ),
    );
  }
}
