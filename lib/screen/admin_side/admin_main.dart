import 'package:currency_exchange/screen/admin_side/dashboard.dart';
import 'package:currency_exchange/screen/admin_side/history.dart';
import 'package:currency_exchange/screen/admin_side/users.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../../themes/color.dart';

class AdminMain extends StatefulWidget {
  const AdminMain({super.key});

  @override
  State<AdminMain> createState() => _AdminMainState();
}

class _AdminMainState extends State<AdminMain> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.greyColor.shade200,
        body: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: AppColor.primaryColor,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.whiteColor,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 20),
                    child: const ReusableText(
                      title: 'Logo',
                      size: 10,
                      color: Color(0xffC7C7C7),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: AppColor.whiteColor,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                          color: Color(0xffC7C7C7),
                        ),
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xffC7C7C7),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(), // To evenly distribute actions
                  IconButton(
                    onPressed: () {
                      // Handle notification action
                    },
                    icon: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.asset(
                          'images/icon/notification.png',
                          height: 15,
                          width: 15,
                          color: AppColor.whiteColor,
                        ),
                        const CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle filter action
                    },
                    icon: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.asset(
                          'images/icon/Filter.png',
                          height: 15,
                          width: 15,
                          color: AppColor.whiteColor,
                        ),
                        const CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle mail action
                    },
                    icon: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.asset(
                          'images/icon/mail.png',
                          color: AppColor.whiteColor,
                          height: 15,
                          width: 15,
                        ),
                        const CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle user profile action
                    },
                    icon: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Image.asset(
                          'images/john.png',
                          height: 30,
                          width: 30,
                        ),
                        const CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/icon/Category.png',
                    height: 15,
                    width: 15,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: AppColor.whiteColor,
                    padding: const EdgeInsets.only(top: 20),
                    height: AppUtils.getHeight(context, 0.9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 0;
                              });
                            },
                            child: FittedBox(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/admin_icon/Vector.png',
                                    height: 20,
                                    width: 20,
                                    color: currentIndex == 0
                                        ? AppColor.primaryColor
                                        : AppColor.greyColor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ReusableText(
                                    title: 'DashBoard',
                                    size: 20,
                                    weight: FontWeight.w500,
                                    color: currentIndex == 0
                                        ? AppColor.primaryColor
                                        : AppColor.greyColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                setState(() {
                                  currentIndex = 1;
                                });
                              });
                            },
                            child: FittedBox(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/admin_icon/mingcute_history-2-fill.png',
                                    height: 20,
                                    width: 20,
                                    color: currentIndex == 1
                                        ? AppColor.primaryColor
                                        : AppColor.greyColor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ReusableText(
                                    title: 'History',
                                    size: 20,
                                    weight: FontWeight.w500,
                                    color: currentIndex == 1
                                        ? AppColor.primaryColor
                                        : AppColor.greyColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 2;
                              });
                            },
                            child: FittedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/admin_icon/ph_user-list-fill.png',
                                    height: 20,
                                    width: 20,
                                    color: currentIndex == 2
                                        ? AppColor.primaryColor
                                        : AppColor.greyColor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ReusableText(
                                    title: 'Users',
                                    size: 20,
                                    weight: FontWeight.w500,
                                    color: currentIndex == 2
                                        ? AppColor.primaryColor
                                        : AppColor.greyColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: currentIndex == 0
                      ? const DashBoardScreen()
                      : currentIndex == 1
                          ? const AdminHistory()
                          : const Users(),
                )
              ],
            ),
          ],
        ));
  }
}
