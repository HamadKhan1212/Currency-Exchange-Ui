import 'package:currency_exchange/screen/user_side/screens/onboarding/login/signup/signin.dart';
import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/onboarding_background.png',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: height * 0.19),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 100,
                  child: Text(
                    'LOGO',
                    style: TextStyle(
                        letterSpacing: -1,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: height * 0.09,
                ),
                const ReusableText(
                  title: 'Create a free account',
                  color: AppColor.whiteColor,
                  size: 20,
                  weight: FontWeight.w700,
                ),
                SizedBox(
                  height: height * 0.045,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('images/Mask group.png'),
                      const ReusableText(
                        title: 'Create Account',
                        color: AppColor.whiteColor,
                        size: 15,
                        weight: FontWeight.w700,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.0225,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const SignIn()));
                  },
                  child: Container(
                    height: 60,
                    width: 215,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color(0xff7575AA),
                    ),
                    child: const Center(
                        child: ReusableText(
                      title: 'Login',
                      color: AppColor.whiteColor,
                      size: 15,
                      weight: FontWeight.w700,
                    )),
                  ),
                ),
                SizedBox(
                  height: height * 0.078,
                ),
                GestureDetector(
                  onTap: () {},
                  child: ReusableText(
                    title: 'Our partners',
                    color: const Color(0xff7575AA).withOpacity(0.6),
                    size: 15,
                    weight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
