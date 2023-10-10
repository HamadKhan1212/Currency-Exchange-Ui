import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/utils/item_list/item_list.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../../../../../../widget/charts_admin.dart';
import 'earn_money/earn_money.dart';

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.greyColor.shade200,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: AppUtils.getHeight(context, 0.02),
            ),
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 20,
              ),
              width: double.infinity,
              color: AppColor.whiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: AppUtils.getHeight(context, 0.05),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableText(
                        title: 'Stats',
                        weight: FontWeight.w600,
                        size: 24,
                      ),
                      Icon(
                        Icons.search,
                        size: 40,
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppUtils.getHeight(context, 0.03),
                  ),
                  SizedBox(
                    height: 100,
                    // width: AppUtils.getWidth(context, 0.9),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(
                              listOfMonth.length,
                              (index) => Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        const ReusableText(
                                          title: '2018',
                                        ),
                                        SizedBox(
                                          height:
                                              AppUtils.getHeight(context, 0.01),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              currentIndex = index;
                                            });
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            decoration: BoxDecoration(
                                                color: currentIndex == index
                                                    ? AppColor.primaryColor
                                                    : AppColor.transparentColor,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1,
                                                    color: AppColor.greyColor)),
                                            child: ReusableText(
                                              title: listOfMonth[index],
                                              weight: FontWeight.w500,
                                              color: currentIndex == index
                                                  ? AppColor.whiteColor
                                                  : AppColor.blackColor,
                                              size: 15,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppUtils.getHeight(context, 0.01),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableText(
                      title: 'Net balance',
                      size: 15,
                      weight: FontWeight.w500,
                      color: AppColor.greyColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableText(
                      title: '\$2445.70',
                      size: 20,
                      weight: FontWeight.w600,
                      color: AppColor.blackColor,
                    ),
                    LineChartSample()
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.whiteColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xff39D5FE),
                            child: Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: AppColor.whiteColor,
                            ),
                          ),
                          SizedBox(
                            height: AppUtils.getHeight(context, 0.04),
                          ),
                          const ReusableText(
                            title: 'Income',
                            weight: FontWeight.w500,
                            size: 15,
                            color: AppColor.greyColor,
                          ),
                          SizedBox(
                            height: AppUtils.getHeight(context, 0.01),
                          ),
                          const ReusableText(
                            title: '\$3445.70',
                            weight: FontWeight.w600,
                            size: 22,
                            color: AppColor.blackColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppUtils.getWidth(context, 0.08),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.whiteColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              AppUtils.navigateTo(context, const EarnMoney());
                            },
                            child: const CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColor.primaryColor,
                              child: Icon(
                                Icons.arrow_forward,
                                size: 30,
                                color: AppColor.whiteColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppUtils.getHeight(context, 0.04),
                          ),
                          const ReusableText(
                            title: 'Expense',
                            weight: FontWeight.w500,
                            size: 15,
                            color: AppColor.greyColor,
                          ),
                          SizedBox(
                            height: AppUtils.getHeight(context, 0.01),
                          ),
                          const ReusableText(
                            title: '\$2245.70',
                            weight: FontWeight.w600,
                            size: 22,
                            color: AppColor.blackColor,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
