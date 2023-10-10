import 'package:currency_exchange/screen/admin_side/admin_main.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_textformfield.dart';
import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../widget/reusable_text.dart';

class AdminLogIn extends StatefulWidget {
  const AdminLogIn({super.key});
  static const String id = 'logIn';
  @override
  State<AdminLogIn> createState() => _AdminLogInState();
}

class _AdminLogInState extends State<AdminLogIn> {
  bool visibility = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/loginLogo.png',
            height: AppUtils.getHeight(context, 0.5),
            width: AppUtils.getWidth(context, 0.3),
          ),
          SizedBox(
            width: AppUtils.getWidth(context, 0.05),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReusableText(
                title: 'Log In ',
                weight: FontWeight.w600,
                size: 48,
                color: AppColor.primaryColor,
              ),
              const ReusableText(
                title:
                    'Log in with your data  that you entered during your\nRegistration',
                weight: FontWeight.w400,
                size: 15,
                color: AppColor.primaryColor,
              ),
              SizedBox(
                height: AppUtils.getHeight(context, 0.06),
              ),
              Container(
                height: 40,
                width: AppUtils.getWidth(context, 0.25),
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: AppColor.greyColor,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                      blurRadius: 10)
                ]),
                child: const ReusableTextForm(
                  inputTextColor: Color(0xff898989),
                  labelTextColor: Color(0xff898989),
                  borderRadius: 0,
                  labelText: 'User Name',
                  filledColor: AppColor.whiteColor,
                ),
              ),
              SizedBox(
                height: AppUtils.getHeight(context, 0.03),
              ),
              Container(
                height: 40,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: AppColor.greyColor,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                      blurRadius: 10)
                ]),
                width: AppUtils.getWidth(context, 0.25),
                child: ReusableTextForm(
                  labelTextColor: Color(0xff898989),
                  inputTextColor: Color(0xff898989),
                  borderRadius: 0,
                  labelText: 'Password',
                  filledColor: AppColor.whiteColor,
                  obscureText: visibility,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                    icon: visibility
                        ? const Icon(
                            Icons.visibility_off,
                            color: Color(0xff898989),
                            size: 20,
                          )
                        : const Icon(
                            Icons.visibility,
                            size: 20,
                            color: Color(0xff898989),
                          ),
                  ),
                ),
              ),
              SizedBox(
                height: AppUtils.getHeight(context, 0.03),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                          semanticLabel: 'Keep me logged in',
                          checkColor: AppColor.whiteColor,
                          activeColor: AppColor.primaryColor,
                          value: isChecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked = newValue!;
                            });
                          }),
                      const ReusableText(
                        title: 'Keep me logged in',
                        weight: FontWeight.w400,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: AppUtils.getWidth(context, 0.05),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ReusableText(
                      title: 'Forget Password?',
                      color: AppColor.primaryColor,
                      weight: FontWeight.w500,
                      size: 15,
                    ),
                  ),

                  // ReusableButton(title: 'Log In', onTap: () {})
                ],
              ),
              SizedBox(
                height: AppUtils.getHeight(context, 0.05),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AdminMain()));
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: const LinearGradient(
                              colors: [Color(0xff6A1AC3), Color(0xff1D0A32)])),
                      child: const Center(
                        child: ReusableText(
                          title: 'Log In',
                          size: 15,
                          color: AppColor.whiteColor,
                          weight: FontWeight.w600,
                        ),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
