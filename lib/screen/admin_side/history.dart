import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/utils/item_list/item_list.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class AdminHistory extends StatefulWidget {
  const AdminHistory({super.key});
  @override
  State<AdminHistory> createState() => _AdminHistoryState();
}

class _AdminHistoryState extends State<AdminHistory> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration:
                const BoxDecoration(color: AppColor.whiteColor, boxShadow: [
              BoxShadow(
                color: AppColor.greyColor,
                offset: Offset(4, 4),
                blurRadius: 2,
              )
            ]),
            child: Table(
              columnWidths: const {
                1: FlexColumnWidth(2),
              },
              children: [
                TableRow(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: isChecked
                                ? AppColor.primaryColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: AppColor.greyColor.shade500),
                          ),
                          child: isChecked
                              ? const Icon(
                                  Icons.check,
                                  color: AppColor.whiteColor,
                                )
                              : null,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const ReusableText(
                        title: 'Type',
                        size: 18,
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  const ReusableText(
                    title: 'Vendor/Name',
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  const ReusableText(
                    title: 'Date',
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  const ReusableText(
                    title: 'Total',
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  const Row(
                    children: [
                      ReusableText(
                        title: 'Text',
                        size: 18,
                        weight: FontWeight.w600,
                      ),
                      Icon(Icons.keyboard_arrow_up),
                    ],
                  ),
                  const ReusableText(
                    title: 'Category',
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  const ReusableText(
                    title: 'Download',
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                ])
              ],
            )),
        SizedBox(
          height: AppUtils.getHeight(context, 0.8),
          child: ListView.builder(
            itemCount: tableList.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isChecked
                          ? const Color(0xffC7C7C7)
                          : AppColor.transparentColor,
                    ),
                    color: isChecked
                        ? AppColor.whiteColor
                        : const Color(0xfff5f7fa),
                  ),
                  child: StatefulBuilder(
                    builder: (BuildContext context,
                        void Function(void Function()) setState) {
                      return Table(
                        columnWidths: const {
                          1: FlexColumnWidth(2),
                        },
                        children: [
                          TableRow(children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked = !isChecked;
                                      });
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: isChecked
                                            ? AppColor.primaryColor
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: AppColor.greyColor.shade500),
                                      ),
                                      child: isChecked
                                          ? const Icon(
                                              Icons.check,
                                              color: AppColor.whiteColor,
                                            )
                                          : null,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                ReusableText(
                                  title: tableList[index].type,
                                  size: 16,
                                  weight: FontWeight.w500,
                                ),
                              ],
                            ),
                            ReusableText(
                              title: tableList[index].vendor,
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            ReusableText(
                              title: tableList[index].date,
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            ReusableText(
                              title: tableList[index].total,
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            ReusableText(
                              title: tableList[index].text,
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            ReusableText(
                              title: tableList[index].category,
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            ReusableText(
                              title: tableList[index].download,
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                          ])
                        ],
                      );
                    },
                  ));
            },
          ),
        )
      ],
    );
  }
}
