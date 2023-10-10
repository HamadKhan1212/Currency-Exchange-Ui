import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../../widget/user_table_row_admin.dart';
import 'order_history.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.greyColor,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 1,
                            child: ReusableText(
                              title: '#',
                              size: 16,
                              weight: FontWeight.w600,
                              color: AppColor.primaryColor,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ReusableText(
                              title: 'Name',
                              weight: FontWeight.w600,
                              size: 16,
                              color: AppColor.primaryColor,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ReusableText(
                              title: 'Date Created',
                              size: 16,
                              weight: FontWeight.w600,
                              color: AppColor.primaryColor,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ReusableText(
                              title: 'Role',
                              size: 16,
                              weight: FontWeight.w600,
                              color: AppColor.primaryColor,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ReusableText(
                              title: 'Status',
                              size: 16,
                              weight: FontWeight.w600,
                              color: AppColor.primaryColor,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ReusableText(
                              title: 'Action',
                              size: 16,
                              weight: FontWeight.w600,
                              color: AppColor.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(
                        thickness: 1.5,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                    const UserTableRow(
                      number: '1',
                      image: 'images/alexa.png',
                      name: 'Mike jack',
                      role: 'Admin',
                      dateCreated: '14/08/2023',
                      status: 'Active',
                      statusColor: AppColor.greenColor,
                    ),
                    const UserTableRow(
                        number: '2',
                        image: 'images/alexa.png',
                        name: 'Raily Mike',
                        role: 'Publisher',
                        dateCreated: '12/08/2023',
                        statusColor: Colors.yellow,
                        status: 'Inactive'),
                    const UserTableRow(
                        number: '3',
                        image: 'images/alexa.png',
                        name: 'Shaps Jhan',
                        role: 'Suspend',
                        dateCreated: '09/08/2023',
                        statusColor: AppColor.redColor,
                        status: 'Active'),
                    const UserTableRow(
                        number: '4',
                        image: 'images/alexa.png',
                        name: 'Wivek Shes',
                        role: 'Reviewer',
                        dateCreated: '07/08/2023',
                        statusColor: Colors.yellow,
                        status: 'Inactive'),
                    const UserTableRow(
                        number: '5',
                        image: 'images/alexa.png',
                        name: 'Gobs Wok',
                        role: 'Moderator',
                        dateCreated: '05/08/2023',
                        statusColor: AppColor.greenColor,
                        status: 'Active'),
                    const UserTableRow(
                        number: '6',
                        image: 'images/alexa.png',
                        name: 'Shind Tall',
                        role: 'Reviewer',
                        dateCreated: '02/08/2023',
                        statusColor: AppColor.greenColor,
                        status: 'Active'),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 25),
                      child: Row(
                        children: [
                          const ReusableText(
                            title: 'Showing 6 out of 30 entries',
                            color: Color(0xff898989),
                          ),
                          const Spacer(),
                          const ReusableText(
                            title: 'Previous',
                            color: Color(0xff898989),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = 0;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 7),
                                color: currentIndex == 0
                                    ? AppColor.primaryColor
                                    : AppColor.transparentColor,
                                child: ReusableText(
                                    title: '1',
                                    color: currentIndex == 0
                                        ? AppColor.whiteColor
                                        : AppColor.blackColor),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = 1;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 7),
                                color: currentIndex == 1
                                    ? AppColor.primaryColor
                                    : AppColor.transparentColor,
                                child: ReusableText(
                                  title: '2',
                                  color: currentIndex == 1
                                      ? AppColor.whiteColor
                                      : AppColor.blackColor,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = 2;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 7),
                                color: currentIndex == 2
                                    ? AppColor.primaryColor
                                    : AppColor.transparentColor,
                                child: ReusableText(
                                  title: '3',
                                  color: currentIndex == 2
                                      ? AppColor.whiteColor
                                      : AppColor.blackColor,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = 3;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 7),
                                color: currentIndex == 3
                                    ? AppColor.primaryColor
                                    : AppColor.transparentColor,
                                child: ReusableText(
                                  title: '4',
                                  color: currentIndex == 3
                                      ? AppColor.whiteColor
                                      : AppColor.blackColor,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              AppUtils.navigateTo(
                                  context, const OrderHistory());
                            },
                            child: const ReusableText(
                              title: 'Next',
                              color: Color(0xff898989),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
