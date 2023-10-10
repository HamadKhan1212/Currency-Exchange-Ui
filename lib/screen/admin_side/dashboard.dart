import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../../widget/charts_admin.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ReusableText(
            title: 'Dashboard',
            size: 35,
            weight: FontWeight.w600,
          ),
          RichText(
            text: const TextSpan(
                text: 'Home /',
                style: TextStyle(color: AppColor.primaryColor),
                children: [
                  TextSpan(
                    text: ' Dashboard',
                    style: TextStyle(color: AppColor.greyColor),
                  )
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: AppUtils.getHeight(context, 0.35),
                      width: AppUtils.getWidth(context, 0.3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.whiteColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const ReusableText(
                                title: 'Earning',
                                weight: FontWeight.bold,
                                size: 18,
                              ),
                              SizedBox(
                                width: AppUtils.getWidth(context, 0.05),
                              ),
                              const ReusableText(
                                title: '\$211.200',
                                size: 18,
                                color: AppColor.primaryColor,
                              )
                            ],
                          ),
                          SizedBox(
                            height: AppUtils.getHeight(context, 0.02),
                          ),
                          const ReusableText(
                            title: 'January-July2023',
                            size: 10,
                            color: Color(0xffC7C7C7),
                          ),
                          Expanded(child: LineChartSample())
                        ],
                      ),
                    ),
                    SizedBox(
                      width: AppUtils.getWidth(context, 0.05),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: AppUtils.getHeight(context, 0.35),
                      width: AppUtils.getWidth(context, 0.3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.whiteColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ReusableText(
                            title: 'Traffic',
                            size: 18,
                            weight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: AppUtils.getHeight(context, 0.02),
                          ),
                          const ReusableText(
                            title: 'January 1,2022- December 31,2022',
                            color: Color(0xffC7C7C7),
                          ),
                          Expanded(
                            child: BarChartSampleByWeek(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppUtils.getHeight(context, 0.03),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: AppUtils.getHeight(context, 0.35),
                      width: AppUtils.getWidth(context, 0.3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              colors: [Color(0xff4D44D1), Color(0xff8077EA)])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              RichText(
                                  text: const TextSpan(
                                      text: '26K',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: AppColor.whiteColor,
                                      ),
                                      children: [
                                    TextSpan(
                                      text: '(-23.4% )',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColor.whiteColor,
                                      ),
                                    )
                                  ])),
                              const Spacer(),
                              const Icon(
                                Icons.more_vert,
                                color: AppColor.whiteColor,
                              )
                            ],
                          ),
                          const ReusableText(
                            title: 'Users',
                            color: AppColor.whiteColor,
                          ),
                          SizedBox(
                            height: AppUtils.getHeight(context, 0.02),
                          ),
                          Expanded(child: LineChartSample())
                        ],
                      ),
                    ),
                    SizedBox(
                      width: AppUtils.getWidth(context, 0.05),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: AppUtils.getHeight(context, 0.35),
                      width: AppUtils.getWidth(context, 0.25),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xffE8BC05), Color(0xffFAD03E)]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              RichText(
                                  text: const TextSpan(
                                      text: '26K',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: AppColor.whiteColor,
                                      ),
                                      children: [
                                    TextSpan(
                                      text: '(-23.4% )',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColor.whiteColor,
                                      ),
                                    )
                                  ])),
                              const Spacer(),
                              const Icon(
                                Icons.more_vert,
                                color: AppColor.whiteColor,
                              )
                            ],
                          ),
                          const ReusableText(
                            title: 'Conversion Rate',
                            size: 10,
                            color: AppColor.whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
