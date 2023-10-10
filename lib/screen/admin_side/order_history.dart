import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../../widget/order_table_row_admin.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  int currentIndex = 0;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: AppUtils.getHeight(context, 0.02),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xffF5E1C8),
                Color(0xffFFE4FF),
                Color(0xffBDC1FC),
                Color(0xffC1C1F1),
                Color(0xffE9BFFB),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const ReusableText(
                        title: 'Order history ',
                        size: 48,
                        weight: FontWeight.w700,
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffC7C5CA),
                            ),
                            borderRadius: BorderRadius.circular(7)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.cloud_download_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            ReusableText(
                              title: 'Download',
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: AppUtils.getWidth(context, 0.02),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: AppColor.primaryColor),
                        child: const Center(
                          child: ReusableText(
                            title: 'New Order',
                            color: AppColor.whiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  const ReusableText(
                    title: 'Manage your recent orders and invoices.',
                    color: Color(0xff5D5D5D),
                    size: 24,
                    weight: FontWeight.w500,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Divider(
                      thickness: 2,
                      color: Color(0xffC7C5CA),
                    ),
                  ),
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                            title: 'Orders Details',
                            size: 24,
                            weight: FontWeight.w500,
                          ),
                          ReusableText(
                            title: 'Review and Manage recent orders.',
                            color: Color(0xff5D5D5D),
                            size: 24,
                            weight: FontWeight.w500,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = 0;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: currentIndex == 0
                                  ? const Color(0xffC7C5CA)
                                  : AppColor.whiteColor,
                              border:
                                  Border.all(color: const Color(0xff5D5D5D)),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(7),
                                  bottomLeft: Radius.circular(8))),
                          child: const ReusableText(
                            title: 'View All',
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = 1;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: currentIndex == 1
                                ? const Color(0xffC7C5CA)
                                : AppColor.whiteColor,
                            border: const Border(
                                top: BorderSide(
                                  color: Color(0xff5D5D5D),
                                ),
                                bottom: BorderSide(color: Color(0xff5D5D5D))),
                          ),
                          child: const ReusableText(
                            title: 'Your Files',
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = 2;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: currentIndex == 2
                                  ? const Color(0xffC7C5CA)
                                  : AppColor.whiteColor,
                              border:
                                  Border.all(color: const Color(0xff5D5D5D)),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(7),
                                  bottomRight: Radius.circular(8))),
                          child: const ReusableText(
                            title: 'Shared Files',
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              color: const Color(0xff5D5D5D),
                            )),
                        width: 300,
                        height: 40,
                        child: TextFormField(
                          style: TextStyle(color: Color(0xff898989)),
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10, top: 7),
                              border: InputBorder.none,
                              hintText: 'search....',
                              prefixIcon: Icon(Icons.search)),
                        ),
                      )
                    ],
                  ),
                  Align(
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xffC7C5CA),
                                                    )),
                                                child: isChecked
                                                    ? const Icon(
                                                        Icons.check,
                                                        color:
                                                            AppColor.blackColor,
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
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 2,
                                      child: ReusableText(
                                        title: 'Customer',
                                      ),
                                    ),
                                    const Expanded(
                                      child: ReusableText(
                                        title: 'Progress',
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
