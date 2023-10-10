import 'package:currency_exchange/widget/order_table_row_admin.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../themes/color.dart';
import '../utils/app_utils.dart';

class TableContainer extends StatefulWidget {
  const TableContainer({super.key});

  @override
  State<TableContainer> createState() => _TableContainerState();
}

class _TableContainerState extends State<TableContainer> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: AppUtils.getWidth(context, 0.61),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xffC7C5CA))),
        child: Column(
          children: [
            Container(
              height: AppUtils.getHeight(context, 0.01),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(13),
                      topLeft: Radius.circular(13)),
                  gradient: LinearGradient(colors: [
                    Color(0xffF5E1C8),
                    Color(0xffFFE4FF),
                    Color(0xffBDC1FC),
                    Color(0xffC1C1F1),
                    Color(0xffE9BFFB),
                  ])),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Row(
                            // mainAxisAlignment:
                            // MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isChecked = !isChecked;
                                  });
                                },
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: const Color(0xffC7C5CA),
                                      )),
                                  child: isChecked
                                      ? const Icon(
                                          Icons.check,
                                          color: AppColor.blackColor,
                                          size: 15,
                                        )
                                      : null,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const ReusableText(
                                title: 'Invoice',
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Icons.arrow_downward,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        child: ReusableText(
                          title: 'Status',
                          weight: FontWeight.bold,
                        ),
                      ),
                      const Expanded(
                        flex: 2,
                        child: ReusableText(
                          title: 'Customer',
                          weight: FontWeight.bold,
                        ),
                      ),
                      const Expanded(
                        child: ReusableText(
                          title: 'Progress',
                          weight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1.5,
                  color: Color(0xffC7C5CA),
                ),
                const ReusableTableRow(
                    statusIconColor: Color(0xff01683D),
                    invoiceNumber: 'INV-3065',
                    icon: Icons.check,
                    statusColor: Color(0xff01683D),
                    status: 'Paid',
                    image: 'images/alexa.png',
                    title: 'Jane Cooper',
                    subtitle: 'debra.holt@example.com',
                    percentageText: '60',
                    color: Color(0xffDEFFE7),
                    percentage: 0.6),
                const Divider(
                  thickness: 1.5,
                ),
                const ReusableTableRow(
                    statusIconColor: Color(0xff01683D),
                    statusColor: Color(0xff01683D),
                    invoiceNumber: 'INV-3065',
                    icon: Icons.check,
                    color: Color(0xffDEFFE7),
                    status: 'Paid',
                    image: 'images/alexa.png',
                    title: 'Wade Warren',
                    subtitle: 'felicia@example.com',
                    percentageText: '70',
                    percentage: 0.7),
                const Divider(
                  thickness: 1.5,
                ),
                const ReusableTableRow(
                    statusIconColor: Color(0xff01683D),
                    statusColor: Color(0xff01683D),
                    invoiceNumber: 'INV-3065',
                    icon: Icons.check,
                    status: 'Paid',
                    color: Color(0xffDEFFE7),
                    image: 'images/alexa.png',
                    title: 'Jane Cooper',
                    subtitle: 'debra.holt@example.com',
                    percentageText: '70',
                    percentage: 0.7),
                const Divider(
                  thickness: 1.5,
                ),
                const ReusableTableRow(
                    statusIconColor: Color(0xff01683D),
                    statusColor: Color(0xff01683D),
                    invoiceNumber: 'INV-3065',
                    icon: Icons.check,
                    status: 'Paid',
                    color: Color(0xffDEFFE7),
                    image: 'images/alexa.png',
                    title: 'Jane Cooper',
                    subtitle: 'debra.holt@example.com',
                    percentageText: '30',
                    percentage: 0.3),
                const Divider(
                  thickness: 1.5,
                ),
                const ReusableTableRow(
                    statusIconColor: AppColor.blackColor,
                    statusColor: AppColor.blackColor,
                    invoiceNumber: 'INV-3065',
                    icon: Icons.arrow_forward,
                    status: 'Refunded',
                    color: Color(0xffF3F3F3),
                    image: 'images/alexa.png',
                    title: 'Jane Cooper',
                    subtitle: 'debra.holt@example.com',
                    percentageText: '80',
                    percentage: 0.8),
                const Divider(
                  thickness: 1.5,
                ),
                const ReusableTableRow(
                    statusIconColor: Color(0xff01683D),
                    statusColor: Color(0xff01683D),
                    invoiceNumber: 'INV-3065',
                    icon: Icons.check,
                    status: 'Paid',
                    color: Color(0xffDEFFE7),
                    image: 'images/alexa.png',
                    title: 'Jane Cooper',
                    subtitle: 'debra.holt@example.com',
                    percentageText: '20',
                    percentage: 0.2),
                const Divider(
                  thickness: 1.5,
                ),
                const ReusableTableRow(
                    statusIconColor: Color(0xffA90000),
                    statusColor: Color(0xffA90000),
                    invoiceNumber: 'INV-3065',
                    icon: Icons.close,
                    status: 'Cancelled',
                    image: 'images/alexa.png',
                    title: 'Jane Cooper',
                    subtitle: 'debra.holt@example.com',
                    percentageText: '10',
                    color: Color(0xffFFDCDC),
                    percentage: 0.1),
                const Divider(
                  thickness: 1.5,
                ),
                const ReusableTableRow(
                    statusIconColor: Color(0xffA90000),
                    statusColor: Color(0xffA90000),
                    invoiceNumber: 'INV-3065',
                    icon: Icons.close,
                    status: 'Cancelled',
                    color: Color(0xffFFDCDC),
                    image: 'images/alexa.png',
                    title: 'Jane Cooper',
                    subtitle: 'debra.holt@example.com',
                    percentageText: '50',
                    percentage: 0.5),
              ],
            )
          ],
        ),
      ),
    );
  }
}
