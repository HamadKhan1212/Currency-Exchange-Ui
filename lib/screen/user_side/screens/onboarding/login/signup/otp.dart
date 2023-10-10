import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../../../../../../widget/otp_text_field.dart';
import '../../../user_main_screen/bottom_nevbar_screen/bottom_nev_bar.dart';

TextStyle style = const TextStyle(
    fontWeight: FontWeight.w700, color: AppColor.whiteColor, fontSize: 25);

class Opt extends StatefulWidget {
  const Opt({super.key});

  @override
  State<Opt> createState() => _OptState();
}

class _OptState extends State<Opt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.transparentColor,
        elevation: 0,
        titleSpacing: 0,
        title: const ReusableText(
          title: 'OTP Verification',
          size: 15,
          color: Color(0xff503981),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff503981),
          ),
        ),
      ),
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReusableText(
                    weight: FontWeight.w700,
                    size: 25,
                    title: 'Please Enter\nOTP Verification Code',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        children: [
                          TextSpan(
                              text:
                                  'Sent to +9123-38***\nThis code will expire in: ',
                              style: TextStyle(
                                color: Color(0xff9E9E9E),
                              )),
                          TextSpan(
                              text: '01:47',
                              style: TextStyle(color: Color(0xffF00000)))
                        ]),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OtpTextField(
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                      ),
                      OtpTextField(
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                      ),
                      OtpTextField(
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                      ),
                      OtpTextField(
                        onChanged: (v) {
                          if (v.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                      )
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 5),
                      //   child: Container(
                      //     height: 66,
                      //     width: 67,
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(9),
                      //         color: Color(0xffE8E8E8)),
                      //     child: TextFormField(
                      //       controller: otp1,
                      //       onChanged: (v) {
                      //         if (v.isNotEmpty) {
                      //           _firstTextFieldFocus.unfocus();
                      //           FocusScope.of(context).nextFocus();
                      //         }
                      //       },
                      //       decoration: InputDecoration(border: InputBorder.none),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 5),
                      //   child: Container(
                      //     height: 66,
                      //     width: 67,
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(9),
                      //         color: Color(0xffE8E8E8)),
                      //     child: TextFormField(
                      //       controller: otp2,
                      //       onChanged: (v) {
                      //         if (v.length == 1) {
                      //           FocusScope.of(context).nextFocus();
                      //         }
                      //       },
                      //       decoration: InputDecoration(border: InputBorder.none),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 5),
                      //   child: Container(
                      //     height: 66,
                      //     width: 67,
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(9),
                      //         color: Color(0xffE8E8E8)),
                      //     child: TextFormField(
                      //       controller: otp3,
                      //       onChanged: (v) {
                      //         if (v.length == 1) {
                      //           FocusScope.of(context).nextFocus();
                      //         }
                      //       },
                      //       decoration: InputDecoration(border: InputBorder.none),
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 5),
                      //   child: Container(
                      //     height: 66,
                      //     width: 67,
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(9),
                      //         color: Color(0xffE8E8E8)),
                      //     child: TextFormField(
                      //       controller: otp4,
                      //       onChanged: (v) {
                      //         if (v.length == 1) {
                      //           FocusScope.of(context).nextFocus();
                      //         }
                      //       },
                      //       decoration: InputDecoration(border: InputBorder.none),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const BottomNevBar()));
                      },
                      child: Container(
                        height: 39,
                        width: 141,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xffCBCBEE)),
                        child: const Center(
                          child: ReusableText(
                            title: 'Resend Code',
                            weight: FontWeight.w500,
                            size: 15,
                            color: Color(0xff503981),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff503981),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KeyboardButton(
                          number: Text(
                        '1',
                        style: style,
                      )),
                      KeyboardButton(
                          number: Text(
                        '2',
                        style: style,
                      )),
                      KeyboardButton(
                          number: Text(
                        '3',
                        style: style,
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KeyboardButton(
                          number: Text(
                        '4',
                        style: style,
                      )),
                      KeyboardButton(
                          number: Text(
                        '5',
                        style: style,
                      )),
                      KeyboardButton(
                          number: Text(
                        '6',
                        style: style,
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KeyboardButton(
                          number: Text(
                        '7',
                        style: style,
                      )),
                      KeyboardButton(
                          number: Text(
                        '8',
                        style: style,
                      )),
                      KeyboardButton(
                          number: Text(
                        '9',
                        style: style,
                      )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        KeyboardButton(
                            number: Text(
                          '0',
                          style: style,
                        )),
                        KeyboardButton(
                            number: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'images/icon/clear.png',
                            color: Colors.white,
                          ),
                        ))
                      ],
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

class KeyboardButton extends StatelessWidget {
  final Widget? number;
  const KeyboardButton({
    super.key,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10),
      child: Container(
          height: 69,
          width: 85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: const Color(0xff8D8DD0)),
          child: Center(child: number)),
    );
  }
}
