import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
          centerTitle: true,
          title: ReusableText(
            title: 'Settings',
            size: 20,
            weight: FontWeight.w600,
          ),
          backgroundColor: AppColor.primaryColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColor.whiteColor,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ReusableText(
                title: 'Common',
                color: AppColor.whiteColor,
                size: 20,
                weight: FontWeight.w600,
              ),
            ),
            ReusableRow(
              title: 'Language',
              icon: 'images/icon/setting_screen_icon/globe.png',
            ),
            ReusableRow(
              title: 'Theme',
              icon: 'images/icon/setting_screen_icon/theme.png',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ReusableText(
                title: 'Account',
                color: AppColor.whiteColor,
                size: 20,
                weight: FontWeight.w600,
              ),
            ),
            ReusableRow(
              title: 'Profile',
              icon: 'images/icon/setting_screen_icon/person.png',
            ),
            ReusableRow(
              title: 'Notification',
              icon: 'images/icon/setting_screen_icon/notification_2.png',
            ),
            ReusableRow(
              title: 'Sign Out',
              icon: 'images/icon/setting_screen_icon/uis_signout.png',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ReusableText(
                title: 'Security',
                color: AppColor.whiteColor,
                size: 20,
                weight: FontWeight.w600,
              ),
            ),
            ReusableRow(
              title: 'Change Password',
              icon: 'images/icon/setting_screen_icon/change_password.png',
            ),
            ReusableRow(
              title: 'Two-Factor Authentication',
              icon: 'images/icon/setting_screen_icon/authentication.png',
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  final String title;
  final String icon;
  const ReusableRow({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Image.asset(icon),
          SizedBox(
            width: 15,
          ),
          ReusableText(
            title: title,
            color: AppColor.whiteColor,
            size: 20,
            weight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
