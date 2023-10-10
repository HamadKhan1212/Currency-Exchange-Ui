import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/item_list/item_list.dart';
import '../../../../../../widget/reusable_text.dart';
import 'scan/scan_qr_code/scan_qrcode.dart';

class BottomNevBar extends StatefulWidget {
  const BottomNevBar({super.key});

  @override
  _BottomNevBarState createState() => _BottomNevBarState();
}

class _BottomNevBarState extends State<BottomNevBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        color: const Color(0xff503981),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 70,
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: SizedBox(
                  height: 70,
                  width: 60,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 30,
                        color: _currentIndex == 0
                            ? Colors.white
                            : const Color(0xff503981),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'images/icon/home.png',
                        color: _currentIndex == 0 ? Colors.white : Colors.black,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      ReusableText(
                        weight: FontWeight.w500,
                        title: 'Home',
                        size: 10,
                        color: _currentIndex == 0 ? Colors.white : Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: SizedBox(
                  height: 70,
                  width: 60,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 30,
                        color: _currentIndex == 1
                            ? Colors.white
                            : const Color(0xff503981),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'images/icon/stats.png',
                        color: _currentIndex == 1 ? Colors.white : Colors.black,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      ReusableText(
                        weight: FontWeight.w500,
                        title: 'Stats',
                        size: 11,
                        color: _currentIndex == 1 ? Colors.white : Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: SizedBox(
                  height: 70,
                  width: 60,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 30,
                        color: _currentIndex == 2
                            ? Colors.white
                            : const Color(0xff503981),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'images/icon/history.png',
                        color: _currentIndex == 2 ? Colors.white : Colors.black,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ReusableText(
                        weight: FontWeight.w500,
                        title: 'History',
                        size: 10,
                        color: _currentIndex == 2 ? Colors.white : Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                child: SizedBox(
                  height: 70,
                  width: 60,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 30,
                        color: _currentIndex == 3
                            ? Colors.white
                            : const Color(0xff503981),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Image.asset(
                        'images/icon/profile.png',
                        color: _currentIndex == 3 ? Colors.white : Colors.black,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        weight: FontWeight.w500,
                        title: 'Profile',
                        size: 10,
                        color: _currentIndex == 3 ? Colors.white : Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          AppUtils.navigateTo(context, const Scan());
        },
        child: Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xff503981)),
          child: Image.asset(
            'images/icon/Scan.png',
          ),
        ),
      ),
    );
  }
}
