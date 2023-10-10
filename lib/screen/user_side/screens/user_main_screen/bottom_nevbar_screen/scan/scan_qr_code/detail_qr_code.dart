import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import 'bank_transfor.dart';

class DetailQRCode extends StatefulWidget {
  const DetailQRCode({super.key});

  @override
  State<DetailQRCode> createState() => _DetailQRCodeState();
}

class _DetailQRCodeState extends State<DetailQRCode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          AppUtils.backTo(context);
                        },
                        icon: (const Icon(
                          Icons.arrow_back,
                          color: AppColor.whiteColor,
                          size: 35,
                        ))),
                    const SizedBox(
                      width: 80,
                    ),
                    const ReusableText(
                      title: 'Scan QR Code',
                      color: AppColor.whiteColor,
                      size: 24,
                      weight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: AppUtils.getHeight(context, 0.8),
                width: double.infinity,
                padding: const EdgeInsets.only(top: 30),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: AppColor.whiteColor),
                child: Column(
                  children: [
                    const CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('images/qrImage.png')),
                    const ReusableText(
                      title: 'Mark John',
                      size: 24,
                      weight: FontWeight.w600,
                    ),
                    const ReusableText(
                      title: 'Verify User',
                      size: 18,
                      weight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Image.asset('images/qrcode.png'),
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          AppUtils.navigateTo(context, const BankTransfer());
                        },
                        child: Container(
                          height: 63,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(31),
                            border: Border.all(
                                color: AppColor.primaryColor, width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/icon/camra.png'),
                              const SizedBox(
                                width: 20,
                              ),
                              const ReusableText(
                                title: 'Scan QR Code',
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
